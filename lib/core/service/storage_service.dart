import 'dart:developer';

import 'package:nectar/core/supabase.dart';

class StorageService {
  String getImage(String path) {
    final String publicUrl = supabase.storage.from('images').getPublicUrl(path);
    log("this is from storageService" + publicUrl);
    return publicUrl;
  }
}
 