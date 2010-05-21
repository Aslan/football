module PostsHelper
	def published_on(post)
		(post.published_at.nil?) ? post.created_at.strftime('%b %d, %Y') : post.published_at.strftime('%b %d, %Y')
	end
end
