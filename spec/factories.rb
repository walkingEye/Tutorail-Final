FactoryGirl.define do
  #factory :user do
   # name     "Rosco Fiskars"
    #email    "rosco@fatty.net"
   # password "roscolux"
  #end
  
  factory :user do
   sequence(:name)  { |n| "Person #{n}" }
   sequence(:email) { |n| "person_#{n}@example.com" }
   password "foobar"
   password_confirmation "foobar"
   
   factory :admin do
     admin true
   end
  end
end