require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Введите задачу, затем \"end\", чтобы завершить"
    @text = STDIN.gets.chomp

    puts "К какому числу сделать? Введите ответ в формате ДД.ММ.ГГГГ"
    date = STDIN.gets.chomp

    @due_date = Date.parse(date)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H-%M-%S")} \n\n"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
