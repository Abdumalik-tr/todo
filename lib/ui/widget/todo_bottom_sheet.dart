import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/ui/widget/color.dart';

class TodoBottomSheet {
  TodoBottomSheet(context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                      color: Colors.grey
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
            InkWell(
              onTap: () {
                print(titleController.text);
                print(descController.text);
              },
              child: Padding(
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
            ),
          ],
        );
      },
    );
  }
}
