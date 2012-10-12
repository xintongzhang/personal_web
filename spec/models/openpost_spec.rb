require 'spec_helper'

describe Openpost do
  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.openposts.build(content: "Lorem ipsum") }
  before { @user.save }
    let!(:older_openpost) do 
      FactoryGirl.create(:openpost, user: @user, created_at: 1.day.ago)
    end
    let!(:newer_openpost) do
      FactoryGirl.create(:openpost, user: @user, created_at: 1.hour.ago)
    end

    it "should have the right microposts in the right order" do
      @user.openposts.should == [newer_openpost, older_openpost]
    end

end


