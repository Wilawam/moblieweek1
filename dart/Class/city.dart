import '../problem.dart';
import 'country.dart';
class City extends Country with Problem{
City() : super("Tokyo", "Saru");

void callSuper() {
  print("City in Japan: " + super.city);
  super.callHello();
}

@override
String callAnimal() {
  return "Saru";
}
}