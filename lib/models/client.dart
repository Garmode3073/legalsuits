class Client {
  String uid;
  String username;
  String phoneno;

  Client.fromMap(Map map) {
    this.uid = map["uid"];
    this.username = map["username"];
    this.phoneno = map["phoneno"];
  }

  Map tomap() {
    Map map = {
      "uid": this.uid,
      "username": this.username,
      "phoneno": this.phoneno,
    };
    return map;
  }
}
