class User {
  final String id;
  final String username;
  final String email;

  User({required this.id, required this.username, required this.email});
}

final usersRepostory = List.generate(
  10,
  (index) => User(
    id: (index + 1).toString(),
    username: "Person ${index + 1}",
    email: "person${index + 1}@example.com",
  ),
);
