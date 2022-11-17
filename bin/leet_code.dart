import 'package:leet_code/leet_code.dart';

void main(List<String> arguments) {
  final student1 = Student(18, Sex.male);
  final student2 = Student(19, Sex.female);

  final professor1 = Professor(40, Sex.male);
  final professor2 = Professor(80, Sex.male);

  final University university = University<Student>(personList: [student1]);
  university.display();
}

class University<T extends Person> {
  final List<T> personList;

  void asdgadsg() {
    final first = personList.first;
    first.sex;
    first.age;
    first.asdfasdf();
  }

  void display() {
    print(personList.first.age);
    print(personList.first.runtimeType);
  }

  const University({required this.personList});
}

class Student extends Person {
  Student(super.age, super.sex);
}

class Professor extends Person {
  Professor(super.age, super.sex);
}

abstract class Person {
  final int age;
  final Sex sex;

  void asdfasdf() {
    print('asdfasdfa');
  }

  Person(this.age, this.sex);
}

enum Sex { male, female }
