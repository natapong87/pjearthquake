class DataModel {
  String? sOid;
  String? sParentOid;
  String? sLastModified;
  String? type;
  String? amplitudeValue;
  String? amplitudeUncertainty;
  String? amplitudeLowerUncertainty;
  String? amplitudeUpperUncertainty;
  String? amplitudeConfidenceLevel;
  String? amplitudePdfVariableContent;
  String? amplitudePdfProbabilityContent;
  String? amplitudePdfUsed;
  String? amplitudeUsed;
  String? timeWindowReference;
  String? timeWindowReferenceMs;
  String? timeWindowBegin;
  String? timeWindowEnd;
  String? timeWindowUsed;
  String? periodValue;
  String? periodUncertainty;
  String? periodLowerUncertainty;
  String? periodUpperUncertainty;
  String? periodConfidenceLevel;
  String? periodPdfVariableContent;
  String? periodPdfProbabilityContent;
  String? periodPdfUsed;
  String? periodUsed;
  String? snr;
  String? unit;
  String? pickID;
  String? waveformIDNetworkCode;
  String? waveformIDStationCode;
  String? waveformIDLocationCode;
  String? waveformIDChannelCode;
  String? waveformIDResourceURI;
  String? waveformIDUsed;
  String? filterID;
  String? methodID;
  String? scalingTimeValue;
  String? scalingTimeValueMs;
  String? scalingTimeUncertainty;
  String? scalingTimeLowerUncertainty;
  String? scalingTimeUpperUncertainty;
  String? scalingTimeConfidenceLevel;
  String? scalingTimePdfVariableContent;
  String? scalingTimePdfProbabilityContent;
  String? scalingTimePdfUsed;
  String? scalingTimeUsed;
  String? magnitudeHint;
  String? evaluationMode;
  String? creationInfoAgencyID;
  String? creationInfoAgencyURI;
  String? creationInfoAuthor;
  String? creationInfoAuthorURI;
  String? creationInfoCreationTime;
  String? creationInfoCreationTimeMs;
  String? creationInfoModificationTime;
  String? creationInfoModificationTimeMs;
  String? creationInfoVersion;
  String? creationInfoUsed;

  DataModel(
      {this.sOid,
      this.sParentOid,
      this.sLastModified,
      this.type,
      this.amplitudeValue,
      this.amplitudeUncertainty,
      this.amplitudeLowerUncertainty,
      this.amplitudeUpperUncertainty,
      this.amplitudeConfidenceLevel,
      this.amplitudePdfVariableContent,
      this.amplitudePdfProbabilityContent,
      this.amplitudePdfUsed,
      this.amplitudeUsed,
      this.timeWindowReference,
      this.timeWindowReferenceMs,
      this.timeWindowBegin,
      this.timeWindowEnd,
      this.timeWindowUsed,
      this.periodValue,
      this.periodUncertainty,
      this.periodLowerUncertainty,
      this.periodUpperUncertainty,
      this.periodConfidenceLevel,
      this.periodPdfVariableContent,
      this.periodPdfProbabilityContent,
      this.periodPdfUsed,
      this.periodUsed,
      this.snr,
      this.unit,
      this.pickID,
      this.waveformIDNetworkCode,
      this.waveformIDStationCode,
      this.waveformIDLocationCode,
      this.waveformIDChannelCode,
      this.waveformIDResourceURI,
      this.waveformIDUsed,
      this.filterID,
      this.methodID,
      this.scalingTimeValue,
      this.scalingTimeValueMs,
      this.scalingTimeUncertainty,
      this.scalingTimeLowerUncertainty,
      this.scalingTimeUpperUncertainty,
      this.scalingTimeConfidenceLevel,
      this.scalingTimePdfVariableContent,
      this.scalingTimePdfProbabilityContent,
      this.scalingTimePdfUsed,
      this.scalingTimeUsed,
      this.magnitudeHint,
      this.evaluationMode,
      this.creationInfoAgencyID,
      this.creationInfoAgencyURI,
      this.creationInfoAuthor,
      this.creationInfoAuthorURI,
      this.creationInfoCreationTime,
      this.creationInfoCreationTimeMs,
      this.creationInfoModificationTime,
      this.creationInfoModificationTimeMs,
      this.creationInfoVersion,
      this.creationInfoUsed});

  DataModel.fromJson(Map<String, dynamic> json) {
    sOid = json['_oid'];
    sParentOid = json['_parent_oid'];
    sLastModified = json['_last_modified'];
    type = json['type'];
    amplitudeValue = json['amplitude_value'];
    amplitudeUncertainty = json['amplitude_uncertainty'];
    amplitudeLowerUncertainty = json['amplitude_lowerUncertainty'];
    amplitudeUpperUncertainty = json['amplitude_upperUncertainty'];
    amplitudeConfidenceLevel = json['amplitude_confidenceLevel'];
    amplitudePdfVariableContent = json['amplitude_pdf_variable_content'];
    amplitudePdfProbabilityContent = json['amplitude_pdf_probability_content'];
    amplitudePdfUsed = json['amplitude_pdf_used'];
    amplitudeUsed = json['amplitude_used'];
    timeWindowReference = json['timeWindow_reference'];
    timeWindowReferenceMs = json['timeWindow_reference_ms'];
    timeWindowBegin = json['timeWindow_begin'];
    timeWindowEnd = json['timeWindow_end'];
    timeWindowUsed = json['timeWindow_used'];
    periodValue = json['period_value'];
    periodUncertainty = json['period_uncertainty'];
    periodLowerUncertainty = json['period_lowerUncertainty'];
    periodUpperUncertainty = json['period_upperUncertainty'];
    periodConfidenceLevel = json['period_confidenceLevel'];
    periodPdfVariableContent = json['period_pdf_variable_content'];
    periodPdfProbabilityContent = json['period_pdf_probability_content'];
    periodPdfUsed = json['period_pdf_used'];
    periodUsed = json['period_used'];
    snr = json['snr'];
    unit = json['unit'];
    pickID = json['pickID'];
    waveformIDNetworkCode = json['waveformID_networkCode'];
    waveformIDStationCode = json['waveformID_stationCode'];
    waveformIDLocationCode = json['waveformID_locationCode'];
    waveformIDChannelCode = json['waveformID_channelCode'];
    waveformIDResourceURI = json['waveformID_resourceURI'];
    waveformIDUsed = json['waveformID_used'];
    filterID = json['filterID'];
    methodID = json['methodID'];
    scalingTimeValue = json['scalingTime_value'];
    scalingTimeValueMs = json['scalingTime_value_ms'];
    scalingTimeUncertainty = json['scalingTime_uncertainty'];
    scalingTimeLowerUncertainty = json['scalingTime_lowerUncertainty'];
    scalingTimeUpperUncertainty = json['scalingTime_upperUncertainty'];
    scalingTimeConfidenceLevel = json['scalingTime_confidenceLevel'];
    scalingTimePdfVariableContent = json['scalingTime_pdf_variable_content'];
    scalingTimePdfProbabilityContent =
        json['scalingTime_pdf_probability_content'];
    scalingTimePdfUsed = json['scalingTime_pdf_used'];
    scalingTimeUsed = json['scalingTime_used'];
    magnitudeHint = json['magnitudeHint'];
    evaluationMode = json['evaluationMode'];
    creationInfoAgencyID = json['creationInfo_agencyID'];
    creationInfoAgencyURI = json['creationInfo_agencyURI'];
    creationInfoAuthor = json['creationInfo_author'];
    creationInfoAuthorURI = json['creationInfo_authorURI'];
    creationInfoCreationTime = json['creationInfo_creationTime'];
    creationInfoCreationTimeMs = json['creationInfo_creationTime_ms'];
    creationInfoModificationTime = json['creationInfo_modificationTime'];
    creationInfoModificationTimeMs = json['creationInfo_modificationTime_ms'];
    creationInfoVersion = json['creationInfo_version'];
    creationInfoUsed = json['creationInfo_used'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_oid'] = this.sOid;
    data['_parent_oid'] = this.sParentOid;
    data['_last_modified'] = this.sLastModified;
    data['type'] = this.type;
    data['amplitude_value'] = this.amplitudeValue;
    data['amplitude_uncertainty'] = this.amplitudeUncertainty;
    data['amplitude_lowerUncertainty'] = this.amplitudeLowerUncertainty;
    data['amplitude_upperUncertainty'] = this.amplitudeUpperUncertainty;
    data['amplitude_confidenceLevel'] = this.amplitudeConfidenceLevel;
    data['amplitude_pdf_variable_content'] = this.amplitudePdfVariableContent;
    data['amplitude_pdf_probability_content'] =
        this.amplitudePdfProbabilityContent;
    data['amplitude_pdf_used'] = this.amplitudePdfUsed;
    data['amplitude_used'] = this.amplitudeUsed;
    data['timeWindow_reference'] = this.timeWindowReference;
    data['timeWindow_reference_ms'] = this.timeWindowReferenceMs;
    data['timeWindow_begin'] = this.timeWindowBegin;
    data['timeWindow_end'] = this.timeWindowEnd;
    data['timeWindow_used'] = this.timeWindowUsed;
    data['period_value'] = this.periodValue;
    data['period_uncertainty'] = this.periodUncertainty;
    data['period_lowerUncertainty'] = this.periodLowerUncertainty;
    data['period_upperUncertainty'] = this.periodUpperUncertainty;
    data['period_confidenceLevel'] = this.periodConfidenceLevel;
    data['period_pdf_variable_content'] = this.periodPdfVariableContent;
    data['period_pdf_probability_content'] = this.periodPdfProbabilityContent;
    data['period_pdf_used'] = this.periodPdfUsed;
    data['period_used'] = this.periodUsed;
    data['snr'] = this.snr;
    data['unit'] = this.unit;
    data['pickID'] = this.pickID;
    data['waveformID_networkCode'] = this.waveformIDNetworkCode;
    data['waveformID_stationCode'] = this.waveformIDStationCode;
    data['waveformID_locationCode'] = this.waveformIDLocationCode;
    data['waveformID_channelCode'] = this.waveformIDChannelCode;
    data['waveformID_resourceURI'] = this.waveformIDResourceURI;
    data['waveformID_used'] = this.waveformIDUsed;
    data['filterID'] = this.filterID;
    data['methodID'] = this.methodID;
    data['scalingTime_value'] = this.scalingTimeValue;
    data['scalingTime_value_ms'] = this.scalingTimeValueMs;
    data['scalingTime_uncertainty'] = this.scalingTimeUncertainty;
    data['scalingTime_lowerUncertainty'] = this.scalingTimeLowerUncertainty;
    data['scalingTime_upperUncertainty'] = this.scalingTimeUpperUncertainty;
    data['scalingTime_confidenceLevel'] = this.scalingTimeConfidenceLevel;
    data['scalingTime_pdf_variable_content'] =
        this.scalingTimePdfVariableContent;
    data['scalingTime_pdf_probability_content'] =
        this.scalingTimePdfProbabilityContent;
    data['scalingTime_pdf_used'] = this.scalingTimePdfUsed;
    data['scalingTime_used'] = this.scalingTimeUsed;
    data['magnitudeHint'] = this.magnitudeHint;
    data['evaluationMode'] = this.evaluationMode;
    data['creationInfo_agencyID'] = this.creationInfoAgencyID;
    data['creationInfo_agencyURI'] = this.creationInfoAgencyURI;
    data['creationInfo_author'] = this.creationInfoAuthor;
    data['creationInfo_authorURI'] = this.creationInfoAuthorURI;
    data['creationInfo_creationTime'] = this.creationInfoCreationTime;
    data['creationInfo_creationTime_ms'] = this.creationInfoCreationTimeMs;
    data['creationInfo_modificationTime'] = this.creationInfoModificationTime;
    data['creationInfo_modificationTime_ms'] =
        this.creationInfoModificationTimeMs;
    data['creationInfo_version'] = this.creationInfoVersion;
    data['creationInfo_used'] = this.creationInfoUsed;
    return data;
  }
}
