import 'package:flutter/foundation.dart';

class SourceModel extends SourceData {
  SourceModel({required super.sourceId, required super.sourceName});
  Factory SourceModel.fromJason (Map <String,dynamic> json){
return SourceModel(sourceId: ['sourceId'], sourceName:['sourceName']);
  }
}