class CreateReward2s < ActiveRecord::Migration[6.1]
  def change
    create_table :reward2s do |t|
      t.text :reward
      t.decimal :price
      t.decimal :value
      t.boolean :status

      t.timestamps
    end
  end
end
