require "spec_helper"

describe UsersController do
  describe "GET #index" do
    before(:each) do
      get :index
    end

    it "loads all of the users" do
      users = double(:user)
      User.should_receive(:all).and_return(users)
    end
  end
end