require 'rails_helper'

RSpec.feature "Creating Articles" do
    scenario "A user create a new articles" do
    visit "/"
    click_link "new Articles"
    fill_in "Title" ,with: "creating the first article"
    fill_in "Body" , with: "Lorem Isump"
    click_button "Create Article"
    expect(page).to have_content("Article has been created")
    expect(page).to eq(new_articles_path)

    
    
    end
    
end

