import 'package:dart_lang/b_behavioral/a_observer/b_enhanced_solution/observer.dart';

class OnlineMarketPlace {
  final Map<EventType, List<Subscriber>> _subscribers;
  final List<Product> _products;
  final List<Offer> _offers;

  OnlineMarketPlace()
      : _subscribers = {},
        _products = [],
        _offers = [] {
    initSubscribers();
  }

  void initSubscribers() {
    for (EventType type in EventType.values) {
      _subscribers[type] = [];
    }
  }

  void subscribe(Subscriber subscriber, EventType type) {
    _subscribers[type]!.add(subscriber);
  }

  void unSubscribe(Subscriber subscriber, EventType type) {
    _subscribers[type]!.remove(subscriber);
  }

  void addProduct(Product product) {
    _products.add(product);
    notifySubscribers(
        EventType.newProduct, "New product is added ${product.name}");
  }

  void addOffer(Offer offer) {
    _offers.add(offer);
    notifySubscribers(
        EventType.newOffer, "New offer is added: ${offer.message}");
  }

  void addNewJobOpening(String jobTitle) {
    notifySubscribers(
        EventType.jobOpening, "New opening position is available: $jobTitle");
  }

  void notifySubscribers(EventType type, String message) {
    for (Subscriber subscriber in _subscribers[type]!) {
      subscriber.notify(message);
    }
  }
}
