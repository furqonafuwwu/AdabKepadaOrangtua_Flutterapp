import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adab kepada orangtua"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1. Tidak memandang orang tua dengan pandangan yang tajam atau tidak menyenangkan',
              'https://3.bp.blogspot.com/-Ej-1W8xuNjo/WS5XdaX6ahI/AAAAAAAAKJ4/bl35Tywc7QkQCXMlVZ_1seepdbJfow7cgCLcB/s1600/memarahi%2Banak.jpg',
              'Tidak memandang orang tua dengan pandangan yang tajam atau tidak menyenangkan karena akan membuat hati orang tua menjadi sakit atau marah. '),
          _createPageItemUI(
              '2.Tidak meninggikan suara ketika berbicara dengan orang tua',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROZltqZlcMG45PF68bsCHPkcTFogIS6yd7nX3WHle2QD5z0XRE&s',
              'hadits Al Musawwir bin Makhramah radhiallahu’anhu mengenai bagaimana adab para Sahabat Nabi terhadap Nabi Shallallahu’alaihi Wasallam, disebutkan di dalamnya: وإذا تكَلَّمَ خَفَضُوا أصواتَهم عندَه ، وما يُحِدُّون إليه النظرَ؛ تعظيمًا له. "“jika para sahabat berbicara dengan Rasulullah, mereka merendahkan suara mereka dan mereka tidak memandang tajam sebagai bentuk pengagungan terhadap Rasulullah” (HR. Al Bukhari 2731)."'),
          _createPageItemUI(
              '3.Tidak mendahului mereka dalam berkata-kata',
              'http://www.kesekolah.com/images2/big/2014103110515633355.jpg',
              'Diantara adab yang mulia kepada orang tua adalah tidak mendahului mereka dalam berkata-kata dan mempersilakan serta membiarkan mereka berkata-kata terlebih dahulu hingga selesai'),
          _createPageItemUI(
              '4.Tidak duduk di depan orang tua sedangkan mereka berdiri',
              'http://www.lovelybogor.com/wp-content/uploads/2015/11/Penumpang-Wanita-di-Commuter-Line.jpg',
              '“Rasulullah shallallahu ‘alaihi wasallam mengaduh (karena sakit), ketika itu kami shalat bermakmum di belakang beliau, sedangkan beliau dalam keadaan duduk, dan Abu Bakar memperdengarkan takbirnya kepada orang-orang. Lalu beliau menoleh kepada kami, maka beliau melihat kami shalat dalam keadaan berdiri. Lalu beliau memberi isyarat kepada kami untuk duduk, lalu kami shalat dengan mengikuti shalatnya dalam keadaan duduk. Ketika beliau mengucapkan salam, maka beliau bersabda, ‘kalian baru saja hampir melakukan perbuatan kaum Persia dan Romawi, mereka berdiri di hadapan raja mereka, sedangkan mereka dalam keadaan duduk, maka janganlah kalian melakukannya. Berimamlah dengan imam kalian. Jika dia shalat dalam keadaan berdiri, maka shalatlah kalian dalam keadaan berdiri, dan jika dia shalat dalam keadaan duduk, maka kalian shalatlah dalam keadaan duduk” (HR. Muslim, no. 413).Para ulama mengatakan dilarangnya hal tersebut karena merupakan kebiasaan orang kafir Persia dan Romawi. Maka hendaknya kita menyelisihi mereka.'),
          _createPageItemUI(
              '5.Lebih mengutamakan orang tua daripada diri sendiri atau iitsaar dalam perkara duniawi',
              'https://mmc.tirto.id/image/otf/500x0/2016/08/29/TIRTO-antarafoto-krl-tergenang-air-290816-pus-3_ratio-16x9.JPG',
              'Hendaknya kita tidak mengutamakan diri kita sendiri dari orang tua dalam perkara duniawi seperti makan, minum, dan perkara lainnya. Sebagaimana hadits dalam Shahihain mengenai kisah yang diceritakan oleh Rasulullah Shallallahu’alaihi Wasallam mengenai tiga orang yang terjebak di dalam gua yang tertutup batu besar, kemudian mereka bertawassul kepada Allah dengan amalan-amalan mereka,'),
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}