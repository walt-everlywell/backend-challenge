class Friendship < ApplicationRecord
  belongs_to :member
  belongs_to :friend, :class_name => "Member", :foreign_key => "friend_id"
  validates :member_id, :friend_id, presence: true

end
