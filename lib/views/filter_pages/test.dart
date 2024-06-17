var s = [1, 2, 3];
List<int> res = [];
Future<List<int>> check() async {
  List<int> b = [];
  // await Future.forEach(s, (element) {
  //   Future.delayed(const Duration(seconds: 2));
  //   var newElement = element * 2;
  //   b.add(newElement);
  // });
  // return b;
  s.forEach((element) {
    int y = 0;
    Future.delayed(const Duration(seconds: 2), (() {
      y = element * 2;
    }));
    // var newElement = element * 2;
    res.add(y);
  });
  return res;
}

void main(List<String> args) async {
  List<int> a = await check();
  print(a.length);
}
