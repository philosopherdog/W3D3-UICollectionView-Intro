  //
  //  DetailViewController.m
  //  WabiSabiCollectionView
  //
  //  Created by steve on 2018-08-14.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "DetailViewController.h"
#import "Photo.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.imageView.image = self.photo.image;
}

// Wrong way to do it.

//- (void)setPhoto:(Photo *)photo {
//  self.imageView.image = photo.image;
//  _photo = photo;
//}


@end
