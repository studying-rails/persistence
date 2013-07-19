class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :value, null: false, default: 0

      t.timestamps
    end
  end
end
