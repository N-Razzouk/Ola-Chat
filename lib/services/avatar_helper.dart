import 'dart:math';

abstract class AvatarHelper {
  static getUserAvatar(String username) {
    if (username == 'naifrazzouk') {
      return 'https://react.semantic-ui.com/images/avatar/large/matthew.png';
    } else {
      return 'https://ui-avatars.com/api/?background=random&name=$username';
    }
  }

  static const List<String> channelImages = [
    'https://static.vecteezy.com/system/resources/thumbnails/003/313/523/small_2x/top-view-of-a-mug-of-latte-art-coffee-free-photo.jpg',
    'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/3/pinky-and-the-brain-su-topo.jpg',
    'https://howtostartabusinessindubai.com/wp-content/uploads/2021/02/cost-effective-freezone-400x400.jpg',
    'https://quickbooks.intuit.com/cas/dam/IMAGE/A4fofW881/0c9819e2842fb40fab35ebcb4bd53852.jpg',
    'https://priceless-magazines.com/wp-content/uploads/2021/04/iStock-542300224-400x400.jpeg',
    'https://av.sc.com/ae/content/images/ae-home-comfort-benefit-banner-400x400.jpg',
    'https://media.thenationaldigest.com/wp-content/uploads/2021/07/23132114/Dubai-400x400-1.jpg',
    'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/green-sea-turtle-1-400x400.jpg.optimal.jpg',
    'https://miro.medium.com/max/400/1*J3xy5x1qf_Ngtpvrpigj8Q.jpeg',
    'https://www.accenture.com/t20210915T021614Z__w__/ae-en/_acnmedia/Accenture/Redesign-Assets/DotCom/Images/Global/Thumbnail400x400/20/Accenture-Communications-Technology-Featured-400x400.jpeg',
  ];

  static getChannelImage() =>
      channelImages[Random().nextInt(channelImages.length)];
}
