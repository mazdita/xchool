json.extract! enrollment, :id, :course_id, :user_id, :pass_score, :progress, :score, :completed, :graduate, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
