class DropProductsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :rewards
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
