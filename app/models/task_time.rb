class TaskTime < SimpleDelegator

  def initialize(task)
    @task = task
    super(@task)
  end

  def display_time
    @task.start_time.strftime('%l:%M %p')
  end
end
