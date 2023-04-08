import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/list_provider.dart';

class ListExample2 extends StatelessWidget {
  const ListExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 30,),
              Text("lenght is ${context.watch<ListProvider>().myList.length }" , style: TextStyle(color: Colors.red ,fontSize: 20),),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: context.watch<ListProvider>().myList.length,
                  itemBuilder: (context , indedx){
                    return Container(
                      width: size.width,
                      height: 50,

                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(child: Text(context.read<ListProvider>().myList[indedx] , style: TextStyle(color: Colors.red ,fontSize: 25),),),
                    );
                  })
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<ListProvider>().addItem("item4");
      },child: Icon(Icons.add),),
    );
  }
}

