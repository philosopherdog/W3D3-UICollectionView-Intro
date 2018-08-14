autoscale: true 
build-lists: true

# [fit]UICollectionView

---

# [fit]What is a UICollectionView?

- Way to present ordered data with a flexible layout

- Grid layout is the most commonly used

---

![inline](resources/9462F7A6BFF3F6B348AEC5E6E47B402E.png)

---

![Iinline](resources/4D3B07B80EAF985F79A50EDBC78C4795.png)

---

![inline](resources/38E737FE9AF330DD878F8098545ECE95.png)

---

## [fit]50,000 Foot View

![inline](resources/087C3A3DD7074F53998DB830D9F6969A.png)

--- 

![inline](resources/B3F835555297E7C7D8851C7BBFF83287.png)

---

## [fit]UICollectionViewCell
* Cells are the content (add content to `contentView`)

![inline](resources/F47EEEFAD4DD0BD98007EFA20D55B67B.png)

---

* Supplementary view are things like headers and footers

* DecorationView is the background image in this case

---
## [fit]UICollectionViewDataSource

![inline](resources/F4E1D7121D3AE9E553A6C4F32AE089F5.png)

--- 
## [fit]UICollectionViewDataSource 3 Required Methods

```swift

// you should implement this and return the number of sections in your collection

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;

// you have to determine the number of items there are for each section and return it here
- (NSInteger)numberOfItemsInSection:(NSInteger)section;


// this is where the model and view intersect
- (UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;

```

---

##  [fit]UICollectionViewDelegate


![inline](resources/E308967382AEC33AF30DAD29917DB9F8.png)

```objc

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

```
---
## [fit]UICollectionViewFlowLayout

- Subclass of `UICollectionViewLayout`.

- Used for most grid style layouts.

- The default flow layout is automatically hooked up in the *UICollectionViewController *and can be accessed using the *collectionViewLayout *property.

- What is the difference between a collectionview added as a subview in a UIViewController and a `UICollectionViewController`? (Make sure you understand this)

- If you have an outlet to a *UICollectionView* then you can also access the *collectionViewLayout *which is automatically hooked up in IB.

---

## [fit]UICollectionViewFlowLayout

- You can setup static values for the flowlayout in the storyboard. 

- 🎗 static default flowlayout values automatically set in storyboard may affect your layout & give you results you aren't expecting.

- Storyboard is a good place to look to see what properties the layout has. Experiment.

- To setup values that are *relative* to the view's dimensions use *viewDidLoad*. (Setting up flow layout dimensions in storyboard does not allow us to make our layout relative to the current screen size).

---

![inline](resources/C39E6408DCFBAEA688297826AA369E4A.png)

---

```objc





// some property definitions
@property (nonatomic) CGFloat minimumInteritemSpacing;
@property (nonatomic) CGFloat minimumLineSpacing;
@property (nonatomic) UICollectionViewScrollDirection scrollDirection;

// E.g.

UICollectionViewFlowLayout* layout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
layout.minimumLineSpacing = 10;


```

---

![inline](resources/4324C4343B4D829E384E7FE53257E520.png)

---

![inline](resources/287FF8B03ED6DB028C64E3C405306D50.png)

---

## [fit] UICollectionViewDelegateFlowLayout*


- You can also setup a delegate to create dynamically sized cells using `UICollectionViewDelegateFlowLayout`.

```objc

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

```

---

![inline](resources/5B321A5819F060FBD4053FE44D5B1996.png)

--- 

![inline](resources/4A0757D960FD5D09D66C5CC5784CD802.png)

<https://github.com/philosopherdog/iOS-W3D3-CollectionViews>

