class WorkloadsController < ApplicationController

  # GET /users
  # GET /users.xml
  def index
    @a = Date.parse "2011-01-01"
    @b = Date.parse "2011-03-01"
    #update_all(@a, @b)
    @workloads = Workload.order('owner asc, work_date asc')
    @group_by_work_date = Workload.group('work_date').sum('duration')
    @group_by_owner = Workload.group('owner').sum('duration')
    @total_duration = Workload.sum('duration')
    @count_working_days = (@a .. @b).count

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workloads }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    timeline = Timeline.find(params[:id])
    @owner = timeline.owner
    @timelines = Timeline.where('duration > 0').find_all_by_owner_id(timeline.owner_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeline }
    end
  end
  
  def update_all(start_date, end_date)
    (start_date .. end_date).each{|date| 
      ["aau",
            "aleung",
            "ckwong",
            "dlam",
            "kchung",
            "mchung",
            "tyip",
            "wlo"].each{|owner|
        workload = Workload.find_or_initialize_by_owner_and_work_date(owner, date)
        workload.work_date = date
        workload.owner = owner
        workload.save
      }
      Timeline.all.each{|timeline|
        if (timeline.start_date <= date) && (date <= timeline.end_date)
          workload = Workload.find_by_owner_and_work_date(timeline.owner, date)
          workload.duration = workload.duration + 1
          workload.save
        end
      }
    }
  end
end