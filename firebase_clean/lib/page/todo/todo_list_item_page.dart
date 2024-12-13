import 'package:firebase_clean/page/todo/provider/todo_list_provider.dart';
import 'package:firebase_clean/page/widget/todo_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoItemPage extends ConsumerStatefulWidget {
  const TodoItemPage({super.key});

  @override
  ConsumerState createState() => _TodoItemPageState();
}

class _TodoItemPageState extends ConsumerState<TodoItemPage> {
  @override
  Widget build(BuildContext context) {
    final todoItemState = ref.watch(todoListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Items'),
        actions: [
          IconButton(
            onPressed: () => ref.read(todoListNotifierProvider.notifier).loadTodoItem(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: todoItemState.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : todoItemState.errorMessage != null
              ? Center(
                  child: Text(todoItemState.errorMessage!),
                )
              : todoItemState.isEmpty
                  ? const Center(
                      child: Text('No Todo Items Found'),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) => TodoListItem(
                        item: todoItemState.items[index],
                        onEdit: (id, done) => ref
                            .read(todoListNotifierProvider.notifier)
                            .updateTodoItem(id, done),
                        onRemove: (id) => ref
                            .read(todoListNotifierProvider.notifier)
                            .deleteTodoItem(id),
                      ),
                      itemCount: todoItemState.items.length,
                    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final text = await _showAddToDoDialog(context);
          if (text != null && text.isNotEmpty) {
            ref.read(todoListNotifierProvider.notifier).addTodoItem(text);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<String?> _showAddToDoDialog(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('New ToDo'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: 'Enter ToDo text here'),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel')),
          TextButton(
              onPressed: () => Navigator.of(context).pop(controller.text),
              child: const Text('Add')),
        ],
      ),
    );
  }
}
