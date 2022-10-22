class UpdateStudentsProgressWorker
  include Sidekiq::Worker

  def perform(user_id)
    user_id = input[:user_id]
    user_enrollments = Enrollment.all.where(user_id: user_id)
    average_score = (user_enrollments.sum(:score) / user_enrollments.size).round(0)
    average_progress = (user_enrollments.sum(:progress) / user_enrollments.size).round(0)
    graduated = !user_enrollments.map(&:graduate).include?(false)
    student = Student.find_or_create_by(user_id: user_id)
    student.update(average_score: average_score, average_progress:average_progress, graduated: graduated)
    student.save

  end


end
