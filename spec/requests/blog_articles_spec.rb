require 'rails_helper'

RSpec.describe "BlogArticles", :type => :request do
  describe "GET /blog_articles" do
    it "works! (now write some real specs)" do
      get blog_articles_path
      expect(response.status).to be(200)
    end
  end
end
