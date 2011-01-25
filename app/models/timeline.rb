class Timeline < ActiveRecord::Base
  #$config = YAML.load_file(File.join(File.dirname(__FILE__), '../../config/database.yml'))
  #establish_connection $config['timeline_development']
  
  has_many :successors, :class_name => 'Timeline', :foreign_key => 'predecessor_id'
  
  before_create :create_workload
  before_update :update_workload
  
  def initialize(attributes = nil) 
      super 
      self.predecessor_id = nil unless predecessor_id?
  end
  
  def start_date=(aDate)
    write_attribute(:start_date, aDate)
    self.successors.each{|successor|
      successor.start_date = self.end_date + 1
      successor.save
    }
  end
  
  def end_date
    return self.start_date + self.duration + self.delay
  end
  
  def aggregate_end_date
    self.successors.inject(self.end_date){|date, timeline| 
      aggregate = timeline.aggregate_end_date
      (date < aggregate) ? aggregate : date}
  end
  
  def count_conflicts
    conflicts = 0
    (self.start_date .. self.end_date).each{|date|
      workload = Workload.where(['duration > ?', conflicts]).find_by_owner_and_work_date(self.owner, date)
      unless workload.nil?
        conflicts = workload.duration
      end
    }
    return conflicts
  end
  
  def owner
    owner_name = ''
    
    [["aau", 1],
    ["aleung", 2],
    ["ckwong", 3],
    ["dlam", 4],
    ["kchung", 5],
    ["mchung", 6],
    ["tyip", 7],
    ["wlo", 8]].each{|owner|
      if owner[1] == self.owner_id
        owner_name = owner[0]
      end
    }
    return owner_name
  end
  
  def printCost(format)
    sprintf(format, self.cost)
  end
  
  protected
  def create_workload    
    (self.start_date .. self.end_date).each{|date|
      workload = Workload.find_or_initialize_by_owner_and_work_date(self.owner, date)
      workload.duration = workload.duration + 1
      workload.save
    }
  end
  
  def update_workload
    owner_was = self.owner
    owner_id_was = self.owner_id_was
        [["aau", 1],
        ["aleung", 2],
        ["ckwong", 3],
        ["dlam", 4],
        ["kchung", 5],
        ["mchung", 6],
        ["tyip", 7],
        ["wlo", 8]].each{|owner|
          if owner[1] == owner_id_was
            owner_was = owner[0]
          end
    }
    start_date_was = self.start_date_was
    duration_was = self.duration_was
    delay_was = self.delay_was
    end_date_was = start_date_was + duration_was + delay_was
    
    (start_date_was .. end_date_was).each{|date|
      workload = Workload.find_or_initialize_by_owner_and_work_date(owner_was, date)
      workload.duration = workload.duration - 1
      workload.save
    }
    
    (self.start_date .. self.end_date).each{|date|
      workload = Workload.find_or_initialize_by_owner_and_work_date(self.owner, date)
      workload.duration = workload.duration + 1
      workload.save
    }
  end
end