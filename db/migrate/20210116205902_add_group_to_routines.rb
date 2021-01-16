class AddGroupToRoutines < ActiveRecord::Migration[6.1]
  def change
    add_reference :routines, :group, null: false, foreign_key: true
  end
end
