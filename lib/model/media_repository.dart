

import 'package:mvvm_architekture/model/media.dart';
import 'package:mvvm_architekture/model/service/base_service.dart';
import 'package:mvvm_architekture/model/service/media_service.dart';

class MediaRepository {
  final BaseService _mediaService = MediaService();

  Future<List<Media>> fetchMediaList(String value) async {
    dynamic response = await _mediaService.getResponse(value);
    final jsonData = response['results'] as List;
    List<Media> mediaList =
        jsonData.map((tagJson) => Media.fromJson(tagJson)).toList();
    return mediaList;
  }
}
