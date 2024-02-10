import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/exception/failures.dart';

@lazySingleton
class DownloaderCV {
  Future<Either<Failures, void>> saveAndOpenFile(String path) async {
    // if (await Permission.storage.request().isGranted) {
    //   try {
    //     final myFile = File(path);
    //     Directory? directory;
    //     if (Platform.isIOS) {
    //       directory = await getApplicationDocumentsDirectory();
    //     } else {
    //       directory = await getDownloadsDirectory();
    //     }
    //     final savedFile = await FileSaver.instance.saveAs(
    //       name: 'cv',
    //       bytes: myFile.readAsBytesSync(),
    //       file: myFile,
    //       filePath: myFile.path,
    //       ext: '${directory!.path}cv.pdf',
    //       mimeType: MimeType.pdf,
    //     );
    //     debugPrint('savedFile: $savedFile');
    //     if (savedFile == null) {
    //       return Left(OpenPDFFailure());
    //     } else {
    //       OpenFilex.open(savedFile);
    //       return const Right(null);
    //     }
    //   } catch (e) {
    //     return Left(OpenPDFFailure());
    //   }
    // } else {
    //   return Left(OpenPDFFailure());
    // }
    return Left(OpenPDFFailure());
  }
}
