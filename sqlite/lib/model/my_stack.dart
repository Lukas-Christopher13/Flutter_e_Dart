class MyStack<T> {
  final List<T> _list;
  int _top;

  MyStack() 
  : _list = [],
    _top = 0
  {} 

  void push(T value) {
    _list.add(value);
    _top++;
  }

  //talvez de problema por conta do 'i'
  T remover(T value) {
    var item = value;
    _list.remove(value);
    return item;
  } 

  List<T> toArray() {
    List<T> array  = [];
    
    for(int i = _list.length-1; i > 0; i--) {
      array.add(_list[i]);
    }
    return array;
  }
}