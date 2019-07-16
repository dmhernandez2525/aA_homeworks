# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer                                   => belongs to course using this foreign key 
#  student_id :integer                                   => belongs_to user using this foreign key
#  created_at :datetime         not null                 
#  updated_at :datetime         not null
#
# The model that belongs_to the other model has a column
# holding the other model's ID.

class Enrollment < ApplicationRecord
    belongs_to :course,
    class_name: :Course,
    foreign_key: :course_id,
    primary_key: :id

    belongs_to :student,
    class_name: :User,
    foreign_key: :student_id,
    primary_key: :id
end
