require "rails_helper"

RSpec.describe BlogArticlesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/blog_articles").to route_to("blog_articles#index")
    end

    it "routes to #new" do
      expect(:get => "/blog_articles/new").to route_to("blog_articles#new")
    end

    it "routes to #show" do
      expect(:get => "/blog_articles/1").to route_to("blog_articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/blog_articles/1/edit").to route_to("blog_articles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/blog_articles").to route_to("blog_articles#create")
    end

    it "routes to #update" do
      expect(:put => "/blog_articles/1").to route_to("blog_articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/blog_articles/1").to route_to("blog_articles#destroy", :id => "1")
    end

  end
end
