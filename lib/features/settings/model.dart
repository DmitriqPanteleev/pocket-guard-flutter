import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

@immutable
final class Model extends Equatable {
  const Model({
    required this.locale,
    required this.brightness,
  });

  final Locale locale;
  final Brightness brightness;

  Model copyWith({
    final Locale? locale,
    final Brightness? brightness,
  }) =>
      Model(
        locale: locale ?? this.locale,
        brightness: brightness ?? this.brightness,
      );

  @override
  List<Object> get props => [locale, brightness];
}
