import axios from 'axios';

const api = axios.create({
  baseURL: 'http://backend:5000/api', // URL бэкенда
});

export const fetchTasks = async () => {
  const response = await api.get('/tasks');
  return response.data;
};

export const createTask = async (task) => {
  const response = await api.post('/tasks', task);
  return response.data;
};
