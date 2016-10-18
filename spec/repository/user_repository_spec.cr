
require "../spec_helper.cr"
require "../../src/app/entity/user_entity"
require "../../src/app/repository/user_repository"

describe App::Repository::UserRepository do

  @entities = [] of App::Entity::UserEntity

  before {
    @entities.push App::Entity::UserEntity.new(1, "john", "insect0", "j@mail.co", Time.new, Time.new)
    @entities.push App::Entity::UserEntity.new(2, "mary", "insect0", "m@mail.co", Time.new, Time.new)
    @entities.push App::Entity::UserEntity.new(3, "sarah", "insect0", "s@mail.co", Time.new, Time.new)
    @entities.push App::Entity::UserEntity.new(4, "pascal", "insect0", "p@mail.co", Time.new, Time.new)
    @entities.push App::Entity::UserEntity.new(5, "bob", "insect0", "b@mail.co", Time.new, Time.new)
  }

  @subject = App::Repository::UserRepository.new(@entities)

  it "should find by id" do
    expect(@subject.find(2).name).to eq "mary"
  end

  it "should find by name" do
    expect(@subject.find_by_name("pascal").id).to eq 4
  end

end
