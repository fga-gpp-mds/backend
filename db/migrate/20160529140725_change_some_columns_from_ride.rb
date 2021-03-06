class ChangeSomeColumnsFromRide < ActiveRecord::Migration
  def change
    add_column :rides, :route_time, :string
    add_column :rides, :route_distance, :string
    add_column :rides, :date, :date
    remove_column :rides, :departure_time, :string
    remove_column :rides, :return_time, :string
    add_column :rides, :departure_time, :time
    add_column :rides, :return_time, :time
    remove_column :rides, :is_only_departure
    change_column_default :rides, :is_finished, false
    change_column_default :rides, :is_subsistence_allowance, false
  end
end
