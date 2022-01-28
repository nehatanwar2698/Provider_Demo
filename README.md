# state_management 

simple Provider  using provider update counter and apply a timer also increase and decrease that value by pressing buttons

## Why We Need StateManagement Technique?
 because if we use setState usually it build whole screen again and again whenever setState called
 assume we have a large number of list and we used setState on that it take a long time to  show changes on screen it decrease the performance of our app so instead of  depend on setState use their alternative you will rebuild only the widgets that needs that value (the Consumers ) while the other will not be rebuilt  so it increase our app performance

To make our app aware and know about the providers we have to add something to our Material App inside main.dart. Wrap our Material App. Inside MultiProvider feature and inside it add our class to providers option of Multi Provider. 





![Screenshot_1643374466](https://user-images.githubusercontent.com/66877730/151583963-0b58aad7-b517-4f06-a971-134452ca3da2.png)
