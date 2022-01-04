class CreateClones < ActiveRecord::Migration[6.1]
  def change
    create_table :clones do |t|
      t.string :name
      t.date :DOB

      t.timestamps
    end
  end
end
