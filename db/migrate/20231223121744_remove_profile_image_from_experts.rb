class RemoveProfileImageFromExperts < ActiveRecord::Migration[7.1]
  def change
    remove_column :experts, :profile_picture, :string
  end
end
