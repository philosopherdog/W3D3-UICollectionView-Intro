autoscale: true 
build-lists: true

# [fit]UICollectionView

---

# [fit]What is a UICollectionView?

- A view object that manages an ordered collection of data items and presents them using customizable layouts.

- Data is primarly presented in cells  `UICollectionViewCell`, and optionally supplementary views `UICollectionReusableView`, and decoration view(s).

- The layout object is responsible for defining the organization and location of all cells and supplementary views inside the collection view.

- The collection view uses a **data source object**, which is any object that conforms to the `UICollectionViewDataSource` protocol.

- The layout object is like another data source, only it concerns visual information instead of item data.


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

## [fit] UICollectionReusableView

* `UICollectionReusableView` is an abstract class.
* You subclass it in order to create supplementary views.
* These can be things like headers and footers.
* `UICollectionViewCell` also subclasses `UICollectionReusableView`.

![inline](resources/8EB76D50-40F5-4432-B694-7D50AEF616C8.png)

---
## [fit]UICollectionViewDataSource

![inline](resources/F4E1D7121D3AE9E553A6C4F32AE089F5.png)

--- 
## [fit]UICollectionViewDataSource Important Methods

```objc

// you should implement this and return the number of sections in your collection

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;

// you have to determine the number of items there are for each section and return it here
- (NSInteger)collectionView:(UICollectionView *)collectionView 
     numberOfItemsInSection:(NSInteger)section;

// this is where the model and view intersect
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView 
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath;
                  
// if including headers/footers implement this method

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView 
           viewForSupplementaryElementOfKind:(NSString *)kind 
                                 atIndexPath:(NSIndexPath *)indexPath;

```

---

##  [fit]UICollectionViewDelegate


![inline](resources/E308967382AEC33AF30DAD29917DB9F8.png)

```objc

  - (void)collectionView:(UICollectionView *)collectionView 
didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

```

---
## [fit]UICollectionViewFlowLayout

- Subclass of `UICollectionViewLayout`.

- Used for most grid style layouts.

- By default, a flow layout instance is automatically created and hooked up in IB.

- Access it using the `UICollectionView`'s `collectionViewLayout` property.   (🎗 You will need to cast this).

- What is the difference between a collectionview added as a subview in a UIViewController and a `UICollectionViewController`? (Make sure you understand this)

---

## [fit]UICollectionViewFlowLayout

- You can setup static values for the flowlayout in the storyboard. 

- 🎗 static default flowlayout values automatically set in storyboard may affect your layout & give you results you aren't expecting 🚑.

- Storyboard is a good place to look to see what properties the layout has. Experiment.

- To setup values that are *relative* to the view's dimensions use `viewDidLoad` or `viewWillLayoutSubviews`. (Setting up flow layout dimensions in storyboard does not allow us to make our layout relative to the current screen size).

---

![inline](resources/C39E6408DCFBAEA688297826AA369E4A.png)

---

```objc




// some property definitions
@property (nonatomic) CGFloat minimumInteritemSpacing;
@property (nonatomic) CGFloat minimumLineSpacing;
@property (nonatomic) UICollectionViewScrollDirection scrollDirection;

// E.g. of casting layout setup in IB to `UICollectionViewFlowLayout`

UICollectionViewFlowLayout* layout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
layout.minimumLineSpacing = 10;


```

---

![inline](resources/4324C4343B4D829E384E7FE53257E520.png)

---

![inline](resources/287FF8B03ED6DB028C64E3C405306D50.png)

---

## [fit] UICollectionViewDelegateFlowLayout


- You can also setup a delegate to create dynamically sized cells using `UICollectionViewDelegateFlowLayout`.

```objc

- (CGSize)collectionView:(UICollectionView *)collectionView 
                  layout:(UICollectionViewLayout *)collectionViewLayout 
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

```

---

## UICollectionViewLayout

- You can customize UICollectionViewFlowLayout by subclassing it.
- You can also create a custom layout class by subclassing `UICollectionViewLayout` and setting your instance to the `collectionViewLayout` property (can be done in IB).
- Layouts can be switched at run time with animations.
- Subclasses of `UICollectionViewLayout` must override the following:

`collectionViewContentSize`

`layoutAttributesForElementsInRect:`

`layoutAttributesForItemAtIndexPath:`

and 

`shouldInvalidateLayoutForBoundsChange:`

---

![inline](resources/5B321A5819F060FBD4053FE44D5B1996.png)

--- 

![inline](resources/4A0757D960FD5D09D66C5CC5784CD802.png)



