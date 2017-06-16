require 'sinatra'

class Todo
	attr_accessor :task, :done,:important,:urgent
		@important = ""
	@urgent = ""	
	def initialize task
		@task = task
		@done = false
	
	end

end

tasks = []

# t1 = Todo.new "First"
# t2 = Todo.new "Second"
# t3 = Todo.new "Third"

# tasks << t1
# tasks << t2
# tasks << t3

get '/' do
	data = Hash.new
	data[:tasks] = tasks
	erb :indexb, locals: data
end

post '/add' do
  task = params["task"]
imp = params["important"]
 	urg = params["urgent"]
  todo = Todo.new task
  todo.important = imp
 	todo.urgent = urg
  tasks << todo
  return redirect '/'
end

post '/done' do
	task = params["task"]

	tasks.each do |todo|
		if todo.task == task
			todo.done = !todo.done
		end
	end

    return redirect '/'
end












