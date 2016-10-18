
require "../spec_helper"
require "../../src/app/request/register_user_request"

describe App::Request::RegisterUserRequest do
  @subject = App::Request::RegisterUserRequest.new(1)

  it "should initialize" do
    expect(@subject.entry_index).to eq 1
  end
end
