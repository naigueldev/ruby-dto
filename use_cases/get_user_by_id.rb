class GetUserById
  def initialize(user_id:, repository:)
    @user_id = user_id
    @repository = repository
  end

  def execute
    @repository.find_by_id(id: @user_id)
  end
end
