class User {
  String uid;
  String firstName;
  String lastName;
  String username;
  String email;
  String phone;
  String description;
  String photoURL;
  bool isPrivate;

  User({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    this.phone = "",
    this.photoURL = "",
    this.description = "",
    this.isPrivate = false,
  });
}

User userFromMap(Map<String, dynamic> data){
  User user = User(
    uid: data['uid'],
    firstName: data['firstName'],
    lastName: data['lastName'],
    username: data['username'],
    email: data['email'],
    phone: data['phone'],
    description: data['description'],
    photoURL: data['photoURL'],
    isPrivate: data['isPrivate'],
  );
  return user;
}