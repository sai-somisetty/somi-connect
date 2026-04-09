// Fixes isar_collections.g.dart for dart2js: large schema/index id literals
// must not appear as int literals. Run after: dart run build_runner build
import 'dart:io';

void main() {
  final f = File('lib/models/isar/isar_collections.g.dart');
  if (!f.existsSync()) {
    stderr.writeln('Missing lib/models/isar/isar_collections.g.dart');
    exit(1);
  }
  var s = f.readAsStringSync();
  s = s.replaceAllMapped(
    RegExp(r'^const (\w+Schema) = CollectionSchema\(', multiLine: true),
    (m) => 'final ${m[1]} = CollectionSchema(',
  );
  const maxSafe = 9007199254740991; // JS Number.MAX_SAFE_INTEGER
  s = s.replaceAllMapped(RegExp(r'\bid: (-?\d+),'), (m) {
    final v = BigInt.parse(m[1]!);
    if (v.abs() > BigInt.from(maxSafe)) {
      return "id: int.parse('${m[1]}'),";
    }
    return m[0]!;
  });
  f.writeAsStringSync(s);
  stdout.writeln('Patched ${f.path} for web (dart2js) int literals.');
}
