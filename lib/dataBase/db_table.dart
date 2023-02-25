class DBTable {
  // ignore: constant_identifier_names
  static const income = "income";
  static const category = "category";
  static const table = [
    '''CREATE TABLE IF NOT EXISTS income
        (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        type TEXT,
        enterCode TEXT
        )''',
    '''CREATE TABLE IF NOT EXISTS category
        (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        color TEXT,
        comision DOUBLE,
        FOREING KEY(incomeId) REFERENCES income (id)
        )''',
  ];
}
