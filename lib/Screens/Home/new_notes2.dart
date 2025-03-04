import 'package:diary_app/Screens/Home/home.dart';
import 'package:flutter/material.dart';

class AddNewNotes2 extends StatelessWidget {
  const AddNewNotes2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffC3D4E9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: const Icon(Icons.arrow_back_ios_new)),
                  ),
                  Text(
                    "New Note",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeList(),
                          ));
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Color(0xffFFB347), fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(),
              Container(
                width: 343,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Product Management',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 100,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write  Your  Text"),
                  ),
                ),
              ),
            ])),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffFFB347),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("B"),
                    Text("I"),
                    Text("U"),
                    Text("T"),
                    Icon(Icons.density_small_outlined),
                    Icon(Icons.format_align_left),
                    Icon(Icons.format_align_center),
                    Icon(Icons.format_align_right_sharp)
                  ],
                ))));
  }
}
