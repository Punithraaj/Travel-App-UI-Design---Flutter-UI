class DestinationInfo {
  String name;
  String tagLine;
  String description;
  String image;
  List<String> images;
  double rating;

  DestinationInfo({
    required this.name,
    required this.tagLine,
    required this.description,
    required this.image,
    required this.images,
    required this.rating,
  });
}

final List<DestinationInfo> destinationsInfo = [
  DestinationInfo(
      name: 'Egypt',
      tagLine: "Egypt - Where It All Begins",
      description:
          'You\'ll have seen a thousand photographs of the Pyramids of Giza by the time you finally get here, but nothing beats getting up-close-and-personal with these ancient monuments. Egypt\'s most famed and feted structures, these ancient tombs of kings guarded by the serene Sphinx have wowed spectators for centuries.',
      image: 'assets/images/pyramids.jpg',
      images: [
        	"https://images.unsplash.com/photo-1539768942893-daf53e448371?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80",
	        "https://images.unsplash.com/photo-1562679299-266edbefd6d7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80",
          "https://images.unsplash.com/photo-1562972661-a704b05a8a05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
          "https://images.unsplash.com/photo-1458909760068-5a3e1baf59c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80",
          "https://images.unsplash.com/photo-1591055818664-1d5416d365b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=976&q=80",
      ],
      rating: 7.3,
  ),
  DestinationInfo(
      name: 'Maldives',
      tagLine: "Maldives - Always Natural",
      description:
          'Located just south of the Indian subcontinent, the Maldives are a gorgeous chain of islands in the Indian Ocean-Arabian Sea area consisting of 26 atolls. Travel to the Maldives and see why the islands have become so popular in recent decades (especially as a honeymoon destination) and why Maldives travel is always an unforgettable experience.',
      image: 'assets/images/maldives.jpg',
      images: [
        	"https://images.unsplash.com/photo-1512100356356-de1b84283e18?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2018&q=80",
	        "https://images.unsplash.com/photo-1590001155093-a3c66ab0c3ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
          "https://images.unsplash.com/photo-1561571994-3c61c554181a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80",
          "https://images.unsplash.com/photo-1620483829332-7d4918cbdc7c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1hbGRpdmVzJTIwYmVhY2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
          "https://images.unsplash.com/photo-1615276422327-76d2d7b7a9e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80",
      ],      
      rating: 8.9,  
  ),
  DestinationInfo(
      name: 'Paris',
      tagLine: "Paris is not a city; it's a world",
      description:
          'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.',
      image: 'assets/images/paris.jpg',
      images: [
        	"https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80",
	        "https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80",
          "https://images.unsplash.com/photo-1470102287786-83270382dfb0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
          "https://images.unsplash.com/photo-1477089884677-c596568bd120?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
          "https://images.unsplash.com/photo-1528662020897-d8fb09d08797?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2158&q=80",
      ],      
      rating: 8.8,
  ),
  DestinationInfo(
      name: 'Venice',
      tagLine: "Venice — Vacation Paradise",
      description:
          'Venice and its mainland are particularly rich of museums and historical buildings of great artistic and cultural importance. Here you can choose among a wide variety of museums, churches, palaces and villas, Venice historic centre, the famous islands of Murano and Burano, the villas along the Brenta river and the beautiful landscapes the Miranese area, and of course less famous islands in Venice Lagoon.',
      image: 'assets/images/venice.jpg',
      images: [
        	"https://images.unsplash.com/photo-1520874628750-bed9c0a19086?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1940&q=80",
	        "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2130&q=80",
          "https://images.unsplash.com/photo-1550780447-63494b66a3b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHZlbmljZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
          "https://images.unsplash.com/photo-1569585723140-efb9daaa18f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
          "https://images.unsplash.com/photo-1546626093-303e7d0ec1a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
      ],      
      rating: 6.8,
   ),
  DestinationInfo(
      name: 'Brazil',
      tagLine: "Brazil, visit and love us",
      description:
          'Golden beaches and lush mountains, samba-fueled nightlife and spectacular football matches: welcome to the Cidade Maravilhosa (Marvelous City).',
      image: 'assets/images/rio.jpg',
      images: [
        	"https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
	        "https://images.unsplash.com/photo-1518639192441-8fce0a366e2e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
          "https://images.unsplash.com/photo-1551529489-5c97b567c760?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
          "https://images.unsplash.com/photo-1551620832-e2af54f6f0b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
          "https://images.unsplash.com/photo-1520645521318-f03a712f0e67?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
      ],      
      rating: 7.0,
  ),
];
