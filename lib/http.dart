import 'dart:io';

import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class httpClient {
  final Dio _apiClient = _getDio(baseUrl: null);
  static Dio _getDio({String? baseUrl}) {
    return Dio(BaseOptions(
      baseUrl: baseUrl ?? '',
      connectTimeout: 30000,
      contentType: Headers.jsonContentType,
    ));
  }

  Future<Object?> download(String uri, String fileName) async {
    try {
      final dir = await getExternalStorageDirectory();
      final isPermissionStatusGranted = await _requestPermissions();
      if (isPermissionStatusGranted) {
        bool isExists = await File(dir!.path + '/$fileName').exists();
        if (isExists) {
          var result = await OpenFile.open(dir.path + '/$fileName');
        } else {
          final response = await _apiClient.download(
              uri, dir.path + '/$fileName', onReceiveProgress: (rec, total) {
            print((rec / total) * 100);
          });
          await OpenFile.open(dir.path + '/$fileName');
        }
      }
    } catch (e) {
      return e;
    }
  }

  Future<bool> _requestPermissions() async {
    var permission = await Permission.storage.request();
    if (permission.isGranted) {
      return true;
    } else {
      return false;
    }
  }
}
