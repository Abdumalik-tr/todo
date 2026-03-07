import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/ui/widget/color.dart';

class TodoBottomSheet {
  TodoBottomSheet({
    required BuildContext context,
    required Function(TodoModel) add,
  }) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
    showModalBottomSheet(
      context: context,
      enableDrag: false,
      backgroundColor: Colors.white,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(27.0),
                child: Text(
                  'Добавить задачу',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
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
                        controller: titleController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ('название'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                        controller: descController,
                        decoration: InputDecoration(
                          hintText: ('описание'),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (titleController.text.length != 0 && descController.text.length != 0) {
                  TodoModel todoModel = TodoModel(
                    title: titleController.text,
                    description: descController.text,
                    done: false,
                  );
                  add(todoModel);
                  Navigator.pop(context);
                }},
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    margin: EdgeInsets.all(12),
                    // width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColor.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        style: TextStyle(color: Colors.white),
                        'Добавить',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
