import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'main_box.g.dart';

@HiveType(typeId: 0)
class GlobalState extends HiveObject {

  @HiveField(0)
  final colorTheme;

  GlobalState({@required this.colorTheme});
}