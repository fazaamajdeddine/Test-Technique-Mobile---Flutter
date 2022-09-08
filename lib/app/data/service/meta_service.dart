import 'package:testtechniquemobileflutter/app/data/models/meta.dart';

class MetaService {
  Future<Meta> getAllMeta() async {
    await Future.delayed(const Duration(seconds: 3));

    Meta(
        currentPage: 1,
        from: 1,
        lastPage: 10,
        path: "https://api.goodjobapp.ca/api/v2/worker/shifts",
        perPage: 10,
        to: 10,
        total: 92);

    return Meta();
  }
}
