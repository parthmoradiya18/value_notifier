import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();
    ValueNotifier<int> sum=ValueNotifier(0);
    ValueNotifier<int> sub=ValueNotifier(0);
    ValueNotifier<int> mul=ValueNotifier(0);
    ValueNotifier<int> div=ValueNotifier(0);
    return Scaffold(
      appBar: AppBar(title: Text("value Notifier"),),
      body: Column(children: [
        Card(color: Colors.grey,margin: EdgeInsets.all(5),child: TextField(decoration: InputDecoration(hintText: "Enter value",labelText: "Enter value"),controller: t1,)),
        Card(color: Colors.grey,margin: EdgeInsets.all(5),child: TextField(decoration: InputDecoration(hintText: "Enter value",labelText: "Enter value"),controller: t2,)),
        ElevatedButton(onPressed: () {
          sum.value = int.parse(t1.text)+int.parse(t2.text);
          
        }, child: Text("sum")),


       ValueListenableBuilder(valueListenable: sum, builder: (context, value, child) {
         return Text("sum : ${sum.value}");
       },),


        ElevatedButton(onPressed: () {
          sub.value = int.parse(t1.text)-int.parse(t2.text);

        }, child: Text("sub")),

        ValueListenableBuilder(valueListenable: sub, builder: (context, value, child) {
          return Text("sub : ${sub.value}");
        },),
        ElevatedButton(onPressed: () {
          mul.value = int.parse(t1.text)*int.parse(t2.text);

        }, child: Text("mul")),

        ValueListenableBuilder(valueListenable: mul, builder: (context, value, child) {
          return Text("mul : ${mul.value}");
        },),
        ElevatedButton(onPressed: () {
          div.value = int.parse(t1.text)~/int.parse(t2.text);

        }, child: Text("div")),

        ValueListenableBuilder(valueListenable: div, builder: (context, value, child) {
          return Text("div : ${div.value}");
        },),



      ],),
    );
  }
}
