class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :contents, type: String
end
