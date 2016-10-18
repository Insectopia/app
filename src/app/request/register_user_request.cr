module App
  # Request is the input of the application use case.
  #
  # This the entry point in the application flow
  module Request
    # Request for user registration
    #
    # To create a request
    # ```
    # request = Request::RegisterUserRequest.new 1
    # ```
    class RegisterUserRequest

      @entry_index : Int32

      # Gets request identifier.
      getter :entry_index

      # `#entry_index` is the request identifier.
      def initialize(@entry_index : Int32)
      end
    end
  end
end
