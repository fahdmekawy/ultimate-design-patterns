abstract class VideoPresent {
  void applyPreset() {
    _enhanceVideoQuality();
    applyColorCorrection();
    _enhanceAudioQuality();
    _applyFilters();
    renderVideo();
  }

  void _applyFilters() {}

  void applyColorCorrection();

  void _enhanceVideoQuality() {}

  void _enhanceAudioQuality() {}

  void renderVideo();
}
