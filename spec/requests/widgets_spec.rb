require 'rails_helper'

RSpec.describe "Widgets", type: :request do
  describe "GET /widgets" do
    it "works! (now write some real specs)" do
      get widgets_path
      expect(response).to have_http_status(200)
    end


	  it "creates a Widget" do
	    headers = {
	      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
	      "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
	    }
	    post "/widgets", :params => { :widget => {:name => "My Widget"} }, :headers => headers

	    expect(response.content_type).to eq("application/json")
	    expect(response).to have_http_status(:created)
	  end
    
  end
end
