class TimelinesController < ApplicationController

  # GET /users
  # GET /users.xml
  def index
    @timesheet_items = Array.new
    top_level_id = params[:top_level_id]
    if top_level_id.blank?
      @top_level_timelines = Timeline.find_all_by_predecessor_id(nil)
    else
      @top_level_timelines = [Timeline.find(top_level_id)]
    end
    
    @totalCost = @top_level_timelines.inject(0){|sum,element| sum + element.cost}

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @top_level_timelines }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @timeline = Timeline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeline }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @timeline = Timeline.new
    @timeline.start_date = Date.today

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timeline }
    end
  end

  # GET /users/1/edit
  def edit
    @timeline = Timeline.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @timeline = Timeline.new(params[:timeline])
    unless @timeline.predecessor_id.blank?
      predecessor = Timeline.find(@timeline.predecessor_id)
      @timeline.start_date = predecessor.end_date + 1
    end
    @timeline.start_date = Date.today if @timeline.start_date.blank?

    respond_to do |format|
      if @timeline.save
        format.html { redirect_to(@timeline, :notice => 'Timeline was successfully created.') }
        format.xml  { render :xml => @timeline, :status => :created, :location => @timeline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timeline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @timeline = Timeline.find(params[:id])

    respond_to do |format|
      if @timeline.update_attributes(params[:timeline])
	    unless @timeline.predecessor_id.blank?
	      predecessor = Timeline.find(@timeline.predecessor_id)
	      @timeline.start_date = predecessor.end_date + 1
	    end
	    @timeline.start_date = Date.today if @timeline.start_date.blank?
	    @timeline.save
        format.html { redirect_to(@timeline, :notice => 'Timeline was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timeline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @timeline = Timeline.find(params[:id])
    @timeline.destroy

    respond_to do |format|
      format.html { redirect_to(timelines_url) }
      format.xml  { head :ok }
    end
  end
end