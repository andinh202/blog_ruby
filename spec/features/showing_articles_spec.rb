require "rails_helper"
RSpec.feature " SHowing an Article" do
before do
  @artice = Article.create(title: "The first Article", body:"body of the first article")
end

scenario "Display Individual Article" do
   visit"/"
   click_link @article.title
   expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))


end



end

