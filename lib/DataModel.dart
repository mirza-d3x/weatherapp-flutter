/// location : {"name":"Thrissur","region":"Kerala","country":"India","lat":10.52,"lon":76.22,"tz_id":"Asia/Kolkata","localtime_epoch":1649220351,"localtime":"2022-04-06 10:15"}
/// current : {"last_updated_epoch":1649219400,"last_updated":"2022-04-06 10:00","temp_c":29.9,"temp_f":85.8,"is_day":1,"condition":{"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":193,"wind_dir":"SSW","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.1,"precip_in":0.0,"humidity":65,"cloud":74,"feelslike_c":33.9,"feelslike_f":93.0,"vis_km":10.0,"vis_miles":6.0,"uv":6.0,"gust_mph":2.2,"gust_kph":3.6}

class DataModel {
  DataModel({
      Location? location, 
      Current? current,}){
    _location = location;
    _current = current;
}

  DataModel.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _current = json['current'] != null ? Current.fromJson(json['current']) : null;
  }
  Location? _location;
  Current? _current;
DataModel copyWith({  Location? location,
  Current? current,
}) => DataModel(  location: location ?? _location,
  current: current ?? _current,
);
  Location? get location => _location;
  Current? get current => _current;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    return map;
  }

}

/// last_updated_epoch : 1649219400
/// last_updated : "2022-04-06 10:00"
/// temp_c : 29.9
/// temp_f : 85.8
/// is_day : 1
/// condition : {"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063}
/// wind_mph : 1.8
/// wind_kph : 2.9
/// wind_degree : 193
/// wind_dir : "SSW"
/// pressure_mb : 1015.0
/// pressure_in : 29.98
/// precip_mm : 0.1
/// precip_in : 0.0
/// humidity : 65
/// cloud : 74
/// feelslike_c : 33.9
/// feelslike_f : 93.0
/// vis_km : 10.0
/// vis_miles : 6.0
/// uv : 6.0
/// gust_mph : 2.2
/// gust_kph : 3.6

class Current {
  Current({
      int? lastUpdatedEpoch, 
      String? lastUpdated, 
      double? tempC, 
      double? tempF, 
      int? isDay, 
      Condition? condition, 
      double? windMph, 
      double? windKph, 
      int? windDegree, 
      String? windDir, 
      double? pressureMb, 
      double? pressureIn, 
      double? precipMm, 
      double? precipIn, 
      int? humidity, 
      int? cloud, 
      double? feelslikeC, 
      double? feelslikeF, 
      double? visKm, 
      double? visMiles, 
      double? uv, 
      double? gustMph, 
      double? gustKph,}){
    _lastUpdatedEpoch = lastUpdatedEpoch;
    _lastUpdated = lastUpdated;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _visKm = visKm;
    _visMiles = visMiles;
    _uv = uv;
    _gustMph = gustMph;
    _gustKph = gustKph;
}

  Current.fromJson(dynamic json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
  }
  int? _lastUpdatedEpoch;
  String? _lastUpdated;
  double? _tempC;
  double? _tempF;
  int? _isDay;
  Condition? _condition;
  double? _windMph;
  double? _windKph;
  int? _windDegree;
  String? _windDir;
  double? _pressureMb;
  double? _pressureIn;
  double? _precipMm;
  double? _precipIn;
  int? _humidity;
  int? _cloud;
  double? _feelslikeC;
  double? _feelslikeF;
  double? _visKm;
  double? _visMiles;
  double? _uv;
  double? _gustMph;
  double? _gustKph;
Current copyWith({  int? lastUpdatedEpoch,
  String? lastUpdated,
  double? tempC,
  double? tempF,
  int? isDay,
  Condition? condition,
  double? windMph,
  double? windKph,
  int? windDegree,
  String? windDir,
  double? pressureMb,
  double? pressureIn,
  double? precipMm,
  double? precipIn,
  int? humidity,
  int? cloud,
  double? feelslikeC,
  double? feelslikeF,
  double? visKm,
  double? visMiles,
  double? uv,
  double? gustMph,
  double? gustKph,
}) => Current(  lastUpdatedEpoch: lastUpdatedEpoch ?? _lastUpdatedEpoch,
  lastUpdated: lastUpdated ?? _lastUpdated,
  tempC: tempC ?? _tempC,
  tempF: tempF ?? _tempF,
  isDay: isDay ?? _isDay,
  condition: condition ?? _condition,
  windMph: windMph ?? _windMph,
  windKph: windKph ?? _windKph,
  windDegree: windDegree ?? _windDegree,
  windDir: windDir ?? _windDir,
  pressureMb: pressureMb ?? _pressureMb,
  pressureIn: pressureIn ?? _pressureIn,
  precipMm: precipMm ?? _precipMm,
  precipIn: precipIn ?? _precipIn,
  humidity: humidity ?? _humidity,
  cloud: cloud ?? _cloud,
  feelslikeC: feelslikeC ?? _feelslikeC,
  feelslikeF: feelslikeF ?? _feelslikeF,
  visKm: visKm ?? _visKm,
  visMiles: visMiles ?? _visMiles,
  uv: uv ?? _uv,
  gustMph: gustMph ?? _gustMph,
  gustKph: gustKph ?? _gustKph,
);
  int? get lastUpdatedEpoch => _lastUpdatedEpoch;
  String? get lastUpdated => _lastUpdated;
  double? get tempC => _tempC;
  double? get tempF => _tempF;
  int? get isDay => _isDay;
  Condition? get condition => _condition;
  double? get windMph => _windMph;
  double? get windKph => _windKph;
  int? get windDegree => _windDegree;
  String? get windDir => _windDir;
  double? get pressureMb => _pressureMb;
  double? get pressureIn => _pressureIn;
  double? get precipMm => _precipMm;
  double? get precipIn => _precipIn;
  int? get humidity => _humidity;
  int? get cloud => _cloud;
  double? get feelslikeC => _feelslikeC;
  double? get feelslikeF => _feelslikeF;
  double? get visKm => _visKm;
  double? get visMiles => _visMiles;
  double? get uv => _uv;
  double? get gustMph => _gustMph;
  double? get gustKph => _gustKph;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = _lastUpdatedEpoch;
    map['last_updated'] = _lastUpdated;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['uv'] = _uv;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    return map;
  }

}

/// text : "Patchy rain possible"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/176.png"
/// code : 1063

class Condition {
  Condition({
      String? text, 
      String? icon, 
      int? code,}){
    _text = text;
    _icon = icon;
    _code = code;
}

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }
  String? _text;
  String? _icon;
  int? _code;
Condition copyWith({  String? text,
  String? icon,
  int? code,
}) => Condition(  text: text ?? _text,
  icon: icon ?? _icon,
  code: code ?? _code,
);
  String? get text => _text;
  String? get icon => _icon;
  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }

}

/// name : "Thrissur"
/// region : "Kerala"
/// country : "India"
/// lat : 10.52
/// lon : 76.22
/// tz_id : "Asia/Kolkata"
/// localtime_epoch : 1649220351
/// localtime : "2022-04-06 10:15"

class Location {
  Location({
      String? name, 
      String? region, 
      String? country, 
      double? lat, 
      double? lon, 
      String? tzId, 
      int? localtimeEpoch, 
      String? localtime,}){
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }
  String? _name;
  String? _region;
  String? _country;
  double? _lat;
  double? _lon;
  String? _tzId;
  int? _localtimeEpoch;
  String? _localtime;
Location copyWith({  String? name,
  String? region,
  String? country,
  double? lat,
  double? lon,
  String? tzId,
  int? localtimeEpoch,
  String? localtime,
}) => Location(  name: name ?? _name,
  region: region ?? _region,
  country: country ?? _country,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  tzId: tzId ?? _tzId,
  localtimeEpoch: localtimeEpoch ?? _localtimeEpoch,
  localtime: localtime ?? _localtime,
);
  String? get name => _name;
  String? get region => _region;
  String? get country => _country;
  double? get lat => _lat;
  double? get lon => _lon;
  String? get tzId => _tzId;
  int? get localtimeEpoch => _localtimeEpoch;
  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }

}