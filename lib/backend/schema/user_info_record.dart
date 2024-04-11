import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserInfoRecord extends FirestoreRecord {
  UserInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "user_image" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  bool hasUserImage() => _userImage != null;

  void _initializeFields() {
    _userName = snapshotData['user_name'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _userEmail = snapshotData['user_email'] as String?;
    _userImage = snapshotData['user_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserInfoRecord.fromSnapshot(s));

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserInfoRecord.fromSnapshot(s));

  static UserInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserInfoRecordData({
  String? userName,
  DocumentReference? userId,
  String? userEmail,
  String? userImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_name': userName,
      'user_id': userId,
      'user_email': userEmail,
      'user_image': userImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserInfoRecordDocumentEquality implements Equality<UserInfoRecord> {
  const UserInfoRecordDocumentEquality();

  @override
  bool equals(UserInfoRecord? e1, UserInfoRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userId == e2?.userId &&
        e1?.userEmail == e2?.userEmail &&
        e1?.userImage == e2?.userImage;
  }

  @override
  int hash(UserInfoRecord? e) => const ListEquality()
      .hash([e?.userName, e?.userId, e?.userEmail, e?.userImage]);

  @override
  bool isValidKey(Object? o) => o is UserInfoRecord;
}
