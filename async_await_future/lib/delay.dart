import 'dart:io';

void dalay(int value) async  {
  for(int i = 0; i < 10; i++) {
  }
}

void main(List<String> args) async {
  var future = returnString();
  print(future);
  Future.delayed(Duration(seconds: 7));
  print(await future);
}

Future<String> returnString() {
  return Future.delayed(Duration(seconds: 5), () => "teste");
}