import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/list_provider.dart';
import 'package:provider_example/providers/shopping_card_provider.dart';

class ListExample extends StatelessWidget {
  const ListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listProvider = Provider.of<ListProvider>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ListProvider>(
              builder: (context, myProvider, child) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: myProvider.myList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(myProvider.myList[index]),
                        );
                      },
                    ),

                    ElevatedButton(
                        onPressed: () {
                          listProvider.addItem("Item 4");
                        },
                        child: Text("Add Item"))
                  ],
                );
              },
            ),

            ElevatedButton(
                onPressed: () {
                  listProvider.addItem("Item 4");
                },
                child: Text("Add Item"))
          ],
        ),
      ),
    );
  }
}
