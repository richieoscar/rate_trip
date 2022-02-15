class Trip {
  String? _driverName;
  String? _address;
  String? _imageUrl;

  get driverName => _driverName;

  set setDriverName(String driverName) => _driverName = driverName;

  get address => _address;

  set setAddress(address) => _address = address;

  get imageUrl => _imageUrl;

  set setImageUrl(imageUrl) => _imageUrl = imageUrl;

  Trip(this._driverName, this._address, this._imageUrl);
}
