class SignoutWithMailFailure {
  final String message;

  const SignoutWithMailFailure([this.message = "An error occured."]);

  factory SignoutWithMailFailure.code(String code) {
    switch (code) {
      case 'Weak-Password':
        return const SignoutWithMailFailure(
            'Please enter a stronger Password.');
      case 'Invalid-mail':
        return const SignoutWithMailFailure(
            'Email is not valid or badly formatted');
      case 'email-already-in-use':
        return const SignoutWithMailFailure(
            'An account already exists with this mail');
      case 'user-disabled':
        return const SignoutWithMailFailure(
            'This User has been Disabled, please contact Support for assistance');
      default:
        return const SignoutWithMailFailure();
    }
  }
}
