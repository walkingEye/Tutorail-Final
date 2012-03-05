require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Final App'" do
      visit '/static_pages/home'
      page.should have_content('Final App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Final App | Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Final App | Help")
    end
  end
  
  describe "About page" do
    
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Final App | About Us")
    end
  end  
end
