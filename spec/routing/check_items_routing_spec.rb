require "rails_helper"

RSpec.describe CheckItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/check_items").to route_to("check_items#index")
    end

    it "routes to #new" do
      expect(get: "/check_items/new").to route_to("check_items#new")
    end

    it "routes to #show" do
      expect(get: "/check_items/1").to route_to("check_items#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/check_items/1/edit").to route_to("check_items#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/check_items").to route_to("check_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/check_items/1").to route_to("check_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/check_items/1").to route_to("check_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/check_items/1").to route_to("check_items#destroy", id: "1")
    end
  end
end
