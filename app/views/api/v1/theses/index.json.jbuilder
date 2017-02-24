json.array! @theses do |thesis|
  json.id thesis.id
  json.author("#{thesis.user.first_name} #{thesis.user.last_name}")
  json.title thesis.title
  json.subtitle thesis.subtitle
  json.school thesis.school
  json.year thesis.year.year
end
