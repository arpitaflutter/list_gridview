import 'package:flutter/material.dart';

class File2 extends StatefulWidget {
  const File2({Key? key}) : super(key: key);

  @override
  State<File2> createState() => _File2State();
}

class _File2State extends State<File2> {
  List l1 = ["1","2","3","4","5","6","7","8","9","10"];
  List c1 = [Colors.purple,Colors.lightGreen,Colors.cyan,Colors.tealAccent,Colors.brown,Colors.blue,Colors.greenAccent,Colors.pinkAccent,Colors.amber,Colors.orange,];
  bool isright = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          actions: [
            Switch(value: isright, onChanged: (value) {
              setState(() {
                isright = value;
              });
            },)
          ],
        ),
        body: Container(
          color: Colors.black26,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: isright?3:1,),
            itemCount: 10,
            itemBuilder: (context, index) => theme(l1[index],c1[index]),
          ),
        ),
      ),
    );
  }
  Widget theme(String l1, Color c1)
  {
    return Container(
      height: 100,
      width: 100,
      color: c1,
      // decoration: BoxDecoration(
      //
      //   shape: BoxShape.circle,
      // ),
      alignment: Alignment.center,
      child: Text("$l1",style: TextStyle(color: Colors.red,fontSize: 20),),
    );
  }
}
