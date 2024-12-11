CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'To Do',
    assigned_user INT REFERENCES users(id),
    due_date DATE
);

-- Пример заполнения начальных данных
INSERT INTO users (username, email, password_hash) VALUES
('admin', 'admin@example.com', 'hash_of_password');

INSERT INTO projects (name, description) VALUES
('Default Project', 'This is the first project.');
