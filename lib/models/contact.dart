class Contact {
  String attorneyid;
  String email;
  String title;
  String number;
  String message;
  DateTime dateTime;

  Contact.fromMap(Map map) {
    this.attorneyid = map["attorneyid"];
    this.email = map["email"];
    this.title = map["title"];
    this.number = map["number"];
    this.message = map["message"];
    this.dateTime = map["dateTime"];
  }

  Map tomap() {
    Map map = {
      "attorneyid": this.attorneyid,
      "email": this.email,
      "title": this.title,
      "number": this.number,
      "message": this.message,
      "dateTime": this.dateTime
    };
    return map;
  }
}
