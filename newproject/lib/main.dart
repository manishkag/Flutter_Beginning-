import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() {

       return Calci();
  }}


class Calci extends State<MyApp>{
  var value1=TextEditingController();
  var value2=TextEditingController();
  var result=0;
  void addValues(){
    setState(() {
      result=int.parse(value1.text)+int.parse(value2.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),

              child: Container(
                width: 400,
                child: TextField(
                  controller: value1,

                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'enter first number '
                  ),

                ),
              ),
            ),
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black87)
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('1'),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(0, 60), // Width is dynamic (0 means no constraint), height is 60
                        ),

                    ],
                  ),
                  Column(
                    children: [],
                  ),
                  Column(
                    children: [],
                  ),
                  Column(
                    children: [],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: value2,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'enter second number '
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                addValues();
              }, child: Text('ADD')),
            ),
            Text('Result:${result}')
          ],
        ),
      ),

    ),
    );
  }

}

