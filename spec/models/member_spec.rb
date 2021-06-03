require 'rails_helper'

RSpec.describe Member, type: :model do
  it "requires a first_name" do
    member = Member.new(first_name: nil)
    expect(member).to_not be_valid
  end

  it "requires a last_name" do
    member = Member.new(last_name: nil)
    expect(member).to_not be_valid
  end

  it "requires a url" do
    member = Member.new(url: nil)
    expect(member).to_not be_valid
  end
end
