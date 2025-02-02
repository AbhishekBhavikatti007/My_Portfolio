// ignore_for_file: public_member_api_docs, sort_constructors_first

class PractiProjectData {
  String? ProjectName;
  String? TechStacFlutter;
  String? Libariest;
  PractiProjectData({
     this.ProjectName,
     this.TechStacFlutter,
     this.Libariest,
  });
}

List<PractiProjectData> ProjectDetails = [
  PractiProjectData(
      ProjectName: 'Weather App',
      TechStacFlutter: 'Flutter',
      Libariest: 'Equtable, flutter_dotenv, flutter_bloc, http'),
  PractiProjectData(
      ProjectName: 'To Do App',
      TechStacFlutter: 'Flutter',
      Libariest: 'Equatable, flutter_bloc, uuid'),
  PractiProjectData(
      ProjectName: 'FireBase Login App',
      TechStacFlutter: 'Flutter, Firebase',
      Libariest:
          'firebase_core, firebase_auth, cloud_fireStore, Equatable, flutter_bloc'),
  PractiProjectData(
      ProjectName: 'Expense Tracker',
      TechStacFlutter: 'Flutter',
      Libariest: 'uuid, intl'),
  PractiProjectData(
      ProjectName: 'Favorite Places',
      TechStacFlutter: 'Flutter',
      Libariest:
          'uuid, image_picker, path_provider, path, loaction,flutter_provider google_maps_flutter,sqflite'),
  PractiProjectData(
      ProjectName: 'Quiz App',
      TechStacFlutter: "Flutter",
      Libariest: ''),
  PractiProjectData(
      ProjectName: 'Game Store',
      TechStacFlutter: "Flutter",
      Libariest: ''),      
];
