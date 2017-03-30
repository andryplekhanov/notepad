require_relative 'lib/post.rb'
require_relative 'lib/memo.rb'
require_relative 'lib/link.rb'
require_relative 'lib/task.rb'

puts "Привет! Сделай, пожалуйста, запись в блокнот:"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, i|
    puts "#{i}: #{type}"
  end

  choice = STDIN.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Запись сохранена. Спасибо!"
