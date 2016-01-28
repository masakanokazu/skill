json.array!(@users) do |user|
  json.extract! user, :id, :email, :last_name, :first_name, :salutation, :username, :company, :department, :title, :country, :city, :state, :postalcode, :address, :tel, :fax, :mobile, :url, :gender, :birthdate, :guraduation, :workexperience, :language, :japanese, :english, :toeic, :toefl, :Q01, :Q02, :Q03, :Q04, :Q05, :comment, :status, :note
  json.url user_url(user, format: :json)
end
