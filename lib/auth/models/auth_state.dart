import 'package:collection/collection.dart';

class AuthState {
  bool flipPassIcon;
  bool isLoading;
  bool isPressedConnetWallet;
  List<bool> isEmptyTextField;

  AuthState({
    required this.flipPassIcon,
    required this.isLoading,
    required this.isEmptyTextField,
    required this.isPressedConnetWallet,
  });
  AuthState.initial({
    this.flipPassIcon = false,
    this.isLoading = false,
    this.isEmptyTextField = const [false, false, false, false],
    this.isPressedConnetWallet = false,
  });
  @override
  bool operator ==(covariant AuthState other) =>
      flipPassIcon == other.flipPassIcon &&
      const ListEquality().equals(isEmptyTextField, other.isEmptyTextField) &&
      isLoading == other.isLoading &&
      isPressedConnetWallet == other.isPressedConnetWallet;

  @override
  int get hashCode => Object.hashAll(
        [
          flipPassIcon,
          isLoading,
          const ListEquality().hash(isEmptyTextField),
          isPressedConnetWallet,
        ],
      );
}
