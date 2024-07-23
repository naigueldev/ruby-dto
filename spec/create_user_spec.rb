require "./use_cases/create_user"
require "./use_cases/get_user_by_id"
require "./repositories/in_memory_user_repository"
require "./dto/create_user_dto"

RSpec.describe CreateUser do
  describe "#create" do
    it "returns the created user" do
      user_dto = CreateUserDTO.new(
        name: "User Name",
        email: "useremail@email.com",
      )

      memory_repository = InMemoryUserRepository.new

      created_user = CreateUser.new(user: user_dto, repository: memory_repository).execute

      expect(created_user.name).to eq(user_dto.name)
      expect(created_user.email).to eq(user_dto.email)
    end
  end

  describe "#show" do
    it "returns the user" do
      user_dto = CreateUserDTO.new(
        name: "User Name",
        email: "useremail@email.com",
      )

      memory_repository = InMemoryUserRepository.new

      user = CreateUser.new(user: user_dto, repository: memory_repository).execute

      user_result = GetUserById.new(user_id: user.id, repository: memory_repository).execute

      expect(user_result.name).to eq(user.name)
      expect(user_result.email).to eq(user.email)
    end
  end
end
