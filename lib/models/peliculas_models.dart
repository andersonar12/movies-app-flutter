class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    // ignore: unnecessary_null_comparison
    /*  if (jsonList == null) return; */

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Response {
  Dates dates;
  int page;
  List<Pelicula> results;
  int totalPages;
  int totalResults;

  Response({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
}

class Dates {
  String maximum;
  String minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });
}

class Pelicula {
  late String uniqueId;
  late bool adult;
  late String backdropPath;
  late List<int> genreIds;
  late int id;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late double popularity;
  late String posterPath;
  late String releaseDate;
  late String title;
  late bool video;
  late double voteAverage;
  late int voteCount;

  Pelicula({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'] / 1;
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    voteCount = json['vote_count'];
  }

  getPosterImg() {
    /*  if (posterPath == null) {
      return 'https://www.freeiconspng.com/thumbs/no-image-icon/no-image-icon-6.png';
    } */
    return 'https://image.tmdb.org/t/p/w500/$posterPath';
  }

  getbackgroundImg() {
    return 'https://image.tmdb.org/t/p/w500/$backdropPath';
  }
}
