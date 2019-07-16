# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer                         => belongs_to a user using this foreign key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord
    has_many :enrollments,
    class_name: :Enrollment,
    primary_key: :id,   
    foreign_key: :course_id

    has_many :enrolled_students,
    through: :enrollments,
    source: :student

    belongs_to :instructor,
    class_name: :User,
    primary_key: :id,   
    foreign_key: :instructor_id

    belongs_to :prereq,
    class_name: :Course,
    primary_key: :id,   
    foreign_key: :prereq_id
    
    has_many :postrec,
    class_name: :Course,
    primary_key: :id,   
    foreign_key: :prereq_id
    
end
