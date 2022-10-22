json.extract! student, :id, :user_id, :average_score, :average_progress, :graduated, :created_at, :updated_at
json.url student_url(student, format: :json)
