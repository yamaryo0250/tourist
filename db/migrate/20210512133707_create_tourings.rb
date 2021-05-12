class CreateTourings < ActiveRecord::Migration[6.0]
  def change
    create_table :tourings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ride, null: false, foreign_key: true
      t.timestamps
    end
  end
end
