class FriendshipSearcher
  prepend SimpleCommand

  def initialize
    @snapshots = []
    @final_output = []
  end


  def call(member_id, search_text)
    member = Member.find(member_id)
    experts = Members.experts_in(search_text).select(:id) # Array of expert ids

    # Follow all paths from the closest friends
    member.friends.select(:id).each do |close_friend_id|
      check(close_friend_id)
      @final_output += @snapshots
      @snapshots = []
    end

  end

  # Snapshot each valid path when you find an expert to return in an array 
  # Pop when you reach an edge
  def check(friend_id, path = [])
    path.push(friend_id) if path.empty?
    friends = Member.find(friend_id).friends.select(:id) 
    if friends.empty?
      path.pop
      return
    end
    friends.each do |f_id|
      path << f_id
      if experts.includes?(f_id)
        @snapshots << path
      end
      check(f_id, path) 
    end
  end
end