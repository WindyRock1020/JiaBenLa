import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'intro_menubutton.dart';

class RestaurantPage extends StatefulWidget {
  final String name;
  final String details;
  final String imagePath;

  RestaurantPage({Key? key, required this.name, required this.details, required this.imagePath}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  String time = "";
  String tel = "";
  String menu = "";
  final TextEditingController _commentController = TextEditingController();
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    setRestaurantDetails();
  }

  void setRestaurantDetails() {
    if ( widget.name == "阿樓師火雞肉飯" ){
      time = "營業時間 : 16:00~60:00";
      tel = "Tel : 05- 2282738";
      menu = "alomenu" ;
    }
    if ( widget.name == "和平火雞肉飯" ){
      time = "營業時間 : 07:30~17:00";
      tel = "Tel : 05-2240956";
      menu = "peace" ;
    }
    if ( widget.name == "阿溪火雞肉飯" ){
      time = "營業時間 : 06:00–13:30 (週四公休)";
      tel = "Tel : 05-2243177";
      menu = "ASHI" ;
    }
    if ( widget.name == "民主火雞肉飯" ){
      time = "營業時間 : 10:00-20:40";
      tel = "Tel : 05-2162666";
      menu = "minchi" ;
    }
    if ( widget.name == "可口火雞肉飯" ){
      time = "營業時間 : 10:30–19:30 (週三公休)";
      tel = "Tel : 05-2779208";
      menu = "yummy" ;
    }
    if ( widget.name == "阿宏師火雞肉飯" ){
      time = "營業時間 : 10:30–20:00";
      tel = "Tel : 05-2233467";
      menu = "ahung" ;
    }
    if ( widget.name == "檜町火雞肉飯" ){
      time = "營業時間 : 11:00–15:00,17:00–20:00 (週二、三、四公休)";
      tel = "Tel : 05-2227171";
      menu = "fasting" ;
    }
    if ( widget.name == "東門火雞肉飯" ){
      time = "營業時間 : 10:00–20:30";
      tel = "Tel : 05-2867535";
      menu = "domen" ;
    }
    if ( widget.name == "阿霞火雞肉飯" ){
      time = "營業時間 : 17:40–22:30";
      tel = "Tel : None";
      menu = "asha" ;
    }
    if ( widget.name == "微笑火雞肉飯" ){
      time = "營業時間 : 07:00–14:00 (週一公休)";
      tel = "Tel : 05-2213079";
      menu = "smile" ;
    }
    if ( widget.name == "林聰明沙鍋魚頭" ){
      time = "營業時間 : 12:00–20:00 (週二公休)";
      tel = "Tel : 05-2270661";
      menu = "fish" ;
    }
    if ( widget.name == "阿娥豆花" ){
      time = "營業時間 : 14:00–23:00 (週二公休)";
      tel = "Tel : 05-2243016";
      menu = "au" ;
    }
    if ( widget.name == "阿岸米糕" ){
      time = "營業時間 : 16:00–00:00";
      tel = "Tel : 05-2285557";
      menu = "ana" ;
    }
    if ( widget.name == "阿信美食" ){
      time = "營業時間 : 22:00–03:30";
      tel = "Tel : 05-2293925";
      menu = "ashan" ;
    }
    if ( widget.name == "黃毛丫頭東山鴨頭" ){
      time = "營業時間 : 13:30–23:30";
      tel = "Tel : 05-2253289";
      menu = "duck" ;
    }
    if ( widget.name == "隱燃燒肉丼食堂" ){
      time = "營業時間 : 11:30–14:30, 17:30–20:30(週一、二公休)";
      tel = "Tel : 05-2257638";
      menu = "meatrice" ;
    }
    if ( widget.name == "乖乖滷味" ){
      time = "營業時間 : 17:00–00:00(週一、二公休)";
      tel = "Tel : None";
      menu = "gaga" ;
    }
    if ( widget.name == "珍珍蚵仔煎海產粥" ){
      time = "營業時間 : 20:30–04:00";
      tel = "Tel : None";
      menu = "chinchin" ;
    }
    if ( widget.name == "龍承綠豆沙" ){
      time = "營業時間 : 10:00–22:30";
      tel = "Tel : 0972177985";
      menu = "ludosha" ;
    }
    if ( widget.name == "羅山生炒鱔魚麵" ){
      time = "營業時間 : 15:00–19:00";
      tel = "Tel : 05-2238968";
      menu = "shanfish" ;
    }
    if ( widget.name == "八玥工坊銅鑼燒" ){
      time = "營業時間 : 17:00–00:00 (週六湖美夜市)";
      tel = "Tel : 09-75059475";
      menu = "break" ;
    }
    if ( widget.name == "堂薯薯臭薯條" ){
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : 09-12791705";
      menu = "fire" ;
    }
    if ( widget.name == "春發拔絲地瓜" ){
      time = "營業時間 : 17:00–00:00 (週五、六湖美夜市)";
      tel = "Tel : None";
      menu = "alomenu" ;
    }
    if ( widget.name == "賴.古早味玉米" ){
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : None";
      menu = "alomenu" ;
    }
    if ( widget.name == "能量香蕉煎餅" ){
      time = "營業時間 : 17:00–00:00 (週六湖美夜市)";
      tel = "Tel : None";
      menu = "" ;
    }
    if (widget.name == "來個刈包") {
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : 09-56066700";
      menu = "guabaomenu";
    }
    if (widget.name == "鮮味手工鮮蝦貢丸") {
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : 09-80779530";
      menu = "xiaweimenu";
    }
    if (widget.name == "一銀仙草") {
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : 05-2222511";
      menu = "grassjellymenu";
    }
    if (widget.name == "雅淳水果茶") {
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "Tel : None";
      menu = "yachunmenu";
    }
    if (widget.name == "麻辣乾鍋") {
      time = "營業時間 : 17:00–00:00 (週三、五、六湖美夜市)";
      tel = "05-2233444";
    }
    if (widget.name == "知更鳥巢鮮果茶飲") {
      time = "營業時間 : 10:00~20:00 (週一公休)";
      tel = "Tel : 05-2758319";
      menu = "robinmenu";
    }
    if (widget.name == "源興御香屋") {
      time = "營業時間 : 10:00–20:00 (週一、三公休)";
      tel = "Tel : 05-2253868";
      menu = "yuxiangmenu";
    }
    if (widget.name == "榮興茶行") {
      time = "營業時間 : 10:00-22:00(週一~週五)、10:00-18:00(週六、日)";
      tel = "Tel : 05-2241278";
      menu = "rongxingmenu";
    }
    if (widget.name == "穀壹") {
      time = "營業時間 : 10:00–20:30 (週日公休)";
      tel = "Tel : 09-86886579";
      menu = "guyimenu";
    }
    if (widget.name == "林家粉圓") {
      time = "營業時間 : 10:30–21:30 (週三公休)";
      tel = "Tel : 05-2305757";
      menu = "linmenu";
    }
    if (widget.name == "韻沏好") {
      time = "營業時間 : 10:00–20:00(週一~週六)11:00–17:30(週日)";
      tel = "Tel : 05-2233939";
      menu = "taromamenu";
    }
    if (widget.name == "LoHa甘丹輕茶飲") {
      time = "營業時間 : 10:30–21:30";
      tel = "Tel : 05-2258891";
      menu = "lohamenu";
    }
    if (widget.name == "Long Stay 龍喜嗲") {
      time = "營業時間 : 10:00–21:00";
      tel = "Tel : 05-2718880";
      menu = "longstaymenu";
    }
    if (widget.name == "樂在飲事所") {
      time = "營業時間 : 10:00–20:30";
      tel = "Tel : 05-2235353";
      menu = "lezaimenu";
    }
    if (widget.name == "樂法 Le Phare") {
      time = "營業時間 : 09:00–20:30";
      tel = "Tel : 05-2200069";
      menu = "lepharemenu";
    }
    if (widget.name == "諸羅山社涼麵店") {
      time = "營業時間 : 10:30–19:00";
      tel = "Tel : 05-2228895";
      menu = "zhuluomenu";
    }
    if (widget.name == "黃記涼麵涼圓") {
      time = "營業時間 : 09:00–18:00";
      tel = "Tel : 05-2240620";
      menu = "huangmenu";
    }
    if (widget.name == "崇文錦魯麵") {
      time = "營業時間 : 10:30–18:30(週四休息)";
      tel = "Tel : 05-2255460";
      menu = "chongwenmenu";
    }
    if (widget.name == "二丫頭麻辣涼麵") {
      time = "營業時間 : 08:00–21:00";
      tel = "Tel : 05-2225437";
      menu = "twogirlmenu";
    }
    if (widget.name == "涼麵四味果汁 總店") {
      time = "營業時間；10:00~20:00";
      tel = "05-2233444";
      menu = "fourflavormenu";
    }
    if (widget.name == "竹下涼麵") {
      time = "營業時間；10:00~20:00";
      tel = "05-2233444";
      menu = "underbamboomenu";
    }
    if (widget.name == "公園老店涼麵") {
      time = "營業時間；09:00–17:30(周一、四、六、日)";
      tel = "05-2233444";
      menu = "parknoodlemenu";
    }
    if (widget.name == "黑人涼麵") {
      time = "營業時間；10:00~20:00";
      tel = "05-2233444";
      menu = "niggamenu";
    }
    if (widget.name == "小伍妹麻辣涼麵") {
      time = "營業時間；10:00~20:00";
      tel = "05-2233444";
      menu = "xiaowumenu";
    }
    if (widget.name == "月女涼麵") {
      time = "營業時間；10:00~20:00";
      tel = "05-2233444";
      menu = "yuenvmenu";
    }
    // Add other restaurant details similarly...
  }

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  Future<void> _submitComment() async {
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('請先登入')));
      return;
    }

    String comment = _commentController.text;
    if (comment.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('請輸入評論')));
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('comments').add({
        'restaurant': widget.name,
        'comment': comment,
        'timestamp': FieldValue.serverTimestamp(),
        'user': user!.uid,
      });

      _commentController.clear();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('評論已提交')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('提交評論失敗: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.name,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              titlePadding: EdgeInsets.only(bottom: 16.0),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '店家資訊',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://www.google.com/maps/search/?api=1&query=${widget.details}");
                        },
                        child: Text(
                          widget.details,
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(time),
                      Text(tel),
                      SizedBox(height: 16),
                      Row(
                        children: <Widget>[
                          Text(
                            '菜單',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          intro_menubutton(
                            imagePath: "assets/app_menu/$menu.png",
                            iconPath: 'assets/menu.png',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        '評論區',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _commentController,
                        decoration: InputDecoration(
                          labelText: '輸入評論',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 3,
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: _submitComment,
                        child: Text('提交評論'),
                      ),
                      SizedBox(height: 16),
                      StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('comments')
                            .where('restaurant', isEqualTo: widget.name)
                            .orderBy('timestamp', descending: true)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return CircularProgressIndicator();
                          }
                          final comments = snapshot.data!.docs;
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: comments.length,
                            itemBuilder: (context, index) {
                              var comment = comments[index];
                              return ListTile(
                                title: Text(comment['comment']),
                                subtitle: Text(comment['timestamp'] != null
                                    ? comment['timestamp'].toDate().toString()
                                    : ''),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: 16),
                      Text(
                        '部落客介紹',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      // Add blogger introduction here
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
