class UserinApp {
  String uid;
  String email;
  String password;

  UserinApp.fromMap(Map map) {
    this.email = map["email"];
    this.uid = map["uid"];
    this.password = map["password"];
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "uid": this.uid,
      "email": this.email,
      "password": this.password,
    };
    return map;
  }
}
