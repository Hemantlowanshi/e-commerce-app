
class LoginRequest {
  final String username;
  final String password;
  final String deviceType;
  final String deviceToken;

  LoginRequest({
    required this.username,
    required this.password,
    required this.deviceType,
    required this.deviceToken,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'deviceType': deviceType,
      'deviceToken': deviceToken,
    };
  }
}