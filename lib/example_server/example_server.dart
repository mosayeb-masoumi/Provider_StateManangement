
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/server_provider.dart';

class ExampleServer extends StatelessWidget {
  const ExampleServer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

            child: Column(
              children: [

                SizedBox(height: 30,),
                Text("lenght is ${context.watch<ServerProvider>().list.length }" , style: const TextStyle(color: Colors.red ,fontSize: 20),),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: context.watch<ServerProvider>().list.length,
                      itemBuilder: (context , index){
                        return Container(
                          width: size.width,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Center(child: Text(context.watch<ServerProvider>().list[index] , style: const TextStyle(color: Colors.red ,fontSize: 25),),),
                        );
                      }),
                ),

                   context.watch<ServerProvider>().isLoading ? Center(child: CircularProgressIndicator(color: Colors.red,)):Container()
              ],
            ),


      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<ServerProvider>().getDataFromServer();
      },child: Icon(Icons.add),),
    );
  }
}

