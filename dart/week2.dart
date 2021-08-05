void main() {
//print(callGen(1991));
//เรียกใช้ funtion
callWeb("Google" , protocal: "https" , port : 443);
}
 // var year = 2000;
  // if (year >=1996) {
   // print("Gen Z");
 // } else{
   // print("Gen Y");
  // }
// การเช็คเงื่อนไข           True         False
 String callGen(int year) => (year >=1996) ? ("Gen Z") : ("Gen Y") ;

//การสร้าง funtion การแสดงข้อมูลในตัวแปร list โดยใช้ for in และ return จำนวนข้อมูลใน list กลับด้วย
int callColor([String newColor = "pink"]) {
  List<dynamic> color = ["red", "blue", "green"];
  color.add("pink");
  for(var item in color ){
    print(item);
  }

 return color.length;
}

//การสร้าง funtion การแสดงข้อมูลการเชื่อมต่อเว็บและ port แบบ Allow 
void callWeb(String web, {int port = 80, String protocal = "https"}) =>
print("$protocal $web $port");

