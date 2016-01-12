FactoryGirl.define do
	factory :user do 
		sequence :email do |n|
			"thatguy#{n}@gmail.com"
		end
		password "socold16"
		password_confirmation "socold16"
	end

	factory :place do 
		name "Coffee 123"
		address "421 W Broadway, Long Beach, CA, 90802"
		description "The best worst coffee ever"
		association :user
	end

	factory :comment do
		association :user
		association :place
		rating "3_stars"
		message "Oh my goodness"
	end
end