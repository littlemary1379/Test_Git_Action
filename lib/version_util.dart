import 'package:flutter/services.dart' show rootBundle;
import 'package:yaml/yaml.dart';

class VersionUtils {
  static Future<String> getVersion() async {
    try {
      final yamlString = await rootBundle.loadString('pubspec.yaml');
      final yamlMap = loadYaml(yamlString);
      return yamlMap['version'].toString();
    } catch(e) {
      print("e : $e");
      return "";
    }
  }
}