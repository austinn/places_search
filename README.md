# places_search

# Add dependency into pubspec.yml

```
dependencies:
  flutter:
    sdk: flutter
  places_search: <last-version>
  
```  

# example


```
    return GooglePlaceAutoCompleteTextField(
        textEditingController: controller,
        googleAPIKey: 'YOUR_GOOGLE_API_KEY',
        inputDecoration: const InputDecoration(),
        getPlaceDetails: (Prediction prediction) {
          print('placeDetails${prediction.lng}');
        },
        onItemClicked: (Prediction prediction) {
          if (prediction.description != null) {
            controller.text = prediction.description!;
            controller.selection = TextSelection.fromPosition(
              TextPosition(offset: prediction.description!.length),
            );
          }
        });
    
```
# Customization Option
 You can customize a text field input decoration and debounce time 

# Screenshots
<img src="sample.jpg" height="400">

