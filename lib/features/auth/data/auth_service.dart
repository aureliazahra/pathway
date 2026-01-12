class AuthService {
  Future<void> login(String username, String password) async {
    await Future.delayed(Duration(milliseconds: 700));
  }

  Future<void> signup() async {
    await Future.delayed(Duration(milliseconds: 300));
  }
}