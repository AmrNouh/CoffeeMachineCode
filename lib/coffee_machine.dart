enum CoffeeSize {
  COFFEE_SIZE_SMALL,
  COFFEE_SIZE_MEDIUM,
  COFFEE_SIZE_LARGE,
  COFFEE_SIZE_XLARGE,
}

class CoffeeMachine {
  double _waterLevel = 0.0; // Milli Letter
  double _coffeeLevel = 0.0; // Gram

  // Constructor
  CoffeeMachine({double waterLevel = 0.0, double coffeeLevel = 0.0}) {
    if (waterLevel > 0) {
      _waterLevel = waterLevel;
    }

    if (coffeeLevel > 0) {
      _coffeeLevel = coffeeLevel;
    }
  }

  // accessors (Getters and Setters)

  double get waterLevel => _waterLevel;

  double get coffeeLevel => _coffeeLevel;

  set waterLevel(double waterLevel) {
    if (waterLevel > 0) {
      _waterLevel = waterLevel;
    } else {
      print('Invalid Water Level');
    }
  }

  set coffeeLevel(double coffeeLevel) {
    if (waterLevel > 0) {
      _coffeeLevel = coffeeLevel;
    } else {
      print('Invalid Water Level');
    }
  }

  void fakeWaterAdd(double water) {
    _waterLevel += water;
  }

  void fakeCoffeeAdd(double coffee) {
    _coffeeLevel += coffee;
  }

  void _turnAvailableOptionsOn() {
    print('Available Options On');
  }

  void _turnAvailableOptionsOff() {
    print('Available Options Off');
  }

  bool _isWaterLevelEnough(CoffeeSize coffeeSize) {
    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL && _waterLevel >= 200) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_MEDIUM &&
        _waterLevel >= 300) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_LARGE &&
        _waterLevel >= 400) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_XLARGE &&
        _waterLevel >= 500) {
      return true;
    }
    return false;
  }

  bool _isCoffeeLevelEnough(CoffeeSize coffeeSize) {
    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL && _coffeeLevel >= 10) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_MEDIUM &&
        _coffeeLevel >= 12) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_LARGE &&
        _coffeeLevel >= 15) {
      return true;
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_XLARGE &&
        _coffeeLevel >= 20) {
      return true;
    }
    return false;
  }

  void _warmWaterLevel() {
    print('Water Level Are Not Enough');
  }

  void _warmCoffeeLevel() {
    print('Coffee Level Are Not Enough');
  }

  /*
 * Coffee Size CoffeeSize.COFFEE_SIZE_SMALL : water 200m, coffee 10gm
 * Coffee Size CoffeeSize.COFFEE_SIZE_MEDIUM : water 300m, coffee 12gm
 * Coffee Size CoffeeSize.COFFEE_SIZE_LARGE : water 400m, coffee 15gm
 * Coffee Size CoffeeSize.COFFEE_SIZE_XLARGE : water 500m, coffee 20gm
 * */

  void makeCoffee(CoffeeSize coffeeSize) {
    var water = _isWaterLevelEnough(coffeeSize);
    var coffee = _isCoffeeLevelEnough(coffeeSize);

    // Turn Available options Off
    _turnAvailableOptionsOff();

    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL) {
      if (water && coffee) {
        // Make a Coffee Of Size CoffeeSize.COFFEE_SIZE_SMALL
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size CoffeeSize.COFFEE_SIZE_SMALL
        _waterLevel -= 200;
        _coffeeLevel -= 10;

        // Turn The Available Options ON
        _turnAvailableOptionsOn();
      } else {
        if (water) {
          _warmCoffeeLevel();
        } else if (coffee) {
          _warmWaterLevel();
        } else {
          _warmWaterLevel();
          _warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_MEDIUM) {
      if (water && coffee) {
        // Make a Coffee Of Size CoffeeSize.COFFEE_SIZE_MEDIUM
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size CoffeeSize.COFFEE_SIZE_MEDIUM
        _waterLevel -= 300;
        _coffeeLevel -= 12;

        // Turn The Available Options ON
        _turnAvailableOptionsOn();
      } else {
        if (water) {
          _warmCoffeeLevel();
        } else if (coffee) {
          _warmWaterLevel();
        } else {
          _warmWaterLevel();
          _warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_LARGE) {
      if (water && coffee) {
        // Make a Coffee Of Size CoffeeSize.COFFEE_SIZE_LARGE
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size CoffeeSize.COFFEE_SIZE_LARGE
        _waterLevel -= 400;
        _coffeeLevel -= 15;

        // Turn The Available Options ON
        _turnAvailableOptionsOn();
      } else {
        if (water) {
          _warmCoffeeLevel();
        } else if (coffee) {
          _warmWaterLevel();
        } else {
          _warmWaterLevel();
          _warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == CoffeeSize.COFFEE_SIZE_XLARGE) {
      if (water && coffee) {
        // Make a Coffee Of Size CoffeeSize.COFFEE_SIZE_XLARGE
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size CoffeeSize.COFFEE_SIZE_XLARGE
        _waterLevel -= 500;
        _coffeeLevel -= 20;

        // Turn The Available Options ON
        _turnAvailableOptionsOn();
      } else {
        if (water) {
          _warmCoffeeLevel();
        } else if (coffee) {
          _warmWaterLevel();
        } else {
          _warmWaterLevel();
          _warmCoffeeLevel();
        }
      }
    }
  }
// switch(coffeeSize){
//  case CoffeeSize.COFFEE_SIZE_SMALL :
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size CoffeeSize.COFFEE_SIZE_SMALL
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case CoffeeSize.COFFEE_SIZE_MEDIUM:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size CoffeeSize.COFFEE_SIZE_MEDIUM
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case CoffeeSize.COFFEE_SIZE_LARGE:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size CoffeeSize.COFFEE_SIZE_LARGE
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case CoffeeSize.COFFEE_SIZE_XLARGE:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size CoffeeSize.COFFEE_SIZE_SMALL
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
// }

}