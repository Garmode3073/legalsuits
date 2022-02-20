class Attorney {
  String uid;
  String username;
  String phoneNo;
  String attorneyNo;
  String category;
  int ratePh;
  String casePriceSheet;
  String casePortfolio;

  Attorney.fromMap(Map map) {
    this.uid = map["uid"];
    this.username = map["username"];
    this.phoneNo = map["phoneNo"];
    this.attorneyNo = map["attorneyNo"];
    this.category = map["category"];
    this.ratePh = map["ratePh"];
    this.casePriceSheet = map["casePriceSheet"];
    this.casePortfolio = map["casePortfolio"];
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "uid": this.uid,
      "username": this.username,
      "phoneno": this.phoneNo,
      "attorneyNo": this.attorneyNo,
      "category": this.category,
      "ratePh": this.ratePh,
      "casePriceSheet": this.casePriceSheet,
      "casePortfolio": this.casePortfolio,
    };
    return map;
  }
}
