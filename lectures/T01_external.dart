import 'T01.dart';

void main() {
  var studentB = StudentB(); //run ไม่ผ่าน เพราะว่า _gpa เป็น private อยู่ข้ามไฟล์
  print(studentB.gpa);
}