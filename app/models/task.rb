class Task < ApplicationRecord
  belongs_to :project
  validates :description, db_uniqueness: { index_name: :index_tasks_on_description_and_project_id, case_sentitive: false, scope: :project, rescue: :always }
  # validates_each :description do |record, attr, value|
  #   binding.pry
  #   record.errors.add attr, :taken if record.project.tasks.map(&:description).count(value) > 1
  # end
end
