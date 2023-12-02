class HelloController < ApplicationController
  def index
    @services = Service.all
    @latest_blog_posts = BlogPost.order(created_at: :desc).limit(2)
    @featured_blog_posts = BlogPost.where(featured: true).limit(2)
    @blog_post = BlogPost.last
  end
end
