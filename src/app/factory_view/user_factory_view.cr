
require "../entity/user_entity"
require "../view/user_view"
module App
  module FactoryView
    # A user factory view is a collection that handle several `View::UserView`.
    #
    # To create a factory of users :
    # ```
    # user_factory = FactoryView::UserFactoryView.new
    # ```
    class UserFactoryView

      # Transform an entity into a view
      #
      # Returns an instance of `#UserView`
      def create (entity : Entity::UserEntity)
        view = View::UserView.new
        view.id = entity.id
        view.name = entity.name
        view.password = entity.password
        view.email = entity.email
        view.created_at = entity.created_at
        view.updated_at = entity.updated_at

        view
      end
    end
  end
end
