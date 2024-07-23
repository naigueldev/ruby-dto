class CreateUserDTO
  attr_accessor :id, :name, :email

  def initialize(name:, email:)
    @name = name
    @email = email
  end
end
