import 'package:flutter/material.dart';

class Condition {
  final String storeName;
  final String presidentName;
  final String workContent;
  final String attention;
  final String address;
  final String access;
  final String papers;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Condition({
    @required this.storeName,
    @required this.presidentName,
    @required this.workContent,
    @required this.attention,
    @required this.address,
    @required this.access,
    @required this.papers,
  });

  Condition copyWith({
    String storeName,
    String presidentName,
    String workContent,
    String attention,
    String address,
    String access,
    String papers,
  }) {
    if ((storeName == null || identical(storeName, this.storeName)) &&
        (presidentName == null ||
            identical(presidentName, this.presidentName)) &&
        (workContent == null || identical(workContent, this.workContent)) &&
        (attention == null || identical(attention, this.attention)) &&
        (address == null || identical(address, this.address)) &&
        (access == null || identical(access, this.access)) &&
        (papers == null || identical(papers, this.papers))) {
      return this;
    }

    return new Condition(
      storeName: storeName ?? this.storeName,
      presidentName: presidentName ?? this.presidentName,
      workContent: workContent ?? this.workContent,
      attention: attention ?? this.attention,
      address: address ?? this.address,
      access: access ?? this.access,
      papers: papers ?? this.papers,
    );
  }

  @override
  String toString() {
    return 'Condition{storeName: $storeName, presidentName: $presidentName, workContent: $workContent, attention: $attention, address: $address, access: $access, papers: $papers}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Condition &&
          runtimeType == other.runtimeType &&
          storeName == other.storeName &&
          presidentName == other.presidentName &&
          workContent == other.workContent &&
          attention == other.attention &&
          address == other.address &&
          access == other.access &&
          papers == other.papers);

  @override
  int get hashCode =>
      storeName.hashCode ^
      presidentName.hashCode ^
      workContent.hashCode ^
      attention.hashCode ^
      address.hashCode ^
      access.hashCode ^
      papers.hashCode;

  factory Condition.fromMap(Map<String, dynamic> map) {
    return new Condition(
      storeName: map['storeName'] as String,
      presidentName: map['presidentName'] as String,
      workContent: map['workContent'] as String,
      attention: map['attention'] as String,
      address: map['address'] as String,
      access: map['access'] as String,
      papers: map['papers'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'storeName': this.storeName,
      'presidentName': this.presidentName,
      'workContent': this.workContent,
      'attention': this.attention,
      'address': this.address,
      'access': this.access,
      'papers': this.papers,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}