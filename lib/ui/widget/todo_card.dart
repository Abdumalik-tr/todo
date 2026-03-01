import 'package:flutter/material.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/ui/widget/Color.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({super.key, required this.todoModel});
  final TodoModel todoModel;

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  //Color bgColor = Color(0xff5566FF);
  //Color bgColor = Color.fromARGB(255, 85, 102, 255);
  //Color bgColor = Color.fromRGBO(85, 102, 255, 0.05);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      // width: 100,
      // height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    widget.todoModel.title,
                  ),
                ),
              ),
              Checkbox(
                value: widget.todoModel.done,
                onChanged: (_) {
                  setState(() {
                    widget.todoModel.done = !widget.todoModel.done;
                  });
                },
              ),
              Icon(Icons.delete, color: Colors.white),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage('assets/Union-2.png',), color: Colors.white),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              widget.todoModel.description,
            ),
          ),
        ],
      ),
    );
  }
}
