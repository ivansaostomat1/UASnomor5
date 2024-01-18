import 'package:hive/hive.dart';
part 'kuliah.g.dart';
@HiveType(typeId: 1)
class Kuliah {
  @HiveField(0)
  final String namaMatkul;
  @HiveField(1)
  final String kodeMatkul;
  @HiveField(2)
  final String jadwalMatkul;
  Kuliah({
    required this.namaMatkul,
    required this.kodeMatkul,
    required this.jadwalMatkul,
  });
}