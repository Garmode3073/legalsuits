class Case {
  String caseid;
  String caseTitle;
  String caseSubject;
  String caseDescription;
  String uid;
  DateTime dateTime;

  Case.fromMap(Map map) {
    this.caseid = map["caseId"];
    this.caseTitle = map["caseTitle"];
    this.caseSubject = map["caseSubject"];
    this.caseDescription = map["caseDescription"];
    this.uid = map["uid"];
    this.dateTime = map["dateTime"];
  }

  Map tomap() {
    Map map = {
      "caseId": this.caseid,
      "caseTitle": this.caseTitle,
      "caseSubject": this.caseSubject,
      "caseDescription": this.caseDescription,
      "uid": this.uid,
      "dateTime": this.dateTime
    };
    return map;
  }
}
