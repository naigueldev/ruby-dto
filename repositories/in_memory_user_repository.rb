class InMemoryUserRepository
  def initialize
    @users = []
  end

  def add(user:)
    user.id = 1
    
    @users << user

    find_by_id(id: user.id)
  end

  def find_by_id(id:)
    @users.find { |user| user.id == id }
  end
end
