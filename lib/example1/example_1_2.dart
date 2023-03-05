import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/counter_provider.dart';
import 'package:provider_example/providers/shopping_card_provider.dart';

class Example12 extends StatelessWidget {
  const Example12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${context.watch<Counter>().count}" , style: TextStyle(fontSize: 20 , color: Colors.blue),),
            Text("length of list ${context.watch<ShoppingCard>().lengthOfList}" , style: TextStyle(fontSize: 20 , color: Colors.blue),),
            Text("list is ${context.watch<ShoppingCard>().cardList}" , style: TextStyle(fontSize: 15 , color: Colors.red),),

            ElevatedButton(onPressed: (){
              context.read<ShoppingCard>().addItem("banana");
            }, child: Text("Add item to card"))
          ],
        ),
      ),
    );
  }
}