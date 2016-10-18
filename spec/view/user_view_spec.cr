
require "../spec_helper"
require "../../src/app/view/user_view"

describe App::View::UserView do
  @subject = App::View::UserView.new

  before {
    @subject.id = 1
    @subject.name = "Mary"
    @subject.password = "insect0"
    @subject.email = "m@mail.co"
    @subject.created_at = Time.new
    @subject.updated_at = Time.new
  }

  describe "propertise" do
    it "id" do
      expect(@subject.id).to eq 1
    end
    it "name" do
      expect(@subject.name).to eq "Mary"
    end
    it "email" do
      expect(@subject.email).to eq "m@mail.co"
    end
    it "created_at" do
      expect(@subject.created_at).to be_a Time
    end
    it "updated_at" do
      expect(@subject.updated_at).to be_a Time
    end
  end
end
