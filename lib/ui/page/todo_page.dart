import 'package:flutter/material.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/ui/widget/color.dart';
import 'package:todo/ui/widget/todo_card.dart';
import 'package:todo/ui/widget/todo_bottom_sheet.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<TodoModel> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ('поиск'),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return TodoCard(todoModel: todos[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          TodoBottomSheet(
            context: context,
            add: (todo) {
              setState(() {
                todos.add(todo);
              });
            },
          );
        },
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: AppColor.blue,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(blurRadius: 8)],
          ),
          child: Icon(Icons.add, color: Colors.white, size: 24),
        ),
      ),
    );
  }
}
