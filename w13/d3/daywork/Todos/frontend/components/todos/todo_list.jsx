import React from 'react';
import TodoListItem from './todo_list_item'
import TodoForm from './todo_form'


class TodoList extends React.Component {

    render() {

        // debugger;

        const todoList = this.props.todos.map(todo => (
            <TodoListItem
                key={todo.id}
                todo={todo}
                receiveTodo = {this.props.receiveTodo} />)
        );

        return (
            <div>
            <ul className = "todo-list">
                {todoList}
            </ul>
                <TodoForm receiveTodo = {this.props.receiveTodo}/>
            </div>
        )
    }
}

export default TodoList;