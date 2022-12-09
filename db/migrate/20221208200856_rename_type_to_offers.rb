class RenameTypeToOffers < ActiveRecord::Migration[7.0]
  def change
    rename_column :offers, :type, :name
  end
end
