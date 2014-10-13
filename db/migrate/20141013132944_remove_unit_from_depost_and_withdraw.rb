class RemoveUnitFromDepostAndWithdraw < ActiveRecord::Migration
  def change
    remove_column :withdraws, :unit
    remove_column :deposits, :unit
  end
end
