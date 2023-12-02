class BlogPost < ApplicationRecord
  has_one_attached :thumbnail
  has_rich_text :body
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true# In the Rails console
  BlogPost.create(title: 'My First Blog Post', body: 'This is the body of my first blog post.')
  BlogPost.create(title: 'My Second Blog Post', body: 'This is the body of my second blog post.')
end
