
require "../repository/user_repository"
require "../factory_view/user_factory_view"
require "../request/register_user_request"
require "../response/register_user_response"
require "../validator/register_user_validator"
module App
  # UseCase is used to transform an input (`Request`)
  # into an output (`Response`).
  #
  # It will also manage `Service`, `Validator` if needed.
  module UseCase
    # Register an user
    #
    # To create a use case,
    # you will need:
    #   - an instance of `Repository::UserRepository`
    #   - an instance of `FactoryView::UserFactoryView`
    #   - an instance of `Validator::RegisterUserValidator`
    #
    # ```
    # use_case = RegisterUserUseCase.new repository, factory_view, validator
    # ```
    class RegisterUserUseCase

      @repository : Repository::UserRepository
      @factory : FactoryView::UserFactoryView
      @validator: Validator::RegisterUserValidator

      # Create `Repository`, `FactoryView` needed for the use case.
      def initialize (@repository, @factory, @validator)
      end

      # Transforms the request into response.
      def process(@request : Request::RegisterUserRequest, response : Response::RegisterUserResponse)
        is_valid = @validator.validate(@request)
        if is_valid != false && response != nil
          entity = @repository.last
          view = @factory.create(entity)
          response.view = view
          response
        end
      end
    end
  end
end
