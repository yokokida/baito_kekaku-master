import 'package:flutter/material.dart';

class User {
  final String userId;
  final String displayName;
  final String inAppName;
  final String email;

//<editor-fold desc="Data Methods" defaultstate="collapsed">
  const User({
    @required this.userId,
    @required this.displayName,
    @required this.inAppName,
    @required this.email,
  });

  User copyWith({
    String userId,
    String displayName,
    String inAppName,
    String email,
  }) {
    if ((userId == null || identical(userId, this.userId)) &&
        (displayName == null || identical(displayName, this.displayName)) &&
        (inAppName == null || identical(inAppName, this.inAppName)) &&
        (email == null || identical(email, this.email))) {
      return this;
    }

    return new User(
      userId: userId ?? this.userId,
      displayName: displayName ?? this.displayName,
      inAppName: inAppName ?? this.inAppName,
      email: email ?? this.email,
    );
  }

  @override
  String toString() {
    return 'User{userId: $userId, displayName: $displayName, inAppName: $inAppName, email: $email}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          displayName == other.displayName &&
          inAppName == other.inAppName &&
          email == other.email);

  @override
  int get hashCode =>
      userId.hashCode ^
      displayName.hashCode ^
      inAppName.hashCode ^
      email.hashCode;

  factory User.fromMap(Map<String, dynamic> map) {
    return new User(
      userId: map['userId'] as String,
      displayName: map['displayName'] as String,
      inAppName: map['inAppName'] as String,
      email: map['email'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'userId': this.userId,
      'displayName': this.displayName,
      'inAppName': this.inAppName,
      'email': this.email,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}