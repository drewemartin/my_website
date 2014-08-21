json.array!(@letters) do |letter|
  json.extract! letter, :id, :name, :email, :subject, :body
  json.url letter_url(letter, format: :json)
end
