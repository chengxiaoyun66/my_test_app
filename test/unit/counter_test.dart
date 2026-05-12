import 'package:flutter_test/flutter_test.dart';
import 'package:my_test_app/counter/counter.dart';

void main() {
  group('Counter', () {
    test('初始值应为 0', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('increment() 应增加 1', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('decrement() 应减少 1，但不会小于 0', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, 0);

      counter.increment();
      counter.increment();
      counter.decrement();
      expect(counter.value, 1);
    });
  });
}