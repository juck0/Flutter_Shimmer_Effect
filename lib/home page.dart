import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enable = true;
  @override
  void iniState(){
    super.initState();
    loadData();
  }
  loadData ()async{
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      enable = false;
    });
  }

  Map secMap = {
    "kia":{
      'image':   "images/kia.jpg",
       'circlAvater': "https://mlkyi6enm0g5.i.optimole.com/EehaMug.FGTz~41f8/w:1499/h:1080/q:mauto/https://ovuncguvenersoy.com/wp-content/uploads/kia-logo-tasarimi.jpg",
        'dec' :"There are a total of 5 Kia models.\nCheck out the new KIA",
        'time':"12:32",
        'views' : "KIA Motors  .  211k views  .  1 month ago"
    },
"abody":{
'image':   "images/abode.jpg",
'circlAvater': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgiqux6KKVnMK4zQ7B2KZ7nLAdOamu0Vg9iw&usqp=CAU",
'dec' :" الخيانة من الاهمال و الاهمال من الخيانة",
'time':"6:01",
'views' : "عبودي ابن الدورة  .    views 544k  .  5 month ago"
},
    "z":{
      'image':   "images/z.jpg",
      'circlAvater': "https://odditymall.com/includes/content/upload/leo-meme-face-mask-1834.jpg",
      'dec' :"صدمة مدربة بروعةوجمال حل ايمن للتاسك",
      'time':"2:15",
      'views' : "Flutter hacks  .  211k views  .  1 month ago"
    },

  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/yo-removebg.png",scale: 3,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.connected_tv_sharp, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.notifications_none, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("images/me.png",scale: 22),

                ],
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width - 355,
            color: Color(0xFF1A1A1A),
            child:
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF3F3F3F),
                  ),
                  child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.assistant_direction_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Explore",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                ),SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF3F3F3F),
                  ),

                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                categurey("Live"),
                SizedBox(
                  width: 5,
                ),
                categurey("Gaming"),
                SizedBox(
                  width: 5,
                ),
                categurey("Music"),
                SizedBox(
                  width: 5,
                ),
                categurey("Mixes"),
                SizedBox(
                  width: 5,
                ),
                categurey("IT"),
                SizedBox(
                  width: 5,
                ),
                categurey("iphone"),
              ],
            ),
          ),
          Container(height: MediaQuery.of(context).size.height-130,
          width: MediaQuery.of(context).size.height,child:  ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (BuildContext , int index){
                  if(enable = true){
                    return loading();

                  }else{
                    return video(
                      (secMap.values.elementAt(index)['image']),
                      (secMap.values.elementAt(index)['circlAvater']),
                      (secMap.values.elementAt(index)['dec']),
                      (secMap.values.elementAt(index)['time']),
                      (secMap.values.elementAt(index)['views']),
                    );

                  }

                }),),


          // video("images/kia.jpg",
          //   "https://mlkyi6enm0g5.i.optimole.com/EehaMug.FGTz~41f8/w:1499/h:1080/q:mauto/https://ovuncguvenersoy.com/wp-content/uploads/kia-logo-tasarimi.jpg",
          //   "There are a total of 5 Kia models.\nCheck out the new KIA","12:32",
          //   "KIA Motors  .  211k views  .  1 month ago",
          // ),
          // SizedBox(height: 20,),
          // video(
          //   "images/abode.jpg",
          //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgiqux6KKVnMK4zQ7B2KZ7nLAdOamu0Vg9iw&usqp=CAU",
          //   " الخيانة من الاهمال و الاهمال من الخيانة" ,"6:01",
          //   "عبودي ابن الدورة  .    views 544k  .  5 month ago",
          // ),
          // SizedBox(height: 20,),
          // video(
          //   "images/z.jpg",
          //   "https://odditymall.com/includes/content/upload/leo-meme-face-mask-1834.jpg",
          //   "صدمة مدربة بروعةوجمال حل ايمن للتاسك",
          //   "2:15",
          //   "Flutter hacks  .  211k views  .  1 month ago",
          //
          // ),
          SizedBox(height: 20,),



        ],

      ),



    );
  }
  Container categurey(String title) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFF3F3F3F),
          border: Border.all(color: Color(0xFF505050), width: 2)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
      )),
    );
  }
  Stack video(String url ,String avatar, String dec, String time,String channelName_viwes){
    return  Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),



           Image(image: AssetImage(url)),

            SizedBox(height: 10,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(left: 10),child:
                  CircleAvatar(maxRadius: 25,backgroundImage: NetworkImage(
                  avatar,
                ),),),

                Text(dec,style: TextStyle(
                    color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500
                ),),SizedBox(width: 20,),
                Icon(Icons.more_vert,color: Colors.white,size: 20,)
              ],
            ),

            Padding(padding: EdgeInsets.only(right: 50),
              child: Text(channelName_viwes,
                style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 10
                ),
              ),)
          ],
        ),
      ),
      Positioned(child: Container(width: 50,height: 25,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),color: Color(0x8C1A1A1A)
      ),child: Center(child: Text(time,style: TextStyle(color: Colors.white),)),),
        bottom: 80,right: 10,

      ),],
    )
      ;
  }
Shimmer loading(){
    return Shimmer.fromColors(
      child: Padding(padding: EdgeInsets.symmetric(vertical:  10),
      child: Column(
          children: [
            Image(
                image: AssetImage(
                    "images/z.jpg")),SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(padding: EdgeInsets.only(left: 10),child:
                CircleAvatar(maxRadius: 25,backgroundImage: NetworkImage(
                  "images/me.png",
                ),),),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 30,width: 300,decoration: BoxDecoration(
                        color: Colors.white38,borderRadius: BorderRadius.circular(5)
                    )),
                    SizedBox(height: 5,),
                    Container(height: 30,width: 300,decoration: BoxDecoration(
                        color: Colors.white38,borderRadius: BorderRadius.circular(5)
                    )),
                    SizedBox(height: 5,),
                    Container(height: 30,width: 100,decoration: BoxDecoration(
                        color: Colors.white38,borderRadius: BorderRadius.circular(5)
                    )),


                  ],),
              ],
            ),

          ]
      )),
      baseColor: Colors.grey.shade900,
  highlightColor: Colors.white10,
  enabled: true,

  );

}
//Shimmer loading(){
//     return Shimmer.fromColors(
//         child:Container(width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.width,) ,
//   baseColor: Colors.grey.shade300,
//   highlightColor: Colors.grey.shade100,
//   enabled: true,
//
//     );
// }
}