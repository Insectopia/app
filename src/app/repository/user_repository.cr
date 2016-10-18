
require "../entity/user_entity"
module App

  # A repository manages an entity or a list of entities.
  #
  # As an entity is immutable data structure, repository is used to handle it.
  module Repository
    # UserRepository manages `Entity::UserEntity` array
    #
    #  To create an UserRepository:
    # ```
    # mary = Entity::UserEntity.new 1 "mary" "secret" "m@mail.co"
    # repository = Repository::UserRepository.new [mary]
    # ```
    class UserRepository

      # Entries is an array of Entity::UserEntity
      @entries: Array(Entity::UserEntity)

      def initialize (@entries = [] of UserEntity)
      end

      # Finds an entity in the `#entries` given its id
      #
      # ```
      # repository.find(1) # => `#mary`
      # ```
      #
      # Returns a `Entity::UserEntity` if found
      def find (id : Int32)
        @entries.select {|e| e.id == id} [0]
      end

      # Finds an entity in the `#entries` given its name
      #
      # ```
      # repository.find_by_name("mary") # => `#mary`
      # ```
      #
      # Returns a `Entity::UserEntity` if found
      def find_by_name (name : String)
        @entries.select {|e| e.name == name} [0]
      end

      # ```
      # repository.last # => `#mary`
      # ```
      # Returns last `Entity::UserEntity` in `#entries`
      def last
        @entries.last(1)[0]
      end

      # Creates an entity
      #
      # `#entry` is an instance which attributes are at least
      # corresponding to the ones in `Entity::UserEntity`
      #
      # As an example:
      # ```
      # class UserEntry
      #   @id : Int32
      #   @name:  String
      #   @password: String
      #   @email: String
      #   @created_at: Time
      #   @updated_at: Time
      #   property :id, :name, :password, :email, :created_at, :updated_at
      # end
      # entry = UserEntry.new
      # entry.id = 1
      # entry.name = "mary"
      # entry.password = "secret"
      # entry.email = "m@mail.co"
      # entry.created_at = Time.new
      # entry.updated_at = Time.new
      # repository.create(entry) # => `Entity::UserEntity`
      # ```
      #
      # Returns an instance of  `Entity::UserEntity`
      def create(entry)
        Entity::UserEntity.new(entry.id , entry.name , entry.password , entry.email , Time.new , Time.new)
      end
    end
  end

end
