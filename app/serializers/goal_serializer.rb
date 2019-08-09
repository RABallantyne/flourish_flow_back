class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :completion_date, :completion_percent, :steps
end
