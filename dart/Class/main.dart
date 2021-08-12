import 'country.dart';
import 'city.dart';

void main() {
  print("Hello Guys. I'm Ploy ");

//Country item = new Country.japan("Tokyo", "Panda"); 
//print("Welcome to " + item.country);
//  item.callHello();
//  print("Country: " + item.city);
//  print("Country for Japan: " + item.callAnimal());

//  print("Color of Japan" + Country.color);

var order = City();

  print("Welcome to: " + order.country);
  order.callSuper();

  print("National Animals in Japan: " + order.callAnimal());
  
  order.callProblem();
  }
