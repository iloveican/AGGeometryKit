//
// Author: Håvard Fossli <hfossli@agens.no>
//
// Copyright (c) 2013 Agens AS (http://agens.no/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "AGRenderingSample.h"
#import "AGQuadKit.h"
#import "JAValueToString.h"

@interface AGRenderingSample ()

@property (nonatomic, strong) IBOutlet UIImageView *imageView1;
@property (nonatomic, strong) IBOutlet UIImageView *imageView2;

@end


@implementation AGRenderingSample

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.imageView1.layer ensureAnchorPointIsSetToZero];
}

- (IBAction)makeBlueFill:(id)sender
{
    AGQuad quad = [self quadForBlueToFill];
    
    self.imageView2.image = [[self originalImage] imageWithQuad:quad scale:2.0];
}

- (IBAction)makePurpleFill:(id)sender
{
    AGQuad quad = [self quadForPurpleFill];
    
    self.imageView2.image = [[self originalImage] imageWithQuad:quad scale:2.0];
}

- (UIImage *)originalImage
{
    return self.imageView1.image;
}

- (AGQuad)quadForBlueToFill
{
    /*
     I'm working on some way to calculate these numbers. I just grabbed these from photoshop....
     */
    AGQuad quad;
    quad.tl = AGPointMake(-90.0/2.0, -63.0/2.0);
    quad.tr = AGPointMake(2825.0/2.0, -1127.0/2.0);
    quad.bl = AGPointMake(-118.0/2.0, 766.0/2.0);
    quad.br = AGPointMake(10555.0/2.0, 1679.0/2.0);
    return quad;
}

- (AGQuad)quadForPurpleFill
{
    /*
     I'm working on some way to calculate these numbers. I just grabbed these from photoshop....
     */
    AGQuad quad;
    quad.tl = AGPointMake(-10714.0/2.0, -3700.0/2.0);
    quad.tr = AGPointMake(1933.0/2.0, -1189.0/2.0);
    quad.bl = AGPointMake(-1066.0/2.0, 813.0/2.0);
    quad.br = AGPointMake(912.0/2.0, 783.0/2.0);
    return quad;
}

@end
