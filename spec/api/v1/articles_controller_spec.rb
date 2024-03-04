# Dans votre fichier de spécifications, par exemple, article_spec.rb
require 'rails_helper'
require 'capybara/rspec'
RSpec.describe "Articles", type: :system do
    it "creates a new article" do
        visit new_article_path
        fill_in "Title", with: "Welcome"
        fill_in "Body", with: "to my first site web"
        select "public", from: "Status"
        click_button "Create Article"
        expect(page).to have_content 'New Article'
    end
  end