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
}
