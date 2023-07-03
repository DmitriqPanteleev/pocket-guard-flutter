import 'package:flutter/foundation.dart';

import 'package:logger/logger.dart';

@immutable
final class ErrorHandler {
  factory ErrorHandler() {
    if (!_isInitialized) {
      _initThis();
    }
    return _this;
  }

  @protected
  const ErrorHandler._();

  void recordError(final Object error, final StackTrace stackTrace) {
    _logger.wtf(error.toString(), error, stackTrace);
  }

  @protected
  static bool _isInitialized = false;

  @protected
  static const _this = ErrorHandler._();
  @protected
  static final _logger = Logger();

  @protected
  static void _initThis() {
    FlutterError.onError = _recordFlutterError;
    _isInitialized = true;
  }

  @protected
  static void _recordFlutterError(final FlutterErrorDetails error) {
    _logger.wtf(error.toStringShort(), error.exception, error.stack);
  }
}
