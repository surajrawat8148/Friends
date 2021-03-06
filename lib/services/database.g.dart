// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final String password;
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.mobile,
      required this.password});
  factory User.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      mobile: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile'])!,
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['mobile'] = Variable<String>(mobile);
    map['password'] = Variable<String>(password);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      mobile: Value(mobile),
      password: Value(password),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      mobile: serializer.fromJson<String>(json['mobile']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'mobile': serializer.toJson<String>(mobile),
      'password': serializer.toJson<String>(password),
    };
  }

  User copyWith(
          {int? id,
          String? name,
          String? email,
          String? mobile,
          String? password}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('mobile: $mobile, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, email, mobile, password);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.mobile == this.mobile &&
          other.password == this.password);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> mobile;
  final Value<String> password;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.mobile = const Value.absent(),
    this.password = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String mobile,
    required String password,
  })  : name = Value(name),
        email = Value(email),
        mobile = Value(mobile),
        password = Value(password);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? mobile,
    Expression<String>? password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (mobile != null) 'mobile': mobile,
      if (password != null) 'password': password,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? mobile,
      Value<String>? password}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('mobile: $mobile, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String?> mobile = GeneratedColumn<String?>(
      'mobile', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, email, mobile, password];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    } else if (isInserting) {
      context.missing(_mobileMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class Friend extends DataClass implements Insertable<Friend> {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final int userId;
  Friend(
      {required this.id,
      required this.name,
      required this.email,
      required this.mobile,
      required this.userId});
  factory Friend.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Friend(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      mobile: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['mobile'] = Variable<String>(mobile);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  FriendsCompanion toCompanion(bool nullToAbsent) {
    return FriendsCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      mobile: Value(mobile),
      userId: Value(userId),
    );
  }

  factory Friend.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Friend(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      mobile: serializer.fromJson<String>(json['mobile']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'mobile': serializer.toJson<String>(mobile),
      'userId': serializer.toJson<int>(userId),
    };
  }

  Friend copyWith(
          {int? id,
          String? name,
          String? email,
          String? mobile,
          int? userId}) =>
      Friend(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('Friend(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('mobile: $mobile, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, email, mobile, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Friend &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.mobile == this.mobile &&
          other.userId == this.userId);
}

class FriendsCompanion extends UpdateCompanion<Friend> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> mobile;
  final Value<int> userId;
  const FriendsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.mobile = const Value.absent(),
    this.userId = const Value.absent(),
  });
  FriendsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String mobile,
    required int userId,
  })  : name = Value(name),
        email = Value(email),
        mobile = Value(mobile),
        userId = Value(userId);
  static Insertable<Friend> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? mobile,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (mobile != null) 'mobile': mobile,
      if (userId != null) 'user_id': userId,
    });
  }

  FriendsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? mobile,
      Value<int>? userId}) {
    return FriendsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FriendsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('mobile: $mobile, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $FriendsTable extends Friends with TableInfo<$FriendsTable, Friend> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FriendsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String?> mobile = GeneratedColumn<String?>(
      'mobile', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES users(id)');
  @override
  List<GeneratedColumn> get $columns => [id, name, email, mobile, userId];
  @override
  String get aliasedName => _alias ?? 'friends';
  @override
  String get actualTableName => 'friends';
  @override
  VerificationContext validateIntegrity(Insertable<Friend> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    } else if (isInserting) {
      context.missing(_mobileMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Friend map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Friend.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FriendsTable createAlias(String alias) {
    return $FriendsTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UsersTable users = $UsersTable(this);
  late final $FriendsTable friends = $FriendsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, friends];
}
