require 'spec_helper'

describe StaticPagesController, :type => :controller do
  it "works for cover letter page" do
    get("/cover_letter_tips").should route_to(controller: "static_pages", action:"cover_letter_tips")
  end

  it "works for home page" do
  	get("/").should route_to(controller: "static_pages", action: "home")
  end

  it "works for helpful links" do
  	get("/helpful_links").should route_to(controller: "static_pages", action: "helpful_links")
  end
end