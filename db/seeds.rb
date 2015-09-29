require 'faker'
require_relative '../config/application'

Task.transaction do
  5.times do
    Task.create(task: Faker::Lorem.sentence)
  end
end