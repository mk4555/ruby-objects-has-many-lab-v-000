class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    post.author
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    post
  end

end
