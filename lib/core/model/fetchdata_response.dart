class FetchDataResponse {

  String? name;
  String? contactName;
  String? emailId;
  String? password;
  String? number;

  FetchDataResponse(
      { this.name, this.contactName, this.emailId, this.password,this.number});

  FetchDataResponse.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    contactName = json['ContactName'];
    emailId = json['EmailId'];
    password = json['password'];
    number = json['Number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['ContactName'] = this.contactName;
    data['EmailId'] = this.emailId;
    data['password'] = this.password;
    data['Number'] = this.number;
    return data;
  }
}
