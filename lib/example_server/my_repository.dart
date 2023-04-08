abstract class MyRepository{
  Future<dynamic> getData();
}

class IMyRepository extends MyRepository{
  @override
  Future getData() async {
    await Future.delayed(const Duration(seconds: 2));
    List<String> list = ["item1" , "item2" ,"item3"];
    return list;
  }

}

// class MyRepository {
//   @override
//   Future getData() async {
//     await Future.delayed(const Duration(seconds: 2));
//     List<String> list = ["item1" , "item2" ,"item3"];
//     return list;
//   }
//
// }