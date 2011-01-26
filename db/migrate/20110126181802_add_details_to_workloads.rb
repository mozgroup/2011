class AddDetailsToWorkloads < ActiveRecord::Migration
  def self.up
    add_column :workloads, :owner, :string
    add_column :workloads, :work_date, :date
    add_column :workloads, :duration, :integer
  end

  def self.down
    remove_column :workloads, :duration
    remove_column :workloads, :work_date
    remove_column :workloads, :owner
  end
end
