class CreateFollowerships < ActiveRecord::Migration[5.0]
  def change
    create_table :followerships do |t|
      t.belongs_to :user
      t.belongs_to :follower, class: 'User'
    end
  end
end
