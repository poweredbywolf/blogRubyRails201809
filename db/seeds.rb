10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Imagination is more important than knowledge. Knowledge is limited. Imagination encircles the world."
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15

  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "My great service",
    body: "Unthinking respect for authority is the greatest enemy of truth.",
    main_image: "https://place-hold.it/300x200"
    thumb_image: "https://place-hold.it/350x200"
  )

end

put "9 portfolio items created"
