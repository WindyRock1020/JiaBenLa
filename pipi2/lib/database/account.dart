class Account{
  static const id = '', password = '', name = '', phone = '', mail = '', address = '', birth = '', order = '', resID = '';
  final String ID = '';
  final String Password = '';
  final String Name = '';
  final String Phone = '';
  final String Mail = '';
  final String Address = '';
  final String Birth = '';
  final int Order = 0;
  final int ResID = 0;
  Account(ID,Password,Name,Phone,Mail,Address,Birth,Order,ResID);
  Map<String,dynamic> toMap(){
    return{
      id:ID,
      password:Password,
      name:Name,
      phone:Phone,
      mail:Mail,
      address:Address,
      birth:Birth,
      order:Order,
      resID:ResID,
    };
  }
}