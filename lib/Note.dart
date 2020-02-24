class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  //creating a note it gets an auto id
  Note(this._title, this._date, this._priority, [this._description]);

  //when we want to edit we need an id, so this is for edditing
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

// all the getters
  int get id => _id;
  String get title => title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  //all the setters
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  //used to save and retrive from db

  //convert note object to map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
