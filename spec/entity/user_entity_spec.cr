
require "../spec_helper"
require "../../src/app/entity/user_entity"


describe App::Entity::UserEntity do
  @subject = App::Entity::UserEntity.new(1, "john", "insect0", "j@mail.co", Time.new, Time.new)

  it "initialize" do
    expect(@subject).to be_a(App::Entity::UserEntity)
  end

  it "should have an id" do
    expect(@subject.id).to eq(1)
  end

  it "should have a name" do
    expect(@subject.name).to eq("john")
  end

  it "should have a password" do
    expect(@subject.password).to eq("insect0")
  end

  it "should have an email" do
    expect(@subject.email).to eq("j@mail.co")
  end

  it "should have an created_at time" do
    expect(@subject.created_at).to be_a(Time)
  end

  it "should have an updated_at time" do
    expect(@subject.updated_at).to be_a(Time)
  end
end
