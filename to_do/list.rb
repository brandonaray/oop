class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    number = 0
    @tasks.each do |task|
      unless task.complete
        number = number + 1
      end
    end
    return number
  end

  def delete_complete_tasks
    @tasks.each do |task|
      @tasks.delete_if { |task| task.complete }
    end
  end

  def sort_by_priority
    
  end

end
