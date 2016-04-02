Given (/^the following movies exist:$/) do |movies_table|
    movies_table.hashes.each do |movie|
    Movie.create!(movie)
end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |movie, director_name|
   movie = Movie.find_by_title(movie)
   movie.director = director_name
end

#Given(/^the following movies exist:$/) do |table|
#  table.hashes.each {|movie| Movie.create!(movie)}
#end

#Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
#   content = page.body
#   content.index(arg1).should <= content.index(arg2) if content.include?(arg1) & content.include?(arg2)
#end

#Given /the following movies exist/ do |movies_table|
#  value = 0
#  movies_table.hashes.each do |movie|
#      Movie.create(movie)
#      value += 1
#  end
#end

#Then(/^the director of "(.*?)" should be "(.*?)"$/) do |movie_title, director|
#    movie = Movie.find_by_title(movie_title)
#    movie.director.should == director
#end