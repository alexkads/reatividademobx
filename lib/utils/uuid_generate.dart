import 'package:uuid/uuid.dart';

class UUIDGenerate {
  final _uuid = Uuid();

  String get uuidv1 => _uuid.v1();

  String get uuidv4 => _uuid.v4();
}
