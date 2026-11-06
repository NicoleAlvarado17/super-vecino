import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "resumen" field.
  String? _resumen;
  String get resumen => _resumen ?? '';
  bool hasResumen() => _resumen != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _total = castToType<double>(snapshotData['total']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _resumen = snapshotData['resumen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPedidosRecordData({
  String? uid,
  double? total,
  DateTime? fecha,
  String? estado,
  String? resumen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'total': total,
      'fecha': fecha,
      'estado': estado,
      'resumen': resumen,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.total == e2?.total &&
        e1?.fecha == e2?.fecha &&
        e1?.estado == e2?.estado &&
        e1?.resumen == e2?.resumen;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality()
      .hash([e?.uid, e?.total, e?.fecha, e?.estado, e?.resumen]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
