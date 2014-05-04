require 'spec_helper'

describe HomeController do

  describe "GET 'hello'" do
    it "returns http success" do
      get 'hello'
      response.should be_success
    end
  end

  describe "GET 'created'" do

  	it "should render the created template" do
  		get 'created'
  		expect(response).to render_template("shared/created")
  	end
  end

  describe "GET 'purchase'" do
  	it "should redirect us to Amazon to buy more music" do
  		get 'amazon'
  		expect(response).to redirect_to('http://www.amazon.com/mp3')
  	end

  end

end
