class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :目標
      t.references :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
