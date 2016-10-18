
module App
  # An Entity stores data structures of the application
  #
  # It is immutable, and handled by `Repository`
  module Entity
    # An user is a registered member that can have more action
    # than a visitor.
    #
    # To create an user:
    # ```
    # user = Entity::UserEntity.new 1 "mary" "secret" "m@mail.co"
    # ```
    #
    # each `user` props are public
    # ```
    # puts user.id # => 1
    # puts user.name # => "mary"
    # puts user.email # => "m@mail.co"
    # puts user.password # => "secret"
    # puts user.created_at # => Time
    # puts user.updated_at # => Time
    # ```
    class UserEntity

      # Id.
      #
      # unique, required
      getter :id

      # Name.
      #
      # unique, required
      getter :name

      # Email. of type «name»@«domain».«domain name»
      #
      # unique, required
      getter :email

      # Password.
      #
      # does not hash it. Hashing need to be done before the request is setted.
      getter :password

      # Date user was created.
      #
      # default to Time.new
      getter :created_at

      # Date user was updated.
      #
      # default to Time.new
      getter :updated_at

      @id: Int32
      @name: String
      @password: String
      @email: String
      @created_at: Time
      @updated_at: Time

      # Saves an user
      #
      # Date observers are optional, defaulting as now
      def initialize (@id, @name, @password, @email, @created_at = Time.new, @updated_at = Time.new)
      end
    end
  end
end
