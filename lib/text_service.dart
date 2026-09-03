import 'package:injectable/injectable.dart';

@LazySingleton()
class TextService {
  String concatenate(String a, String b) {
    return a + b;
  }
}
