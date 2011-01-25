class Workload < ActiveRecord::Base
  
  belongs_to :timeline
  
  def initialize(attributes = nil) 
      super 
      self.duration = 0
  end
  
  def owner_id
    owner_id = ''
    
    [["aau", 1],
    ["aleung", 2],
    ["ckwong", 3],
    ["dlam", 4],
    ["kchung", 5],
    ["mchung", 6],
    ["tyip", 7],
    ["wlo", 8]].each{|owner|
      if owner[0] == self.owner
        owner_id = owner[1]
      end
    }
    return owner_id
  end
end