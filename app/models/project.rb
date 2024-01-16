class Project < ApplicationRecord
  has_many :tasks, inverse_of: :project, dependent: :destroy
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  
  validates_associated :tasks
  validates :name, presence: true

  def tasks_attributes=(attributes)
    super
    # binding.pry
  end

  # validate :validate_unique_task_description

  # def validate_unique_task_description
  #   validate_uniqueness_of_in_memory(
  #     tasks, [:description, :project_id], 'Task already exists'
  #   )
  # end
  
end
