  //
  //  WabiSabiViewController.m
  //  WabiSabiCollectionView
  //
  //  Created by steve on 2018-08-14.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "WabiSabiViewController.h"
#import "DataManager.h"
#import "WabiSabiCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"
#import "DetailViewController.h"

@interface WabiSabiViewController ()<UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) DataManager *manager;
@end

@implementation WabiSabiViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"WabiSabi";
  self.manager = [[DataManager alloc] init];
}

- (void)viewWillLayoutSubviews {
  UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
  layout.sectionHeadersPinToVisibleBounds = YES;
  CGSize size = CGSizeMake(self.collectionView.bounds.size.width/2, self.collectionView.bounds.size.width/2);
  layout.itemSize = size;
}

#pragma mark - DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return [self.manager numberOfItemsInSection:section];
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return [self.manager numberOfSections];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  WabiSabiCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
  cell.photo = [self.manager photoAtIndexPath:indexPath];
  return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {

  HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
  PhotoCategory *category = [self.manager photoCategoryAtIndexPath:indexPath];
  [header configureWithCategory:category];
  return header;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"DetailViewController"]) {
    DetailViewController *detailVC = segue.destinationViewController;
    WabiSabiCollectionViewCell *cell = (WabiSabiCollectionViewCell *)sender;
//    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
//    Photo *photo = [self.manager photoAtIndexPath:indexPath];
    Photo *photo = cell.photo;
    detailVC.photo = photo;
  }

}


@end
