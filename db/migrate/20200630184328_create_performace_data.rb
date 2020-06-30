class CreatePerformaceData < ActiveRecord::Migration[6.0]
  def change
    execute 'CREATE EXTENSION IF NOT EXISTS hstore'
    create_table :performace_data do |t|
      t.references :user, index: true, foreign_key: true
      t.hstore :data

      t.timestamps null: false
    end
  end
end
