json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :text
  json.url quiz_url(quiz, format: :json)
end
