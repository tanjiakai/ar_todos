require_relative '../views/tasks_view'
class TasksController
 def self.list_tasks
  TasksView.list_tasks(Task.all)
 end

  def self.add_tasks(arr)
    new_task = arr[1...arr.length].join(' ')
    Task.create(task: new_task)
    puts "Appended #{new_task} to your TODO list..."

  end

  def self.delete_tasks(task_id)
    task = Task.all[(task_id.to_i) - 1]
    puts "Deleted #{task.task} from your TODO list..."
    task.delete
  end

  def self.complete_tasks(task_id)
    task = Task.all[(task_id.to_i) - 1]
    puts "Marked #{task.task} as completed..."
    task.complete
  end
end