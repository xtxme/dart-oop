//inheritance = มี parents and child class

import '../src/T02.inheritance.dart';

void main() {
  // var person = Person();
  // person.sayHello();

  // var student = Student(gpa: 3.8, age: 21);
  // student.sayHello();
  // print(student.gpa);
  // print(student.age);

//implement
  var teacher = Teacher(age: 35);
  teacher.sayHello();
  teacher.eat();
  print(teacher.age);

//mixin
  //var ath = Athlete(); //mixin ทำแบบนี้ไม่ได้
  var footballPlayer = FootballPlayer();
  footballPlayer.kick();

//abstract
  var dog = Dog();
  dog.makeSound();
}

class Person {
  double age;
  Person({this.age = 0});

  void sayHello() {
    print("Hello, I am person.");
  }

  void eat() {
    print("Person is eating.");
  }
}

//extends
class Student extends Person { //extends = การสืบทอดคลาส (Inheritance)
  double? gpa; //Student คือ Person ที่มีเพิ่ม gpa เข้าไป

  Student({this.gpa = 0, double age = 0}) : super(age: age); //double age = 0 → รับค่า age แต่ตัว Student ไม่ได้เก็บ age เองเพราะ age อยู่ในคลาส Person
  // super = ส่งค่าไปให้ constructor ของ Person, "Student ได้รับ age มาด้วย แต่ age เป็นของ Person ดังนั้นส่งให้ Person จัดการเอง"
  //age ตัว1ของ person, age ตัวที่2 ของ student

  @override //เมธอดนี้กำลัง เขียนทับ (override) เมธอดที่มาจากคลาสแม่
  void sayHello() {
    print("Hello form student");
  }

  void study() {
    print("Student is studying");
  }
}

//impement = ต้อง overwrite ทุกอย่าง (fuction, ตัวแปล, constructor)
class Teacher implements Person{
  @override
  double age;

  Teacher({required this.age});

  @override
  void sayHello() {
    print("Hello from Teacher");
  }

  @override
  void eat() {
    print("Teacher is eating");
  }

}

//Mixin = เอาไว้ “แปะเพิ่มความสามารถ” ให้ class โดย ไม่ใช่ class และไม่ใช่ object
mixin Athlete on Person{ //Athlete จะถูก mix-in ได้เฉพาะกับ class ที่สืบทอดจาก Person
  void kick() {
    print("Kicking the ball");
  }
}

class FootballPlayer extends Person with Athlete { //extends = สืบทอดตัวตนหลัก, with = เพิ่มความสามารถเสริม

}

//Abstract method = แบบพิมพ์ / โครงร่าง (บอกว่า “คลาสลูกต้องทำอะไรบ้าง” แต่ ยังไม่บอกวิธีทำ)
abstract class Animal {
  void makeSound(); //สัตว์ทุกตัว ต้องมี method makeSound()
}

class Dog extends Animal {
  @override //“ฉันกำลังทำ method ที่ abstract บังคับไว้”
  void makeSound() {
    print("Baking!!!!");
  }
}

//impement vs extends vs abstract
  //implements → ไม่มีโค้ดให้ใช้ ต้องเขียนเองทั้งหมด แต่หน้าตาตามสัญญาที่กำหนด “อยากแค่ทำตามรูปแบบ ไม่อยากสืบทอดอะไร” (ต้องเขียนทุกอันจริง ๆ)
  //extends → สืบทอด + ใช้โค้ดเดิมได้ + แก้บางส่วนด้วย override (เขียนเฉพาะอันที่อยากแก้ (override))
  //abstract → ทุกคลาสลูกต้องทำสิ่งนี้ แต่ทำไม่เหมือนกัน (ต้องเขียนเฉพาะที่เป็น abstract ถ้ามีให้แล้วก้ไม่ต้องเขียน)
