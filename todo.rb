require_relative 'config/application'
require_relative 'app/controllers/tasks_controller'


class Todo
  def self.main(arr)
    option = arr[0]
    case option
      when 'list' then TasksController.list_tasks
      when 'add' then TasksController.add_tasks(arr)
      when 'delete' then TasksController.delete_tasks(arr[1])
      when 'complete' then TasksController.complete_tasks(arr[1])
      else
        puts 'Unknown command!'
    end
  end
end

Todo.main(ARGV)