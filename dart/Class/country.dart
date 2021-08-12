class Country {
  var country = "Japan";
  var city;
  var _animal = "Cats";
  static var color = "Red";

//constructor แบบสั้น
  Country(this.city, this._animal);

 //Redirect constructor
  Country.japan(String city, String animal) : this(city, animal);

  void callHello(){
    print("Kon'nichiwa!!!");
  }

  String callAnimal() {
    return  this._animal;
  }
  }
