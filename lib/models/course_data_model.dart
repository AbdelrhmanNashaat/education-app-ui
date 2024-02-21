import '../assets.dart';

class CourseDataModel {
  final String title;
  final String numberOfVideos;
  final String imagePath;
  final String url;
  CourseDataModel({
    required this.url,
    required this.title,
    required this.numberOfVideos,
    required this.imagePath,
  });
  static final List<CourseDataModel> courses = [
    CourseDataModel(
      title: 'Flutter',
      numberOfVideos: '69 Videos',
      imagePath: Assets.flutterImage,
      url:
          'https://www.youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9',
    ),
    CourseDataModel(
        title: 'React Native',
        numberOfVideos: '82 Videos',
        imagePath: Assets.reactNativeImage,
        url:
            'https://www.youtube.com/playlist?list=PLC3y8-rFHvwhiQJD1di4eRVN30WWCXkg1'),
    CourseDataModel(
        title: 'Python',
        numberOfVideos: '50 Videos',
        imagePath: Assets.pythonImage,
        url:
            'https://www.youtube.com/playlist?list=PLuXY3ddo_8nzrO74UeZQVZOb5-wIS6krJ'),
    CourseDataModel(
        title: 'C#',
        numberOfVideos: '22 Videos',
        imagePath: Assets.cImage,
        url:
            'https://www.youtube.com/playlist?list=PL82C6-O4XrHfoN_Y4MwGvJz5BntiL0z0D'),
  ];
}
