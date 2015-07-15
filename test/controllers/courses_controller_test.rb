require 'test_helper'

class CoursesControllerTest < ActionController::TestCase

   test "course created" do 
   	 user = FactoryGirl.create(:user)
   	 sign_in user
   	 course = FactoryGirl.create(:course)

   	 assert_difference 'Course.count' do
   	 	post :create, :course_id => course.id, :course => {title: course.title, description: course.description, cost: course.cost}
   	 end
   	 # assert_equal 1, courses.count
   	 # assert_redirected_to instructor_course_path(course)
   	
   end
end
