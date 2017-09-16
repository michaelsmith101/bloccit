class Topic < ActiveRecord::Base
    has_many :posts
    has_many :sponsored_posts
end
