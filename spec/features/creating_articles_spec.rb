require 'rails_helper'

RSpec.feature "Creating Articles" do
    scenario "A user create a new articles" do
    visit "/"
    click_link "new Articles"
    fill_in "Title" ,with: "creating the first article"
    fill_in "Body" , with: "Lorem Isump"
    click_button "Create Article"
    expect(page).to have_content("Article created")
    #expect(page).to eq(new_articles_path)

    end
    
    scenario "A user failed to create a new article" do
    visit "/"
    click_link "new Articles"
    fill_in "Title" , with: ""
    fill_in "Body" , with: ""
    click_button "Create Article"
    
    expect(page).to have_content("Article has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page). to have_content("Body can't be blank")
    end
    
    
end

