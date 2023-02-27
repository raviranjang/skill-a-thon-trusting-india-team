import 'dart:math';

class UuidService {
  static String generateUUID() {
    // Random _random = Random();
    // return _random.nextInt(1 << 32).toRadixString(32).padLeft(6, '0');
    var result = '';
    var characters = '0123456789';
    // var charactersLength = characters.length;
    Random random = new Random();
    for (var i = 0; i < 8; i++) {
      int randomNumber = random.nextInt(10);
      result += characters[randomNumber];
    }
    return result;
  }
}
