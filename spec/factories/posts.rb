FactoryGirl.define do
  factory :blog_post, class: Post do
    title "Halfway"
    subtitle "Not punching your computer in the face"
    preview "Six weeks ago I was rolling in bed, too excited to go to sleep before my first day of Flatiron. Six weeks from now, I will be rolling in bed, too sad to fall asleep knowing that Flatiron is over. And today, today is halfway."
    body "Six weeks ago I was rolling in bed, too excited to go to sleep before my first day of Flatiron. Six weeks from now, I will be rolling in bed, too sad to fall asleep knowing that Flatiron is over. And today, today is halfway.\nAt halfway, we talked about our feelings. Every Friday we talk about our feelings. But this Friday, Avi asked us to reflect on the overall experience, rather than the usual weekly review. We talked about growth, about the pursuit of self actualization, about dealing with fear. All of which I agreed with, felt and witnessed everyday. But this weekend was particularly telling of the program's impact on my personal development, as I stared at my browser and consistently resisted the urge to punch my computer in the face.\nI was working on my first Rails app. It's about frogs. Naming them, giving them colors and tadpoles, then having the tadpoles 'evolve' into frogs while retaining their tadpole attributes. You know, your basic froggy features. And it was painful."
    type "BlogPost"
    cover_art "halfway-cover.jpeg"
  end

  factory :illustration, class: Post do
    title "Pies In The Sky"
    subtitle "inspired by a Flatiron Feeling Friday"
    cover_art "pies-in-the-sky-cover.jpeg"
    image "pies-in-the-sky.jpeg"
    type "Illustration"
  end
end






