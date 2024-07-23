class CreateUser
  def initialize(user:, repository:)
    @user = user
    @repository = repository
  end

  def execute
    @repository.add(user: @user)
  end
end
