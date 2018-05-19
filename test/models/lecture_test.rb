require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "don't save lecture without content" do
    lecture = Lecture.new
    lecture.title = 'Lecture 1'
    lecture.attachment = 'salma.pdf'
    assert_no lecture.save
  end

end
