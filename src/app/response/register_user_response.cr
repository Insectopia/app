
require "../view/user_view"
module App
  # Response is the output of the application use case.
  #
  # This is the end point of the application flow.
  module Response
    # Response for the user registration
    #
    # To create a RegisterUserResponse,
    # you will need:
    #   - a `View::UserView` class created
    #
    # ```
    # response = Response::RegisterUserResponse.new user_view
    # ```
    class RegisterUserResponse
      @view : View::UserView

      getter :view
      setter :view

      def initialize()
        @view = View::UserView.new
      end
    end
  end
end
