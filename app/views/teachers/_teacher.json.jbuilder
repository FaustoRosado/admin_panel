json.extract! teacher, :id, :first_name, :last_name, :age, :salary, :education, :email, :phone_number, :img_url, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
