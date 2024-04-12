import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  // "birth_year" field.
  int? _birthYear;
  int get birthYear => _birthYear ?? 0;
  bool hasBirthYear() => _birthYear != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "is_student" field.
  bool? _isStudent;
  bool get isStudent => _isStudent ?? false;
  bool hasIsStudent() => _isStudent != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _course = snapshotData['course'] as String?;
    _birthYear = castToType<int>(snapshotData['birth_year']);
    _link = snapshotData['link'] as String?;
    _isStudent = snapshotData['is_student'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  String? displayName,
  String? photoUrl,
  String? course,
  int? birthYear,
  String? link,
  bool? isStudent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'display_name': displayName,
      'photo_url': photoUrl,
      'course': course,
      'birth_year': birthYear,
      'link': link,
      'is_student': isStudent,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.course == e2?.course &&
        e1?.birthYear == e2?.birthYear &&
        e1?.link == e2?.link &&
        e1?.isStudent == e2?.isStudent;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.displayName,
        e?.photoUrl,
        e?.course,
        e?.birthYear,
        e?.link,
        e?.isStudent
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
