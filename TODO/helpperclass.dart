import 'package:sqflite/sqflite.dart'as sql;

class toduHelper {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""
    CREATE TABLE todo(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    title TEXT
    task TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    ),
    """);
  }

  static Future<sql.Database>db()async{
    return sql.openDatabase(
        'dataone.db',
        version:1,
        onCreate: (sql.Database database,int version)async{
          await createTable(database);
        }
    );
  }

  static Future<int> addTask(String title, String task) async{
    final db = await toduHelper.db();
    final data = {'title':title,'task':task};
    final id  =await db.insert('todo', data);
    return id;
  }
}
