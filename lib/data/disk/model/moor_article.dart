import 'package:moor_flutter/moor_flutter.dart';

class MoorArticle extends Table {
  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();

  TextColumn get apiUrl => text()();

  BoolColumn get isHosted => boolean()();

  TextColumn get pillarId => text()();

  TextColumn get pillarName => text()();

  TextColumn get sectionId => text()();

  TextColumn get sectionName => text()();

  TextColumn get type => text()();

  TextColumn get webPublicationDate => text()();

  TextColumn get webTitle => text()();

  TextColumn get webUrl => text()();

  TextColumn get thumbnail => text()();

  TextColumn get tags => text()();
}
