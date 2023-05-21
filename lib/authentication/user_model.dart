class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String mobileNo;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.fullName,
    required this.mobileNo,
    required this.password,
  });

  // toJson() {
  //   return {
  //     "Fullname": fullName,
  //     "Email": email,
  //     "Phone": mobileNo,
  //     "Password": password
  //   };
  // }
}
