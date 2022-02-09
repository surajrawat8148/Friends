final String tableNotes = 'notes';

// class NoteFields {
//   final List<String> values = [id, name, email, number, password, time];

//   // 'firstName': firstName,
//   // 'lastName': lastName,
//   static final String id = '_id';
//   static final String name = 'name';
//   static final String email = 'email';
//   static final String number = 'number';
//   static final String password = 'password';
//   static final String time = 'time';
// }

class UserModel {
  // final String firstName;
  // final String lastName;
  final int? id;
  final String name;
  final String email;
  final String mobile;
  final String password;

  UserModel({
    // required this.firstName,
    // required this.lastName,
    this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.password,
  });

  // static fromMap(Map<String, Object?> c) {}

  // UserModel copy({
  //   int? id,
  //   String? name,
  //   String? email,
  //   int? number,
  //   String? password,
  //   DateTime? createdTime,
  // }) =>
  //     UserModel(
  //       id: id ?? this.id,
  //       name: name ?? this.name,
  //       email: email ?? this.email,
  //       number: number ?? this.number,
  //       password: password ?? this.password,
  //       createdTime: createdTime ?? this.createdTime,
  //     );

  // factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
  //       // firstName: json['firstName'],
  //       // lastName: json['lastName'],
  //       name: json['name'],
  //       email: json['email'],
  //       mobile: json['mobile'],
  //       password: json['password'],
  //     );

  // static UserModel fromJson(Map<String, Object?> json) => UserModel(
  //     id: json[NoteFields.id] as int?,
  //     name: json[NoteFields.name] as String,
  //     email: json[NoteFields.email] as String,
  //     number: json[NoteFields.number] as int,
  //     password: json[NoteFields.password] as String,
  //     createdTime: DateTime.parse(json[NoteFields.time] as String));

  // Map<String, Object?> toJson() => {
  //       // 'firstName': firstName,
  //       // 'lastName': lastName,
  //       NoteFields.id: id,
  //       NoteFields.name: name,
  //       NoteFields.email: email,
  //       NoteFields.number: number,
  //       NoteFields.password: password,
  //       NoteFields.time: createdTime.toIso8601String(),
  //     };
}
