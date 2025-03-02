import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task List App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final List<Map<String, dynamic>> _tasks = [];
  final TextEditingController _controller = TextEditingController();



  // Method to add a new task
  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tasks.add({
          'task': _controller.text,
          'isCompleted': false,
        });
      });
      _controller.clear(); // Clear the input field after adding the task
    }
  }

  // Method to toggle the completion status of a task
  void _toggleTaskCompletion(int index) {
    setState(() {
      _tasks[index]['isCompleted'] = !_tasks[index]['isCompleted'];
    });
  }

  // Method to remove a task
  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
