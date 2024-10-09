import 'account.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AccountCRUD{
  static const accountDBName = 'accountdb.db', accountTableName = 'accounts';
  static Database? _database;
  Future<Database> get database async => _database ??= await _openDb();
  static final AccountCRUD _accountCRUD = AccountCRUD._privConstructor();
  factory AccountCRUD() => _accountCRUD;
  AccountCRUD._privConstructor();

  static Future<Database> _openDb() async{
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, accountTableName);
    var db = await openDatabase(
        path,
        version:1,
        onCreate: (Database db, int version) async{
          db.execute(
            'CREATE TABLE $accountTableName(num TEXT PRIMARY KEY, ${Account.id} TEXT, ${Account.password} TEXT,'
                '${Account.name} TEXT, ${Account.phone} TEXT, ${Account.mail} TEXT, ${Account.address},'
                '${Account.birth} TEXT, ${Account.order} INTEGER, ${Account.resID} INTEGER)'
          );
        }
    );

    return db;
  }

  closeDb() async{
    final db = await database;
    await db.close();
  }

  insertAccount(Account account) async{
    final db = await database;
    await db.insert(accountTableName, account.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<String> queryAccount(String id) async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query(
      accountTableName,
      columns: [Account.password], // 仅请求password字段
      where: '${Account.id} = ?',
      whereArgs: [id],
    );

    // 假设id是唯一的，因此只会有一个匹配的账户
    if (results.isNotEmpty) {
      // 直接返回密码，这里假设密码字段在数据库中是以文本形式存储
      return results.first[Account.password];
    } else {
      // 如果没有找到匹配的账户，返回一个空字符串或其他适当的默认值
      return '';
    }
  }


  deleteAccount(String id) async{
    final db = await database;
    await db.delete(
      id,
      where: '${Account.id}',
      whereArgs: [id],
    );
  }

  Future<List<Account>> allAccounts() async{
    final db = await database;
    final List<Map<String,dynamic>>? mapAccounts = await db.query(accountTableName);
    return mapAccountsToList(mapAccounts);
  }

  List<Account> mapAccountsToList(List<Map<String,dynamic>>? mapAccount){
    var accounts = List.generate(
        mapAccount?.length ?? 0,
        (i)=>
            Account(
              mapAccount?[i][Account.id],
              mapAccount?[i][Account.password],
              mapAccount?[i][Account.name],
              mapAccount?[i][Account.phone],
              mapAccount?[i][Account.mail],
              mapAccount?[i][Account.address],
              mapAccount?[i][Account.birth],
              mapAccount?[i][Account.order],
              mapAccount?[i][Account.resID],
            )
    );
    return accounts;
  }
}