class CreateMornings < ActiveRecord::Migration[6.0]
  def change
    create_table :mornings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :sleep_time
      t.string :alarm_time
      t.string :awake_time
      t.string :end_time

      t.timestamps
    end
  end
end
