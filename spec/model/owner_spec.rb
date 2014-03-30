require 'spec_helper'

describe Owner do

  it {should validate_presence_of(:first_name)}

  it 'requires a valid last name' do
    should validate_presence_of(:last_name)
  end
  it 'requires a valid email' do
    should validate_presence_of(:email)
  end
  it 'requires a valid dog name' do
    should validate_presence_of(:dog_name)
  end
  it 'creates a new owner when all fields are valid' do
    owner = Owner.new({first_name: "Keith", last_name: "Webber", email: "kwebb@gmail.com", dog_name: "Merlin"})
    expect(owner).to be_valid
  end

  it 'has a way to get full name' do
    owner = Owner.new({first_name: "Keith", last_name: "Webber", email: "kwebb@gmail.com", dog_name: "Merlin"})
    expect(owner.full_name).to eq("Keith Webber")
  end

end
