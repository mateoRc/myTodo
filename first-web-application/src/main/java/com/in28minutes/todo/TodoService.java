package com.in28minutes.todo;

import java.util.List;
import java.util.ArrayList;

public class TodoService {

		private static List<Todo> todos = new ArrayList<Todo>();
		static {
			todos.add(new Todo("learn web app development", "Study"));
			todos.add(new Todo("learn Spring MVC", "Study"));
			todos.add(new Todo("learn Spring Rest Services", "Study"));
		}
		
		public List<Todo> retrieveTodos() {
			return todos;
		}
		
		public void addTodo(Todo todo) {
			if (!todo.getName().trim().equals("")) {
				todos.add(todo);
				System.out.println(this.getClass().getName() + ": " + todo.getName());
			}
		}
		
		public void deleteTodo(Todo todo) {
			todos.remove(todo);
		}
}
