class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :type
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
