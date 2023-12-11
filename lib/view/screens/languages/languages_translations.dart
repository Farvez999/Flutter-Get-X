import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx_project/languages/english.dart';
import 'package:getx_project/languages/japanese.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US" : english,
    "ja_JP" : japanese
  };
}