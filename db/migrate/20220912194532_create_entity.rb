class CreateEntity < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.references :author, null: false, foreign_key: { to_table: 'users' }
      t.string :name
      t.decimal :amount, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
