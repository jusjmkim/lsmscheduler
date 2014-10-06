# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedulescourse, :class => 'Schedulescourses' do
    schedule_id "Integer"
    course_id "Integer"
  end
end
