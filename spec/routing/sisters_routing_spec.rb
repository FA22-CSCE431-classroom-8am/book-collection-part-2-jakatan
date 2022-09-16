require "rails_helper"

RSpec.describe SistersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sisters").to route_to("sisters#index")
    end

    it "routes to #new" do
      expect(get: "/sisters/new").to route_to("sisters#new")
    end

    it "routes to #show" do
      expect(get: "/sisters/1").to route_to("sisters#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sisters/1/edit").to route_to("sisters#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sisters").to route_to("sisters#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sisters/1").to route_to("sisters#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sisters/1").to route_to("sisters#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sisters/1").to route_to("sisters#destroy", id: "1")
    end
  end
end
