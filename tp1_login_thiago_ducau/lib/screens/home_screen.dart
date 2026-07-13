import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp1_login_thiago_ducau/core/router/entities/item.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        title: 'Río de Janeiro',
        country: 'Brasil',
        rating: 4.8,
        description: 'Río de Janeiro es una de las ciudades más fascinantes del mundo. Famosa por sus vibrantes playas de arena blanca como Copacabana e Ipanema, ofrece un ambiente único que mezcla la naturaleza tropical con una bulliciosa metrópolis. No puedes dejar de visitar el imponente Cristo Redentor en la cima del cerro Corcovado, subir al Pan de Azúcar al atardecer y disfrutar de una caipirinha frente al mar. Además, su rica cultura se refleja en la música samba, el carnaval, y su deliciosa gastronomía local.',
        imageUrl: 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Cristo Redentor', 'Pan de Azúcar', 'Playa Copacabana'],
        foods: ['Feijoada', 'Pão de Queijo', 'Caipirinha'],
      ),
      Item(
        title: 'Buenos Aires',
        country: 'Argentina',
        rating: 4.7,
        description: 'Conocida cariñosamente como la "París de Sudamérica", Buenos Aires destaca por su deslumbrante arquitectura de estilo europeo, sus amplias avenidas y su intensa vida cultural. Camina por las históricas calles empedradas de San Telmo, maravíllate con los colores de Caminito en La Boca, disfruta de un espectáculo de tango de clase mundial y saborea la mejor carne en sus famosas parrillas. La ciudad nunca duerme, llena de teatros, museos, cafés notables y una pasión inigualable por el fútbol.',
        imageUrl: 'https://images.unsplash.com/photo-1589909202802-8f4aadce1849?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Obelisco', 'Caminito (La Boca)', 'Teatro Colón'],
        foods: ['Asado', 'Empanadas', 'Alfajores'],
      ),
      Item(
        title: 'Nueva York',
        country: 'Estados Unidos',
        rating: 4.9,
        description: 'La ciudad que nunca duerme te espera con su energía inagotable. Pasea por el inmenso Central Park, deslúmbrate con las luces de neón en Times Square y asiste a un aclamado musical de Broadway. Desde las impresionantes vistas del Empire State Building hasta la icónica Estatua de la Libertad, Nueva York ofrece una mezcla de culturas, arte moderno, compras de primer nivel y una gastronomía diversa que abarca sabores de cada rincón del planeta.',
        imageUrl: 'https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Central Park', 'Estatua de la Libertad', 'Times Square'],
        foods: ['Pizza estilo NY', 'Bagels', 'Hot Dogs'],
      ),
      Item(
        title: 'Londres',
        country: 'Reino Unido',
        rating: 4.8,
        description: 'Una metrópolis cosmopolita que combina a la perfección su rica historia real con la vanguardia moderna. Escucha las campanadas del emblemático Big Ben, sube al London Eye para tener una vista panorámica del río Támesis, y explora la historia de la realeza en la Torre de Londres y el Palacio de Buckingham. Sus museos gratuitos de clase mundial, los clásicos autobuses rojos de dos pisos y su vibrante escena teatral hacen de Londres un destino verdaderamente inolvidable.',
        imageUrl: 'https://images.unsplash.com/photo-1505761671935-60b3a7427bad?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Big Ben', 'London Eye', 'Torre de Londres'],
        foods: ['Fish and Chips', 'English Breakfast', 'Pie and Mash'],
      ),
      Item(
        title: 'Roma',
        country: 'Italia',
        rating: 4.9,
        description: 'La "Ciudad Eterna" es un auténtico museo al aire libre que cuenta la historia de uno de los imperios más grandes de la humanidad. Maravíllate ante la grandeza del Coliseo y el Foro Romano, lanza una moneda en la Fontana di Trevi para asegurar tu regreso, y descubre los tesoros artísticos y espirituales del Vaticano. Todo esto acompañado de la inigualable gastronomía italiana: pizzas crujientes, pastas frescas, gelatos artesanales y un excelente café expreso en cada esquina.',
        imageUrl: 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Coliseo', 'Fontana di Trevi', 'El Vaticano'],
        foods: ['Pizza Romana', 'Pasta Carbonara', 'Gelato artesanal'],
      ),
      Item(
        title: 'Madrid',
        country: 'España',
        rating: 4.7,
        description: 'La capital española te acogerá con su ambiente cálido y festivo. Pasea por el majestuoso Parque del Retiro, explora las obras maestras del arte europeo en el Museo del Prado y admira la inmensidad del Palacio Real. Madrid es famosa por su cultura de tapas; no puedes irte sin probar un bocadillo de calamares en la Plaza Mayor o disfrutar de unos churros con chocolate en la tradicional chocolatería San Ginés después de una noche de diversión.',
        imageUrl: 'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Museo del Prado', 'Parque del Retiro', 'Palacio Real'],
        foods: ['Bocadillo de Calamares', 'Churros con Chocolate', 'Tapas variadas'],
      ),
      Item(
        title: 'Lima',
        country: 'Perú',
        rating: 4.6,
        description: 'Reconocida como la capital gastronómica de América, Lima es una ciudad de contrastes vibrantes. Ubicada a orillas del Océano Pacífico, ofrece vistas espectaculares desde los acantilados del bohemio barrio de Barranco y el moderno Miraflores. Su centro histórico, declarado Patrimonio de la Humanidad, rebosa de arquitectura colonial deslumbrante. Deleita tu paladar con el ceviche más fresco, un exquisito lomo saltado y descubre por qué sus restaurantes están entre los mejores del mundo.',
        imageUrl: 'https://images.unsplash.com/photo-1526392060635-9d6019884377?q=80&w=1200&auto=format&fit=crop',
        attractions: ['Centro Histórico', 'Malecón de Miraflores', 'Huaca Pucllana'],
        foods: ['Ceviche', 'Lomo Saltado', 'Causa Limeña'],
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        title: const Text('Destinos Turísticos'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => context.go('/login'),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.blueAccent.withValues(alpha: 0.1),
            child: Text(
              '¡Bienvenido, $username!',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item.imageUrl,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 60,
                            height: 60,
                            color: Colors.grey[300],
                            child: const Icon(Icons.image_not_supported, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      context.push('/detail', extra: item);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}