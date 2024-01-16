class Task < ApplicationRecord
  belongs_to :project

  validates_each :description do |record, attr, value|
    binding.pry
    record.errors.add attr, :taken if record.project.tasks.map(&:description).count(value) > 1
  end
end
