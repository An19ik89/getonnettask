//extensions on String



import 'package:flutter_get_on_net_task/data/mapper/mapper.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}

//extensions on int
extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return ZERO;
    } else {
      return this!;
    }
  }
}

//extensions on bool
extension NonNullBoolean on bool? {
  bool orFalse() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}

//extensions on array
extension NonNullList on List? {
  List orEmptyList() {
    if (this == null) {
      return [];
    } else {
      return this!;
    }
  }
}

//extensions on double
extension NonNullDouble on double? {
  double orZeroDouble() {
    if (this == null) {
      return ZERODOUBLE;
    } else {
      return this!;
    }
  }
}
