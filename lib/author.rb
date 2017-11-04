class Author
  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    post.author
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@Post_count += 1 
    post
  end

end
