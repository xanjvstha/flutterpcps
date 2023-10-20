class CardsandModules {

  //widgets eg dialog box, toast, cards, error handleling
  //date time formatter
  static String formatDateTimestring(string date){
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime format = (dateFormat.parse(date));
    DateFormat longdate = DateFormat("MMM dd, yyyy");
    date = longdate.format(format);
    return date;
  }

  static verticallistitem(size,Articles article){
    return  Row(
      children: [
        //col 1
        Column(
          children: [
            Stack(
              children: [
                Image.network(article.urlToImage!,height: 150,width: 100,
                  fit: BoxFit.cover,),
                Positioned(
                    left: 40,
                    top: 65,
                    child: Icon(Icons.play_circle,
                      size: 20,color: Colors.white,))
              ],
            )
          ],
        ),
        //col2
        Column(
          children: [
            Text(article.title!.toUpperCase()
              ,maxLines: 2,overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white,fontSize: 16,
                  fontWeight:FontWeight.bold),),

            //Row
            Row(children: [
              //Container
              Container(
                padding: EdgeInsets.only(left: 20,
                    right: 20,top: 10,bottom: 10),
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(20)),
                child:
                Text(article.author!
                  ,maxLines: 1,overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white,fontSize: 10,
                      fontWeight:FontWeight.bold),),
              ),
              //text
              Text(CardsandModules.formatDateTimestring(article.publishedAt!)
                ,maxLines: 2,overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white,fontSize: 10,
                    fontWeight:FontWeight.normal),)

            ],)
          ],
        )
      ],
    );
  }
}