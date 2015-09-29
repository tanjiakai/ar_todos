class TasksView
  def self.list_tasks(arr)
    arr.each_with_index do |todo, index|
      puts "#{index + 1}. #{todo.completed} #{todo.task}"
    end
  end
end
