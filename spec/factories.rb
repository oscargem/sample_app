#FactoryGirl.define do
#	factory :user do
#		name "oscar"
#		email "oscar@163.com"
#		password "foobar"
#		password_confirmation "foobar"
#	end
#end

FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "oscar #{n}" }
		sequence(:email) { |n| "oscar_#{n}@163.com"}
		password "foobar"
		password_confirmation "foobar"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum"
		user
	end

end