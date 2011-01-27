class Workloads < ActiveRecord::Migration
  def self.up
    create_table :workloads do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :workloads
  end
end
