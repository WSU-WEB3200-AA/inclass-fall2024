json.array! @semesters do |semester|
  json.id semester.id
  json.term semester.term
  json.year semester.year
end