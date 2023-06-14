class Anime {
  int? malId;
  String? url;
  ImagesWithType? images;
  Trailer? trailer;
  bool? approved;
  List<Titles>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  double? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<AnimeInformation>? producers;
  List<AnimeInformation>? licensors;
  List<AnimeInformation>? studios;
  List<AnimeInformation>? genres;
  List<AnimeInformation>? explicitGenres;
  List<AnimeInformation>? themes;
  List<AnimeInformation>? demographics;

  Anime(
      {this.malId,
      this.url,
      this.images,
      this.trailer,
      this.approved,
      this.titles,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      this.broadcast,
      this.producers,
      this.licensors,
      this.studios,
      this.genres,
      this.explicitGenres,
      this.themes,
      this.demographics});

  Anime.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    images =
        json['images'] != null ? ImagesWithType.fromJson(json['images']) : null;
    trailer =
        json['trailer'] != null ? Trailer.fromJson(json['trailer']) : null;
    approved = json['approved'];
    if (json['titles'] != null) {
      titles = <Titles>[];
      json['titles'].forEach((v) {
        titles!.add(Titles.fromJson(v));
      });
    }
    title = json['title'];
    titleEnglish = json['title_english'];
    titleJapanese = json['title_japanese'];
    if (json['title_synonyms'] != null) {
      titleSynonyms = <String>[];
      json['title_synonyms'].forEach((v) {
        titleSynonyms!.add(v);
      });
    }
    type = json['type'];
    source = json['source'];
    episodes = json['episodes'];
    status = json['status'];
    airing = json['airing'];
    aired = json['aired'] != null ? Aired.fromJson(json['aired']) : null;
    duration = json['duration'];
    rating = json['rating'];
    // score = json['score'] != null ? ;
    scoredBy = json['scored_by']?.toDouble();
    rank = json['rank'];
    popularity = json['popularity'];
    members = json['members'];
    favorites = json['favorites'];
    synopsis = json['synopsis'];
    background = json['background'];
    season = json['season'];
    year = json['year'];
    broadcast = json['broadcast'] != null
        ? Broadcast.fromJson(json['broadcast'])
        : null;
    if (json['producers'] != null) {
      producers = <AnimeInformation>[];
      json['producers'].forEach((v) {
        producers!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['licensors'] != null) {
      licensors = <AnimeInformation>[];
      json['licensors'].forEach((v) {
        licensors!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['studios'] != null) {
      studios = <AnimeInformation>[];
      json['studios'].forEach((v) {
        studios!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <AnimeInformation>[];
      json['genres'].forEach((v) {
        genres!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['explicit_genres'] != null) {
      explicitGenres = <AnimeInformation>[];
      json['explicit_genres'].forEach((v) {
        explicitGenres!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['themes'] != null) {
      themes = <AnimeInformation>[];
      json['themes'].forEach((v) {
        themes!.add(AnimeInformation.fromJson(v));
      });
    }
    if (json['demographics'] != null) {
      demographics = <AnimeInformation>[];
      json['demographics'].forEach((v) {
        demographics!.add(AnimeInformation.fromJson(v));
      });
    }
  }
}

class ImagesWithType {
  Jpg? jpg;
  Jpg? webp;

  ImagesWithType({this.jpg, this.webp});

  ImagesWithType.fromJson(Map<String, dynamic> json) {
    jpg = json['jpg'] != null ? Jpg.fromJson(json['jpg']) : null;
    webp = json['webp'] != null ? Jpg.fromJson(json['webp']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (jpg != null) {
      data['jpg'] = jpg!.toJson();
    }
    if (webp != null) {
      data['webp'] = webp!.toJson();
    }
    return data;
  }
}

class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Jpg({this.imageUrl, this.smallImageUrl, this.largeImageUrl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    largeImageUrl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['small_image_url'] = smallImageUrl;
    data['large_image_url'] = largeImageUrl;
    return data;
  }
}

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  ImagesUrl? images;

  Trailer({this.youtubeId, this.url, this.embedUrl, this.images});

  Trailer.fromJson(Map<String, dynamic> json) {
    youtubeId = json['youtube_id'];
    url = json['url'];
    embedUrl = json['embed_url'];
    images = json['images'] != null ? ImagesUrl.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['youtube_id'] = youtubeId;
    data['url'] = url;
    data['embed_url'] = embedUrl;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    return data;
  }
}

class ImagesUrl {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  ImagesUrl(
      {this.imageUrl,
      this.smallImageUrl,
      this.mediumImageUrl,
      this.largeImageUrl,
      this.maximumImageUrl});

  ImagesUrl.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    mediumImageUrl = json['medium_image_url'];
    largeImageUrl = json['large_image_url'];
    maximumImageUrl = json['maximum_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['small_image_url'] = smallImageUrl;
    data['medium_image_url'] = mediumImageUrl;
    data['large_image_url'] = largeImageUrl;
    data['maximum_image_url'] = maximumImageUrl;
    return data;
  }
}

class Titles {
  String? type;
  String? title;

  Titles({this.type, this.title});

  Titles.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['title'] = title;
    return data;
  }
}

class Aired {
  String? from;
  String? to;
  Prop? prop;
  String? string;

  Aired({this.from, this.to, this.prop, this.string});

  Aired.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    prop = json['prop'] != null ? Prop.fromJson(json['prop']) : null;
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['from'] = from;
    data['to'] = to;
    if (prop != null) {
      data['prop'] = prop!.toJson();
    }
    data['string'] = string;
    return data;
  }
}

class Prop {
  From? from;
  From? to;

  Prop({this.from, this.to});

  Prop.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? From.fromJson(json['from']) : null;
    to = json['to'] != null ? From.fromJson(json['to']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (from != null) {
      data['from'] = from!.toJson();
    }
    if (to != null) {
      data['to'] = to!.toJson();
    }
    return data;
  }
}

class From {
  int? day;
  int? month;
  int? year;

  From({this.day, this.month, this.year});

  From.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['month'] = month;
    data['year'] = year;
    return data;
  }
}

class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;

  Broadcast({this.day, this.time, this.timezone, this.string});

  Broadcast.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
    timezone = json['timezone'];
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['time'] = time;
    data['timezone'] = timezone;
    data['string'] = string;
    return data;
  }
}

class AnimeInformation {
  int? malId;
  String? type;
  String? name;
  String? url;

  AnimeInformation({this.malId, this.type, this.name, this.url});

  AnimeInformation.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
