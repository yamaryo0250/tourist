class CreateUserTourings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tourings do |t|
      t.references :touring, null: false, foreign_key: true;
      t.references :user, null: false, foreign_key: true;
      t.timestamps
    end
  end
end
