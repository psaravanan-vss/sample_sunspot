require "rails_helper"

RSpec.configure do |config|
  config.filter_rails_from_backtrace!
end

RSpec.describe "Controller", :type => :controller do
  # controller do
  #   def index
  #     raise "Something went wrong."
  #   end
  # end

  # describe "GET index" do
  #   it "raises an error" do
  #     get :index
  #   end
  # end

  describe "How to run specific Examples with Tags" do 
     it 'is a slow test', :slow => true do 
        # sleep 10 
        puts 'This test is slow!' 
     end 
     
     it 'is a fast test', :fast => true do 
        puts 'This test is fast!' 
     end 
  end


end

