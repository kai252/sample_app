require 'spec_helper'

describe "Static pages" do

  #let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit home_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit home_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit home_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

     it "should have the base title" do
      visit help_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit help_path
      page.should_not have_selector('title', :text => '| Help')
    end
  end
  describe "About page" do

     it "should have the base title" do
      visit about_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit about_path
      page.should_not have_selector('title', :text => '| About us')
    end
  end

  describe "Contact page" do

     it "should have the base title" do
      visit contact_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit contact_path
      page.should_not have_selector('title', :text => '| Contact')
    end
  end
end