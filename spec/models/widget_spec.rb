require 'rails_helper'

# RSpec.configure do |c|
#   c.use_transactional_examples = false
#   # c.order = "defined"
# end

RSpec.describe Widget, type: :model do
  context "Creating & Validating:" do

  	it "Has none to begin with" do
  		expect(Widget.count).to eq(1)
  	end

  	it "Has 1 after create" do
  		widget = Widget.create!(name: "TestWidget")
  		expect(Widget.count).to eq(2)
  	end

  	it "Has none even after create in the previous example" do
  		expect(Widget.count).to eq(1)
  	end

		fixtures :widgets
		it "fixture method defined" do
  		widgets(:one)
  	end

  end
end
