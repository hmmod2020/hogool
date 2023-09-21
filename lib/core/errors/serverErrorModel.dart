class ServerErrorModel {
  List<String>? nonFieldErrors;

  ServerErrorModel({this.nonFieldErrors});

  ServerErrorModel.fromJson(Map<String, dynamic> json) {
    nonFieldErrors = json['non_field_errors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['non_field_errors'] = this.nonFieldErrors;
    return data;
  }
}