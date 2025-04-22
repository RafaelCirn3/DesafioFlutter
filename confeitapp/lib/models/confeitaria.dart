import 'package:drift/drift.dart';

class Confeitarias extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  TextColumn get cep => text()();
  TextColumn get rua => text()();
  TextColumn get numero => text()();
  TextColumn get bairro => text()();
  TextColumn get cidade => text()();
  TextColumn get estado => text()();
  TextColumn get telefone => text()();
}
