require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
   let(:title) { RandomData.random_sentence }
   let(:body) { RandomData.random_paragraph }
   let(:price) { 5 }
   
   let(:topic) { Topic.create!(name: "New Topic Name", description: "New Topic Description") }
   
   let(:s_post) { topic.sponsored_posts.create!(title: title, body: body, price: price) }
 
   it { is_expected.to belong_to(:topic) }
   
   describe "attributes" do
       
     it "has name, description, and public attributes" do
       expect(s_post).to have_attributes(title: title, body: body, price: price)
     end
    
   end
     
end
