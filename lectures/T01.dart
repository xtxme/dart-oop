
import '../src/T02.inheritance.dart';

void main() {

  //encapsulation = การห่อหุ้มข้อมูลและการป้องกันไม่ให้คนภายนอกเข้ามาแก้ข้อมูลโดยตรง
  // var studentA1 = StudentA(); //การเรียกใช้ class (class instance)
  // var studentA2 = StudentA();
  // studentA1.gpa = 4.0;
  // print(studentA1.gpa);
  // print(studentA2.gpa);

  // var studentB = StudentB(); //ทำแบบนี้ได้อยู่เพราะว่ายังไม่ได้แก้ข้ามไฟล์
  // studentB.gpa = 3.8;
  // print(studentB.gpa);

  // var studentC = StudentC(gpa: 3.89);
  // print(studentC.gpa);

  // var studentD = StudentD(gpa: 2.4);
  // print(studentD.gpa);

  // var studentE = StudentE(gpa: 3.1);
  // print(studentE.gpa);

  // var studentF = StudentF(gpa: 3.0);
  // print(studentF.gpa);
  // studentF.gpa = 3.1; //ไม่สามารถเปลี่ยนค่าได้เนื่องจากเป็น final

  // var studentG = StudentG(gpa: 3.1); //การมาเรียกใช้ defult constructor
  var studentG = StudentG.posi(4.0);
}

//class ไม่อนุญาติให้สร้างด้านใน main()
class StudentA {
  double gpa = 2.5; //public
}

class StudentB {
  double _gpa = 3.0; // private ห้ามแก้ตรงๆจากข้างนอก (within library)

  //getter = ใช้ “อ่านค่า” แต่เราเรียกมันเหมือนเป็นตัวแปรธรรมดา ไม่ต้องมีวงเล็บ
  double get gpa { // double = ชนิดข้อมูลที่จะ “ส่งกลับ” เวลาเราอ่านค่า gpa
    return this._gpa;
  }
  //double get gap => _gpa; // เขียนแบบนี้ก็ได้ (sort hand)

  //set
  set gpa(double gpa){
    this._gpa = gpa;
  }
  //set gap(double gpa) => _gpa = gpa; // เขียนแบบนี้ก็ได้
}

//initialize
class StudentC {
  double? gpa;

  StudentC({required double gpa}) { //constructor = function ที่มีชื่อเดียวกับชื่อ class
    this.gpa = gpa; //เขียนแบบ keyword argument ให้เห็นชัดเจนว่าเรากำลังใส่ตัวแปรอะไรอยู่
  }
}

class StudentD {
  double? gpa;
  double? age;

  //initializer list สั้นขึ้นแต่ไม่ต่างอะไรกับ StudentC
  //StudentD({required double gpa, required double age}) : this.gpa = gpa, this.age = age;

  //Shorthand
  StudentD({required this.gpa});
}

class StudentE {
  double gpa;
  String name;

  StudentE({required this.gpa, this.name = ""});
}

//การใช้ final ทำให้เปลี่ยนค่าไม่ได้
class StudentF {
  final double gpa;
  StudentF({required this.gpa});
}

class StudentG {
  final double gpa;

  StudentG({required this.gpa}); //default constructor (มีได้หลาย constructor)
  StudentG.posi(this.gpa); //Named Constructor = Dart อนุญาตให้มี หลาย constructor ได้ในคลาสเดียว
  //.posi คือชื่อ constructor (ตั้งชื่ออะไรก็ได้)

}
