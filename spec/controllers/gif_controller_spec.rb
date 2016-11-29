require "rails_helper"
require "spec_helper"
require 'gifs_controller'

RSpec.describe Gif, :type => :model do
    before :each do
        @gif = Gif.new(:title => "Obama",:link => "http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif", :recipe => "Blend 2 minutes", :all_tags => "Mexican")
    end
    describe "#New" do 
        it "takes four parameters and returns a Gif object" do
            expect(@gif).to be_a Gif
        end
    end
    
    describe "#name" do
        it "should return the correct name" do
            (@gif.title).should eql("Obama")
        end
    end
    
    describe "#link" do
        it "should return the correct link" do
            @gif.link.should eql "http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif"
        end
    end
    
    describe "#recipe" do
        it "should return the corect recipe" do
            @gif.recipe.should eql "Blend 2 minutes"
        end
    end
    
    describe "#all_tags" do
        #it "should return the correct tags" do
            #@gif.all_tags.should eql "Mexican"
        #end
    end
end
