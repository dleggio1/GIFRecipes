require "rails_helper"
require_relative "../app/controllers/gifs_controller"

describe Gif do
    before :each do
        @gif = Gif.new(:title => "obama",:link => "http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif", :steps => "Blend 2 minutes", :tags => "Mexican")
    end
    describe "#New" do 
        it "takes two parameters and returns a Gif object" do
            expect(@gif).to be_a Gif
        end
    end
    
    describe "#name" do
        it "should return the correct name" do
            (@gif.title).should eql("obama")
        end
    end
    
    describe "#link" do
        it "should return the correct link" do
            @gif.link.should eql "http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif"
        end
    end
    
    describe "#steps" do
        it "should return the corect steps" do
            @gif.steps.should eql "Blend 2 minutes"
        end
    end
    
    describe "#tags" do
        it "should return the correct tags" do
            @gif.tags.should eql "Mexican"
        end
    end
end
