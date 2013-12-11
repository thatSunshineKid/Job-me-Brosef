require 'spec_helper'

describe StaticController do
  it "works for cover letter page" do
    get("/cover_letter_tips").should route_to("static_pages#cover_letter_tips")
  end

  it "works for home page" do
  	get("/").should route_to("static_pages#home")
  end

  it "works for helpful links" do
  	get("/helpful_links").should route_to("static_pages#helpful_links")
  end
end