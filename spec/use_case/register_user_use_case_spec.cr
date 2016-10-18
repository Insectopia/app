
require "../spec_helper.cr"
require "../../src/app/entity/user_entity"
require "../../src/app/repository/user_repository"
require "../../src/app/factory_view/user_factory_view"
require "../../src/app/request/register_user_request"
require "../../src/app/response/register_user_response"
require "../../src/app/validator/register_user_validator"
require "../../src/app/use_case/register_user_use_case"

describe App::UseCase::RegisterUserUseCase do

  @entities = [ App::Entity::UserEntity.new(1, "john", "insect0", "j@mail.co", Time.new, Time.new),
                  App::Entity::UserEntity.new(2, "mary", "insect0", "m@mail.co", Time.new, Time.new),
                  App::Entity::UserEntity.new(3, "sarah", "insect0", "s@mail.co", Time.new, Time.new),
                  App::Entity::UserEntity.new(4, "pascal", "insect0", "p@mail.co", Time.new, Time.new),
                  App::Entity::UserEntity.new(5, "bob", "insect0", "b@mail.co", Time.new, Time.new)
                  ] of App::Entity::UserEntity
  @repository = App::Repository::UserRepository.new(@entities)
  @factory = App::FactoryView::UserFactoryView.new
  @validator = App::Validator::RegisterUserValidator.new
  @subject = App::UseCase::RegisterUserUseCase.new(@repository, @factory, @validator)
  @request = App::Request::RegisterUserRequest.new 1
  @response = App::Response::RegisterUserResponse.new

  it "initialize" do
    expect(@subject).to be_a(App::UseCase::RegisterUserUseCase)
  end

  it "process" do
    res = @subject.process(@request, @response)
    expect(res).to be_a App::Response::RegisterUserResponse
  end

end
