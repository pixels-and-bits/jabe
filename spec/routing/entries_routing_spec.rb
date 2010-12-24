require "spec_helper"

describe EntriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/entries" }.should route_to(:controller => "entries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/entries/new" }.should route_to(:controller => "entries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/entries/1" }.should route_to(:controller => "entries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/entries/1/edit" }.should route_to(:controller => "entries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/entries" }.should route_to(:controller => "entries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/entries/1" }.should route_to(:controller => "entries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/entries/1" }.should route_to(:controller => "entries", :action => "destroy", :id => "1")
    end

  end
end
