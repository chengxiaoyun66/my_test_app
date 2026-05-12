class Counter {
  int _value = 0;
  int get value => _value;

  void increment() {
    _value++;
  }

  void decrement() {
    if (_value > 0) _value--;
  }
}