
require "../spec_helper"
require "../../src/app/entity/user_entity"
require "../../src/app/view/user_view"
require "../../src/app/factory_view/user_factory_view"


describe App::FactoryView::UserFactoryView do
  @entity = App::Entity::UserEntity.new(1, "john", "insect0", "j@mail.co", Time.new, Time.new)
  @subject = App::FactoryView::UserFactoryView.new

  it "should reate" do
    expect(@subject.create(@entity)).to be_a App::View::UserView
  end
end
