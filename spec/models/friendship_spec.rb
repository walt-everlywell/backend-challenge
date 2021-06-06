require 'rails_helper'

RSpec.describe Friendship, type: :model do
  context 'validations' do
    it "requires a member id" do
      friendship = Friendship.new(member_id: nil)
      expect(friendship).to_not be_valid
    end

    it "requires a friend id" do
      friendship = Friendship.new(friend_id: nil)
      expect(friendship).to_not be_valid
    end
  end
end