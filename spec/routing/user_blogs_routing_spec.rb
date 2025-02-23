require "rails_helper"

RSpec.describe UserBlogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_blogs").to route_to("user_blogs#index")
    end

    it "routes to #new" do
      expect(get: "/user_blogs/new").to route_to("user_blogs#new")
    end

    it "routes to #show" do
      expect(get: "/user_blogs/1").to route_to("user_blogs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_blogs/1/edit").to route_to("user_blogs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_blogs").to route_to("user_blogs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_blogs/1").to route_to("user_blogs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_blogs/1").to route_to("user_blogs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_blogs/1").to route_to("user_blogs#destroy", id: "1")
    end
  end
end
