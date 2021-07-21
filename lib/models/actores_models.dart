class Cast {
  List<Actor> actores = [];

  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }
}

class Actor {
  late bool adult;
  late int gender;
  late int id;
  late String name;
  late String originalName;
  late double popularity;
  late String profilePath;
  late int castId;
  late String character;
  late String creditId;
  late int order;
  late String job;

  Actor({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.castId,
    required this.character,
    required this.creditId,
    required this.order,
    required this.job,
  });

  Actor.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    order = json['order'];
    job = json['job'];
  }

  getFoto() {
    if (profilePath == null) {
      return 'https://lh3.googleusercontent.com/proxy/lRgKUayA-NzYrgXSXbUJdy72I-PX4NrGXDbLZHIzPCxdRbuyoG5MUK3fLclqxjK2tcfoGqnb0sGYGd6RA_WylzmECN-9_VSvwVhpU_wrdsue9ZHQNXY-LXIRvnHO_-w';
    }
    return 'https://image.tmdb.org/t/p/w500/$profilePath';
  }
}
