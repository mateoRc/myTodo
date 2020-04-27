package com.in28minutes.todo;

import java.util.List;
import java.util.ArrayList;

public class TodoService {

		private static List<Todo> todos = new ArrayList<Todo>();
		static {
			todos.add(new Todo("learn web app development"));
			todos.add(new Todo("learn Spring MVC"));
			todos.add(new Todo("learn Spring Rest Services"));
		}
		
		public List<Todo> retrieveTodos() {
			return todos;
		}
}
