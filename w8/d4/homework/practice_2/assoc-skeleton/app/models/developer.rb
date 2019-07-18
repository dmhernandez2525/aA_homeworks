# == Schema Information
#
# Table name: developers
#
#  id                :integer          not null, primary key
#  student_pod_id    :integer
#  student_circle_id :integer
#  name              :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Developer < ApplicationRecord

    has_many :circles,
        primary_key: :id,
        foreign_key: :circle_leader_id,
        class_name: :Circle

    belongs_to :student_pod_id,
        primary_key: :id,
        foreign_key: :student_pod_id,
        class_name: :Pod
        
    belongs_to :student_circle_id,
        primary_key: :id,
        foreign_key: :student_circle_id,
        class_name: :Circle

    has_many :teaching_assistant_memberships,
        primary_key: :id,
        foreign_key: :teaching_assistant_id,
        class_name: :TeachingAssistantMembership

    has_many :final_projects,
        primary_key: :id,
        foreign_key: :supervisor_id,
        class_name: :FinalProject

    

end
