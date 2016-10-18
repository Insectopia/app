module App
  #  A view is a set of readable attributes that a response can get.
  #
  # A view is handled by a factory view
  module View
    # handled by this case `FactoryView::UserFactoryView`
    #
    # UserView presents the attributes of `Entity::UserEntity` to the different use case responses.
    #
    # Used in `Response::RegisterUserResponse`,
    #
    # To create a UserView
    # ```
    # view = View::UserView.new
    # ```
    #
    # each attributes is public, readable and wriatble
    class UserView
      @id : Int32 = 0
      @name : String = ""
      @password : String = ""
      @email : String = ""
      @created_at : Time = Time.new
      @updated_at : Time = Time.new

      property :id
      property :name
      property :password
      property :email
      property :created_at
      property :updated_at
    end
  end
end
