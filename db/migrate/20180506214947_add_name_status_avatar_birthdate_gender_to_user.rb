class AddNameStatusAvatarBirthdateGenderToUser < ActiveRecord::Migration[5.1]
  add_column :users , :name , :string
  add_column :users , :status , :integer
  add_column :users , :avatar , :string
  add_column :users , :birthdate , :date
  add_column :users , :gender , :integer
  
  def change
  end
end
