class Project < ApplicationRecord
  belongs_to :problem, class_name: 'Problemsolution', foreign_key: 'problem_id'
  belongs_to :solution, class_name: 'Problemsolution', foreign_key: 'solution_id'
end
