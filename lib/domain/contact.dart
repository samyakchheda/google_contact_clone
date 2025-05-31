class Contact {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String? profileImagePath;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    this.profileImagePath,
  });

  Contact copyWith({
    String? name,
    String? phone,
    String? email,
    String? profileImagePath,
  }) {
    return Contact(
      id: id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      profileImagePath: profileImagePath ?? this.profileImagePath,
    );
  }
}
