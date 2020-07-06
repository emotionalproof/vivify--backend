class CreateMornings < ActiveRecord::Migration[6.0]
  def change
    create_table :mornings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true
      t.time :sleep_time
      t.time :alarm_time
      t.time :awake_time
      t.time :end_time

      t.timestamps
    end
  end
end
