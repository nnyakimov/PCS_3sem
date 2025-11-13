import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// SVG иконки вынесены в глобальные константы
const String cardFrameSvg = '''
<svg width="185" height="201" viewBox="0 0 185 201" fill="none" xmlns="http://www.w3.org/2000/svg">
<g filter="url(#filter0_d_0_9696)">
<rect x="10" y="5" width="165" height="181" rx="9" fill="white"/>
</g>
<defs>
<filter id="filter0_d_0_9696" x="0" y="0" width="185" height="201" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feOffset dy="5"/>
<feGaussianBlur stdDeviation="5"/>
<feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.101961 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_0_9696"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_0_9696" result="shape"/>
</filter>
</defs>
</svg>
''';

const String favoriteIconSvg = '''
<svg width="23" height="21" viewBox="0 0 23 21" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_29224_483)">
<path d="M11.0105 18.6365C15.8558 15.3147 18.3971 12.2928 19.4392 9.76366C21.3962 5.01291 18.0641 2 14.7778 2C13.3756 2 11.9813 2.54898 11.0105 3.74559C10.0395 2.54873 8.64557 2 7.24308 2C3.95706 2 0.624878 5.01333 2.58168 9.76366C3.62386 12.2928 6.16507 15.3147 11.0105 18.6365ZM11.0105 20.6365C10.6154 20.6365 10.2204 20.5197 9.87959 20.2861C5.13987 17.0367 2.06235 13.7529 0.732516 10.5256C-0.373284 7.84119 -0.224294 5.23099 1.15195 3.17563C2.46355 1.21683 4.79753 0 7.24308 0C8.61323 0 9.91515 0.385814 11.0105 1.09276C12.1058 0.385817 13.4077 0 14.7778 0C17.2236 0 19.5576 1.21678 20.8691 3.17549C22.2453 5.23077 22.3943 7.84102 21.2885 10.5254C19.9586 13.7529 16.881 17.0367 12.1413 20.2861C11.8006 20.5197 11.4055 20.6365 11.0105 20.6365Z" fill="#F0240D"/>
</g>
<defs>
<clipPath id="clip0_29224_483">
<rect width="22.022" height="20.636" fill="white"/>
</clipPath>
</defs>
</svg>
''';

const String cartIconSvg = '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect opacity="0.01" width="24" height="24" fill="white"/>
<g clip-path="url(#clip0_29224_557)">
<g clip-path="url(#clip1_29224_557)">
<path d="M18.9692 2L22.1274 5.7627V20.7998C22.1274 21.36 21.5821 22 20.6665 22H3.43701C2.52167 21.9998 1.97607 21.3599 1.97607 20.7998V5.7627L5.13428 2H18.9692Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2.57104 5.3999H21.6366" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.3665 9.7998C16.3665 12.2299 14.4348 14.1998 12.0518 14.1998C9.66883 14.1998 7.73706 12.2299 7.73706 9.7998" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</g>
<defs>
<clipPath id="clip0_29224_557">
<rect width="22.1519" height="21.9999" fill="white" transform="translate(0.976074 1)"/>
</clipPath>
<clipPath id="clip1_29224_557">
<rect width="22.1519" height="21.9999" fill="white" transform="translate(0.976074 1)"/>
</clipPath>
</defs>
</svg>
''';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // Список избранных товаров
  final List<Map<String, dynamic>> favoriteProducts = [
    {
      'id': '1',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 17.00,
      'image': 'lib/assets/images/dress1.png',
      'isInCart': false,
    },
    {
      'id': '2',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 17.00,
      'image': 'lib/assets/images/dress2.png',
      'isInCart': false,
    },
    {
      'id': '3',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 17.00,
      'image': 'lib/assets/images/dress3.png',
      'isInCart': false,
    },
    {
      'id': '4',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 17.00,
      'image': 'lib/assets/images/dress4.png',
      'isInCart': false,
    },
  ];

  void _removeFromFavorites(int index) {
    setState(() {
      favoriteProducts.removeAt(index);
    });
  }

  void _toggleCart(int index) {
    setState(() {
      favoriteProducts[index]['isInCart'] = !favoriteProducts[index]['isInCart'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: favoriteProducts.isEmpty
          ? _buildEmptyFavorites()
          : _buildFavoritesGrid(),
    );
  }

  Widget _buildEmptyFavorites() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 80, color: Colors.grey[300]),
          const SizedBox(height: 20),
          const Text(
            'Избранное',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Здесь будут ваши избранные товары',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.65,
      ),
      itemCount: favoriteProducts.length,
      itemBuilder: (context, index) {
        return _buildFavoriteCard(favoriteProducts[index], index);
      },
    );
  }

  Widget _buildFavoriteCard(Map<String, dynamic> product, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Рамка с карточкой товара
        SizedBox(
          width: 185,
          height: 201,
          child: Stack(
            children: [
              // SVG рамка на заднем плане
              Positioned.fill(
                child: SvgPicture.string(
                  cardFrameSvg,
                  fit: BoxFit.contain,
                ),
              ),
              // Карточка товара поверх рамки
              Positioned(
                left: 10,
                top: 5,
                right: 10,
                bottom: 16,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      // Картинка товара
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Image.asset(
                            product['image'],
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[200],
                                child: Center(
                                  child: Icon(
                                    Icons.shopping_bag,
                                    size: 40,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // Иконки поверх картинки
                      // Сердце в левом верхнем углу (всегда красное)
                      Positioned(
                        top: 8,
                        left: 8,
                        child: GestureDetector(
                          onTap: () => _removeFromFavorites(index),
                          child: SvgPicture.string(
                            favoriteIconSvg,
                            width: 23,
                            height: 21,
                            colorFilter: const ColorFilter.mode(
                              Colors.red,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      // Пакет в левом нижнем углу изображения
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: GestureDetector(
                          onTap: () => _toggleCart(index),
                          child: SvgPicture.string(
                            cartIconSvg,
                            width: 24,
                            height: 24,
                            colorFilter: ColorFilter.mode(
                              product['isInCart'] ? Colors.black : Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Текст под карточкой
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                product['description'],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '\$${product['price'].toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
