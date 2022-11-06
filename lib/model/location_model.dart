import 'dart:ffi';

class LocationModel {
  String? sOid;
  String? sParentOid;
  String? sLastModified;
  String? code;
  String? start;
  String? startMs;
  String? end;
  String? endMs;
  String? description;
  Double? latitude;
  Double? longitude;
  String? elevation;
  String? place;
  String? country;
  String? affiliation;
  String? type;
  String? archive;
  String? archiveNetworkCode;
  String? restricted;
  String? shared;
  String? remarkContent;
  String? remarkUsed;

  LocationModel(
      {this.sOid,
      this.sParentOid,
      this.sLastModified,
      this.code,
      this.start,
      this.startMs,
      this.end,
      this.endMs,
      this.description,
      this.latitude,
      this.longitude,
      this.elevation,
      this.place,
      this.country,
      this.affiliation,
      this.type,
      this.archive,
      this.archiveNetworkCode,
      this.restricted,
      this.shared,
      this.remarkContent,
      this.remarkUsed});

  LocationModel.fromJson(Map<String, dynamic> json) {
    sOid = json['_oid'];
    sParentOid = json['_parent_oid'];
    sLastModified = json['_last_modified'];
    code = json['code'];
    start = json['start'];
    startMs = json['start_ms'];
    end = json['end'];
    endMs = json['end_ms'];
    description = json['description'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    elevation = json['elevation'];
    place = json['place'];
    country = json['country'];
    affiliation = json['affiliation'];
    type = json['type'];
    archive = json['archive'];
    archiveNetworkCode = json['archiveNetworkCode'];
    restricted = json['restricted'];
    shared = json['shared'];
    remarkContent = json['remark_content'];
    remarkUsed = json['remark_used'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_oid'] = this.sOid;
    data['_parent_oid'] = this.sParentOid;
    data['_last_modified'] = this.sLastModified;
    data['code'] = this.code;
    data['start'] = this.start;
    data['start_ms'] = this.startMs;
    data['end'] = this.end;
    data['end_ms'] = this.endMs;
    data['description'] = this.description;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['elevation'] = this.elevation;
    data['place'] = this.place;
    data['country'] = this.country;
    data['affiliation'] = this.affiliation;
    data['type'] = this.type;
    data['archive'] = this.archive;
    data['archiveNetworkCode'] = this.archiveNetworkCode;
    data['restricted'] = this.restricted;
    data['shared'] = this.shared;
    data['remark_content'] = this.remarkContent;
    data['remark_used'] = this.remarkUsed;
    return data;
  }
}
