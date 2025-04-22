import 'package:equatable/equatable.dart';

const userImageUrl = "https://fastly.picsum.photos/id/964/200/300.jpg?hmac=4TmUg5VWiMt4hl9NxKOrX4W3N74VEbYJLbFeZbx3-tE";

class UserModel extends Equatable {
  final String id;
  final String? name;
  final String? email;
  final String? imageUrl;

  const UserModel(
    this.id,
    this.name,
    this.email,
    this.imageUrl,
  );

  @override
  List<Object> get props => [id];

  static const empty = UserModel(
    '123',
    "John Doe",
    "john@gmail.com",
    userImageUrl,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['id'] as String,
      json['name'] as String?,
      json['email'] as String?,
      json['imageUrl'] as String?,
    );
  }
}
