import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precioUnitario" field.
  double? _precioUnitario;
  double get precioUnitario => _precioUnitario ?? 0.0;
  bool hasPrecioUnitario() => _precioUnitario != null;

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precioUnitario = castToType<double>(snapshotData['precioUnitario']);
    _imagenUrl = snapshotData['imagenUrl'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('carrito')
          : FirebaseFirestore.instance.collectionGroup('carrito');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('carrito').doc(id);

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCarritoRecordData({
  String? nombre,
  int? cantidad,
  double? precioUnitario,
  String? imagenUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'cantidad': cantidad,
      'precioUnitario': precioUnitario,
      'imagenUrl': imagenUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precioUnitario == e2?.precioUnitario &&
        e1?.imagenUrl == e2?.imagenUrl;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.cantidad, e?.precioUnitario, e?.imagenUrl]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
