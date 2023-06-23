class AuthState {
  bool flipPassIcon;
  bool isLoading;
  bool isPressedConnetWallet;

  AuthState({
    required this.flipPassIcon,
    required this.isLoading,
    required this.isPressedConnetWallet,
  });
  AuthState.initial({
    this.flipPassIcon = false,
    this.isLoading = false,
    this.isPressedConnetWallet = false,
  });
  @override
  bool operator ==(covariant AuthState other) =>
      flipPassIcon == other.flipPassIcon &&
      isLoading == other.isLoading &&
      isPressedConnetWallet == other.isPressedConnetWallet;

  @override
  int get hashCode => Object.hashAll(
        [
          flipPassIcon,
          isLoading,
          isPressedConnetWallet,
        ],
      );
}
