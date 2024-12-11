import React from 'react';
import TaskCard from './TaskCard';

function Board() {
  const tasks = [
    { id: 1, title: 'Task 1', description: 'Description of Task 1' },
    { id: 2, title: 'Task 2', description: 'Description of Task 2' },
  ];

  return (
    <div className="board">
      {tasks.map((task) => (
        <TaskCard key={task.id} title={task.title} description={task.description} />
      ))}
    </div>
  );
}

export default Board;
