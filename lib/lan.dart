import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'message':'What is your name?',
      'name' : 'Isha Dheke'
    },
    'ne_NP':{
      'message':'तिम्रो नाम के हो?',
      'name' : 'ईशा ढेके'
    },
  };
}
