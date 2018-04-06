json.extract! user, :id, :fname, :lname, :email, :username, :company_id, :desc, :created_at, :updated_at
json.url user_url(user, format: :json)
