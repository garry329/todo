<!DOCTYPE html>
<html>
<head>
	<title>Todo App</title>
</head>
<body>
<form action="/add" method="POST">

<input type="text" name="task" />

<br>

<input type="submit" value="Add Task" />


</form>




<ul>


<% tasks.each do |todo| %>


<% if todo.done %>
<li class="strikethrough"> 
<% else %>
<li>

<% end %>



<%= todo.task %>

, 
<form action="/done" method="POST">

<input type="hidden" name="task" value="<%= todo.task %>">
<% if todo.done %>

<input type="submit" value="UnDone">
<% else %>
<input type="submit" value="Done">
<% end %>
</form>

</li>

<% end %>

</ul>

<style type="text/css">
.strikethrough {
	text-decoration: line-through;
}	
</style>



</body>
</html>

