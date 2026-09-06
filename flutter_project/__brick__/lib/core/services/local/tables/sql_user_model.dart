class SqlUserModel {
  final int? id;
  final String name;
  final String email;

  SqlUserModel({required this.id, required this.name, required this.email});
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }

  factory SqlUserModel.fromJson(Map<String, dynamic> json) {
    return SqlUserModel(
      id: json['id'] as int?,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}
