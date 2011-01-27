class AddDetailsToTimelines < ActiveRecord::Migration
  def self.up
    add_column :timelines, :owner_id, :integer
    add_column :timelines, :predecessor_id, :integer
    add_column :timelines, :name, :string
    add_column :timelines, :start_date, :date
    add_column :timelines, :duration, :integer
    add_column :timelines, :delay, :integer
    add_column :timelines, :is_resolved, :boolean
    add_column :timelines, :is_in_progress, :boolean
    add_column :timelines, :cost, :decimal
  end

  def self.down
    remove_column :timelines, :cost
    remove_column :timelines, :is_in_progress
    remove_column :timelines, :is_resolved
    remove_column :timelines, :delay
    remove_column :timelines, :duration
    remove_column :timelines, :start_date
    remove_column :timelines, :name
    remove_column :timelines, :predecessor_id, :integer
    remove_column :timelines, :owner_id
  end
end
