# == Schema Information
#
# Table name: pods
#
#  id              :integer          not null, primary key
#  pod_leader_id   :integer          not null
#  name            :string           not null
#  coolness_rating :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Pod < ApplicationRecord

    has_many :students,
        primary_key: :id,
        foreign_key: :pod_id,
        class_name: :Circles

    has_many :developers,
        primary_key: :id,
        foreign_key: :student_pod_id,
        class_name: :Developer



    belongs_to :pod_leader,
        primary_key: :id,
        foreign_key: :pod_leader_id,
        class_name: :Developer

    has_many :teaching_assistants,
        through: :teaching_assistants,
        source: :teaching_assistant

    has_many :teaching_assistants,
        primary_key: :id,
        foreign_key: :pod_id,
        class_name: :TeachingAssistantMembership

end
