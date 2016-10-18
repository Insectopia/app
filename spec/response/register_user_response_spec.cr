
require "../spec_helper"
require "../../src/app/response/register_user_response"
require "../../src/app/view/user_view"

describe App::Response::RegisterUserResponse do
  @subject = App::Response::RegisterUserResponse.new

  it "should save a view" do
    @subject.view = App::View::UserView.new
    expect(@subject.view).to be_a App::View::UserView
  end
end
