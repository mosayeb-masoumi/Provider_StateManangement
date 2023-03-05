
import 'package:flutter/material.dart';
import 'package:provider_example/providers/counter_provider.dart';
import 'package:provider/provider.dart';

import 'example_1_2.dart';


class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar ${context.watch<Counter>().count}"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              Text("you pressed button  ${context.watch<Counter>().count}"),

              Count(),

              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Example12()),
                );
              }, child: Text("Second screen"))
            ],
          )
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           FloatingActionButton(
             child: Icon(Icons.remove),
               key: Key("decrement_floating"),
               heroTag: "btn1",
               tooltip: "Decrement",
               onPressed: (){
               context.read<Counter>().decrement();
               }),

          SizedBox(width: 10,),

          FloatingActionButton(
              child: Icon(Icons.exposure_zero),
              key: Key("zero_floating"),
              heroTag: "btn2",
              tooltip: "Zero",
              onPressed: (){
                context.read<Counter>().reset();
              }),

          SizedBox(width: 10,),

          FloatingActionButton(
              child: Icon(Icons.add),
              key: Key("increment_floating"),
              heroTag: "btn3",
              tooltip: "Increment",
              onPressed: (){
                context.read<Counter>().increment();
              }),
        ],
      ),
    );
  }
}


class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("${context.watch<Counter>().count}" ,style: TextStyle(fontSize: 20 , color: Colors.red),);
  }
}
