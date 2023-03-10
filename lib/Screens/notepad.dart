import 'package:flutter/material.dart';

class Notepad extends StatefulWidget {
  const Notepad({Key? key}) : super(key: key);

  @override
  State<Notepad> createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  List date = ['June 22, 2022 05:00 PM', 'June 22, 2022 05:00 PM'];
  List name = ['Todays grocery list', 'Rich dad Poor dad quotes'];
  List color = [const Color(0xFFbbffcc), const Color(0xFFfffb9b)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFFFEDE3F)),
          child: const Center(
              child: Icon(
            Icons.add,
            size: 45,
          ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 95, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Notepad',
                  style: TextStyle(fontSize: 37.5, fontWeight: FontWeight.w500),
                  //     textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 2.5)
                        //  color: const Color(0xFF676767)
                        ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 25,
                            //   fill: .1,
                          ),
                          hintText: 'Search notes',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          border: InputBorder.none),
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //    width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color[index],
                          ),

                          child: ListTile(
                            title: Text(
                              name[index],
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xFF201F1F)),
                            ),
                            subtitle: Text(
                              date[index],
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xFF201F1F)),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
