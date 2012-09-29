require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    before { visit root_path } 
    subject { page }

    it {should have_selector('h1', :text => 'Home')}


    it {should have_selector('title',
                        :text => "Xintong")}
    
  end

  describe "About page" do
    before { visit about_path } 
    subject { page }
    it {should have_selector('h1', :text => 'About')}


    it {should have_selector('title',
                        :text => "About")}

  end

  describe "Contact page" do
    before { visit contact_path } 
    subject { page }

    it {should have_selector('h1', :text => 'Contact')}
    

    it {should have_selector('title',
                    :text => "Contact")}

  end


end
