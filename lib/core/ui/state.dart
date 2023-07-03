enum State { enabled, disabled, loading, success, failure }

extension StateX on State {
  bool get isEnabled => this == State.enabled;
  bool get isDisabled => this == State.disabled;
  bool get isLoading => this == State.loading;
  bool get success => this == State.success;
  bool get failure => this == State.failure;
}
