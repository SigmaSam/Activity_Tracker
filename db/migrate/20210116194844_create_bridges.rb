class CreateBridges < ActiveRecord::Migration[6.1]
  def change
    create_table :bridges do |t|
      t.references :routine, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end