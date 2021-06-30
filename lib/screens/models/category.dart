class UserCategory {
  final int id;
  final String title;
  // ignore: non_constant_identifier_names
  final String membership_fees;
  UserCategory(
      {this.id,
      this.title,
      // ignore: non_constant_identifier_names
      this.membership_fees});

  factory UserCategory.fromJson(Map<String, dynamic> json) {
    return UserCategory(
      id: json['id'],
      title: json['title'],
      membership_fees: json['membership_fees'],
    );
  }
}
