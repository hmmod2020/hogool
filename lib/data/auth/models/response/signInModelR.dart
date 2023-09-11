class SignInModelR {
  String? token;

  SignInModelR({this.token});

  SignInModelR.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }


}