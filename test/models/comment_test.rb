require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating" do
	comment = Comment.create(message: 'great place', rating: 'four stars'.)
	puts comment.inspect  	
  end
end
