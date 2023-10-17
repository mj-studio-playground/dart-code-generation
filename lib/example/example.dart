import 'package:code_generation/annotations.dart';

part 'example.add.dart';
part 'example.g.dart';

@Multiplier(5)
final name = 'John Doe';
@Add(5)
final age = 95;

class Dog {
  const Dog(this.name, this.age);
  final String name;
  final int age;
}
