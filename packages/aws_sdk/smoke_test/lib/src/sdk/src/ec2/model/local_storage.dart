// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_storage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocalStorage extends _i1.SmithyEnum<LocalStorage> {
  const LocalStorage._(
    super.index,
    super.name,
    super.value,
  );

  const LocalStorage._sdkUnknown(super.value) : super.sdkUnknown();

  static const excluded = LocalStorage._(
    0,
    'EXCLUDED',
    'excluded',
  );

  static const included = LocalStorage._(
    1,
    'INCLUDED',
    'included',
  );

  static const required = LocalStorage._(
    2,
    'REQUIRED',
    'required',
  );

  /// All values of [LocalStorage].
  static const values = <LocalStorage>[
    LocalStorage.excluded,
    LocalStorage.included,
    LocalStorage.required,
  ];

  static const List<_i1.SmithySerializer<LocalStorage>> serializers = [
    _i1.SmithyEnumSerializer(
      'LocalStorage',
      values: values,
      sdkUnknown: LocalStorage._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocalStorageHelpers on List<LocalStorage> {
  /// Returns the value of [LocalStorage] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocalStorage byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocalStorage] whose value matches [value].
  LocalStorage byValue(String value) => firstWhere((el) => el.value == value);
}