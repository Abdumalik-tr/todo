import 'package:flutter/material.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/ui/widget/Color.dart';
import 'package:todo/ui/widget/todo_card.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<TodoModel> todos = [
    TodoModel(
      title: 'По завтракать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: true,
    ),
    TodoModel(
      title: 'Идти на работу',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: true,
    ),
    TodoModel(
      title: 'По обедать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: false,
    ),
    TodoModel(
      title: 'По обедать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: false,
    ),
    TodoModel(
      title: 'По завтракать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: true,
    ),
    TodoModel(
      title: 'Идти на работу',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: true,
    ),
    TodoModel(
      title: 'По обедать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: false,
    ),
    TodoModel(
      title: 'По обедать',
      description: 'Сегодня хочу рано встать, меня ждут\n великие дела',
      done: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  //   TextField(

                  // ), 
                  Icon(Icons.search)],
                ),
              ),
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
      floatingActionButton: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            enableDrag: false,
            backgroundColor: Colors.white,
            builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(27.0),
                    child: Text(
                      'Добавить задачу',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.0, right: 17.0),
                    child: Container(
                      // width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          'Название',
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 10),
                  //   child: Container(
                  //     width: 350,
                  //     height: 110,
                  //     decoration: BoxDecoration(
                  //       border: Border.all(width: 1, color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsets.all(13.0),
                  //       child: Text(
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w400,
                  //           color: Colors.grey,
                  //         ),
                  //         'Описание',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
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
                ],
              );
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
