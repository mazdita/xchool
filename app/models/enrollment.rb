class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :user

  after_save :update_student

  def update_student
    UpdateStudentsProgressWorker.perform_async(self.user_id)
  end
end
