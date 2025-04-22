import 'package:drift/drift.dart';

class Produtos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get confeitariaId =>
      integer().customConstraint('REFERENCES confeitarias(id)')();
  TextColumn get nome => text()();
  RealColumn get valor => real()();
  TextColumn get descricao => text().nullable()();
  TextColumn get imagens => text()();
}
