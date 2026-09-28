class User {
  String email;
  String password;
  String nama;

  User({required this.email, required this.password, required this.nama});
}

List<User> users = [
   User(email: "admin1@gmail.com", password: "admin123", nama: "Administrator"),
   User(email: "danuuu@gmail.com", password: "paswoddanu", nama: "Danu"),
];


