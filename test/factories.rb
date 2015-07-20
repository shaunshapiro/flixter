FactoryGirl.define do  factory :enrollment do
    
  end
 

	factory :lesson do
		title "This is the first test"
		submission "And this is the first part"
	end	

	factory :course do
		title "First"
		description "lol"
		cost 200
	end

	factory :user do
		sequence :email do |n|
			"trololulozo#{n}@gmail.com"
		end
		password "lulzpassword"
		password_confirmation "lulzpassword"
	end
end