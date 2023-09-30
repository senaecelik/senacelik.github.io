import 'package:senaecelik/data/model/base_result_model.dart';
import 'package:senaecelik/data/model/reflector.dart';

@reflector
class UserModel extends BaseResultModel {
  String name;
  String surname;
  String image;
  String adress;
  String resumeLink;
  String email;
  List<String> jobList;
  SocialLink socialLink;
  About about;
  List<Project> project;

  UserModel({
    required this.name,
    required this.surname,
    required this.image,
    required this.adress,
    required this.email,
    required this.resumeLink,
    required this.jobList,
    required this.socialLink,
    required this.about,
    required this.project,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        surname: json["surname"],
        image: json["image"],
        jobList: List<String>.from(json["job_list"].map((x) => x)),
        socialLink: SocialLink.fromJson(json["socialLink"]),
        about: About.fromJson(json["about"]),
        project:
            List<Project>.from(json["project"].map((x) => Project.fromJson(x))),
        email: json["email"],
        adress: json["adress"],
        resumeLink: json["resumeLink"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "image": image,
        "job_list": List<dynamic>.from(jobList.map((x) => x)),
        "socialLink": socialLink.toJson(),
        "about": about.toJson(),
        "project": List<dynamic>.from(project.map((x) => x.toJson())),
        "email": email,
        "resumeLink": resumeLink,
        "adress": adress
      };
}

class About {
  String title;
  String description;

  About({
    required this.title,
    required this.description,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}

class Project {
  String title;
  String description;
  String image;
  String link;

  Project({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
      title: json["title"],
      description: json["description"],
      image: json["image"],
      link: json["link"]);

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "link": link
      };
}

class SocialLink {
  String instagram;
  String linkedin;
  String github;
  String medium;

  SocialLink({
    required this.instagram,
    required this.linkedin,
    required this.github,
    required this.medium,
  });

  factory SocialLink.fromJson(Map<String, dynamic> json) => SocialLink(
        instagram: json["instagram"],
        linkedin: json["linkedin"],
        github: json["github"],
        medium: json["medium"],
      );

  Map<String, dynamic> toJson() => {
        "instagram": instagram,
        "linkedin": linkedin,
        "github": github,
        "medium": medium,
      };
}
