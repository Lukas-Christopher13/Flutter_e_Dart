void main(List<String> args) async {
  var future =  futureStringTest();
  print(future.then((value) => value));
  print(await printDalay(future, 5));
  print(printDalay(future, 10));
}

Future<String> futureStringTest() async {
  return Future.delayed(const Duration(seconds: 2), () => "teste",);
}

Future<String> printDalay(Future<String> future, int time) async {
  await Future.delayed(Duration(seconds: time));
  return future;
}





