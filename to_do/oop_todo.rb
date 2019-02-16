require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 9))
list.add_task(Task.new("Take out trash", 6))
list.add_task(Task.new("Mow the lawn", 4))
list.add_task(Task.new("Wash the dishes", 7))
list.add_task(Task.new("Sweep the floor", 10))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Access the priority of the 2nd task as a test
puts "Priority level of task 2:"
puts list.tasks[1].priority
puts "--------"

# Sorts tasks by priority level and prints sorted list
puts "Tasks by priority"
puts list.sort_by_priority
puts "--------"

# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Toggles the 2nd task from the list from incomplete to complete
list.tasks[1].toggle_complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Toggles the 2nd task from the list back to incomplete
list.tasks[1].toggle_complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Print out the number of incomplete tasks
puts "Number of incomplete tasks:"
puts list.number_of_incomplete_tasks
puts "--------"

# Toggles the 1st list in the task from complete to incomplete
list.tasks[0].toggle_complete!

# Reprints number of incomplete tasks
puts "Number of incomplete tasks:"
puts list.number_of_incomplete_tasks
puts "--------"

# Mark the first and second tasks from the list as complete
list.tasks[0].complete!
list.tasks[1].complete!

# Deletes completed tasks
list.delete_complete_tasks

# Reprints number of incomplete tasks
puts "Number of incomplete tasks:"
puts list.number_of_incomplete_tasks
puts "--------"

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"
