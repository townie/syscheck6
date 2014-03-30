require 'spec_helper'

feature 'adding new dog', %q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
} do

before(:each) do
    visit new_owner_path

    fill_in "First name", with: "Keith"
    fill_in "Last name", with: "Webber"
    fill_in "Email", with: "web@gmail.com"
    fill_in "Dog Name", with: "Merlin"

    click_on "Register new dog"
end


  scenario 'I want to visit a page that I can register a new dog' do
    visit new_owner_path
    expect(page).to have_content("Sign your dog up")
  end

  scenario 'I want to be able to register my dog' do

    expect(page).to have_content("Succesfully created new Dog")
    expect(page).to have_content("web@gmail.com")
  end

  scenario "I want to see a list of all the other dogs and their owners" do
    visit new_owner_path

    fill_in "First name", with: "Kim"
    fill_in "Last name", with: "Dy"
    fill_in "Email", with: "sss@gmail.com"
    fill_in "Dog Name", with: "Apple"

    click_on "Register new dog"

    visit owners_path

    expect(page).to have_content("sss@gmail.com")
    expect(page).to have_content("web@gmail.com")


  end

end


