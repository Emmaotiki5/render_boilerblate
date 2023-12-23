class CreateExperts < ActiveRecord::Migration[7.1]
  def change
    create_table :experts do |t|
      t.string :name
      t.string :profile_picture
      t.string :department

      t.timestamps
    end
  end
end
