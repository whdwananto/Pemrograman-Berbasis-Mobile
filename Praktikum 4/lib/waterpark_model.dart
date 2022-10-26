class Waterpark {
  final String title;
  final String description;
  final double rating;
  final String subtitel;
  final String image;
  final String address;

  const Waterpark({
    required this.title,
    required this.description,
    required this.rating,
    required this.subtitel,
    required this.image,
    required this.address,
  });
}

const List<Waterpark> listResto = [
  Waterpark(
    title: "Go!Wet Waterpark Grand Wisata",
    description:
        "Explore Go! Wet waterpark di Grand Wisata Bekasi. Rasakan pengalaman bermain air bersama teman atau keluarga di berbagai wahana yang ada di Go! Wet.",
    rating: 4.4,
    subtitel: "Go! Wet, All Out!",
    image: "images/GoWet.png",
    address:
        "Grand Wisata Kavling I No.1, Jl. Southern Boulevard, Lambangjaya, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510",
  ),
  Waterpark(
    title: "Colombus Waterpark",
    description:
        "Taman rekreasi air ramah keluarga yang memiliki berbagai wahana dengan banyak pertunjukan & hiburan lainnya.",
    rating: 4.3,
    subtitel: "The Colombus Waterpark",
    image: "images/Colombus.jpg",
    address:
        "Perumahan Mutiara Gading Timur RT.013, Jl. Mutiara Gading Timur No.7, RT.013/RW.028, Mustika Jaya, Kec. Mustika Jaya, Kota Bks, Jawa Barat 17158",
  ),
  Waterpark(
    title: "Sirkus Waterplay",
    description:
        "Objek wisata air indoor bertema badut dan hewan sirkus, dengan kolam renang, jet, dan seluncuran penuh warna.",
    rating: 4.4,
    subtitel: "Indoor Waterpark",
    image: "images/SirkusWP.jpg",
    address:
        "Jl. Wibawa Mukti II No.4, RT.001/RW.5, Jatiasih, Kec. Jatiasih, Kota Bks, Jawa Barat 17423",
  ),
  Waterpark(
    title: "Venetian Water Carnaval Bekasi",
    description:
        "Pusat rekreasi di sekitar kolam renang dengan seluncuran dan perahu, yang meniru kanal dan gondola Venesia.",
    rating: 4.2,
    subtitel: "The Venetian",
    image: "images/Venetian.jpg",
    address:
        "Perumahan Villa Mutiara Gading 2, Jl. Raya Karang Satria No.1-2, Karangsatria, Kec. Tambun Utara, Kabupaten Bekasi, Jawa Barat 17510",
  ),
  Waterpark(
      title: "Water Splash Darmawangsa",
      description:
          "Pusat air dengan seluncuran warna-warni, kolam untuk dewasa dan anak, taman bermain, serta gerai makanan.",
      rating: 4.1,
      subtitel: "Taman Rekreasi Air",
      image: "images/WSDarma.jpg",
      address:
          "Jl. Darmawangsa Raya, Satriajaya, Kec. Tambun Utara, Kabupaten Bekasi, Jawa Barat 17510,"),
];
