import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/clean_arc_provider/data/data_model/data_model.dart';
import 'package:provider_example/clean_arc_provider/presentation/clean_provider.dart';

class CleanPage extends StatefulWidget {
  const CleanPage({Key? key}) : super(key: key);

  @override
  State<CleanPage> createState() => _CleanPageState();
}

class _CleanPageState extends State<CleanPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 30,),

            ElevatedButton(
                onPressed: () {
                  context.read<CleanProvider>().getData();
                },
                child: const Text("get list")),



            context.read<CleanProvider>().isLoading
                ? const CircularProgressIndicator(color: Colors.red,)
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: context.watch<CleanProvider>().list.length,
                    itemBuilder: (context, index) {
                      DataModel model = context.watch<CleanProvider>().list[index];
                      return GestureDetector(
                        onTap: (){
                          context.read<CleanProvider>().changeSelection(index);
                        },
                        child: Container(
                          width: size.width,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: model.selected ? Colors.green : Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("${model.name} ${model.age}")),
                        ),
                      );
                    }),
          ],
        ),
      ),
    );
  }
}
