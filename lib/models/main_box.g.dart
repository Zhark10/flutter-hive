// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlobalStateAdapter extends TypeAdapter<GlobalState> {
  @override
  final typeId = 0;

  @override
  GlobalState read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlobalState(
      colorTheme: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GlobalState obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.colorTheme);
  }
}
