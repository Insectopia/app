module App
  # A validator checks if attributes in `Request` are valid
  # for the specific use case.
  #
  # Also sets the errors, if found, to be used in `Response`
  module Validator

    # Validates user registration request.
    #
    # To create a new RegisterUserValidator:
    # ```
    # validator = Validator::RegisterUserValidator.new
    # ```
    class RegisterUserValidator
      def initialize()
      end

      # Validate given a `Request::RegisterUserRequest`.
      #
      # Returns #true if request is valid, #false otherwise.
      def validate(request)
        true
      end
    end
  end
end
