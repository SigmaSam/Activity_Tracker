class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|

      t.timestamps
    end
  end
end
