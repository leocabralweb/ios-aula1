//
//  ViewController.m
//  01aMundo
//
//  Created by ios2749 on 26/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize meuLabel, meuTexto;
@synthesize somar1, somar2, resultadoSoma, slider1, slider2;
@synthesize numero;


-(IBAction)atualizaLabel:(id)sender 
{
    [meuLabel setText:[meuTexto text]];
    NSLog(@"digitado pelo usuário: %@", [meuTexto text]);
}


-(IBAction)soma:(id)sender
{
    float resultado = [[somar1 text] floatValue] + [[somar2 text] floatValue];
    //NSString *valor = [NSString stringWithFormat:@"%d", resultado];
    //[resultadoSoma setText:valor];
    
    [resultadoSoma setText:[NSString stringWithFormat:@"%f", resultado]];
}

-(IBAction)valorAtualizado1:(id)sender
{
    [self atualizaCampoSoma:somar1 withValue:[slider1 value]];
}

-(IBAction)valorAtualizado2:(id)sender
{
    [self atualizaCampoSoma:somar2 withValue:[slider2 value]];
}

-(IBAction)valueToSlide1:(id)sender
{
    [self atualizaSliderSoma:slider1 withValue:[[sender text] floatValue]];
}

-(IBAction)valueToSlide2:(id)sender
{
    [self atualizaSliderSoma:slider2 withValue:[[sender text] floatValue]];
}

-(void) atualizaCampoSoma:(UITextField *)target withValue:(float)value
{
    [target setText:[NSString stringWithFormat:@"%f", value]];
}

-(void)atualizaSliderSoma:(UISlider *)slider withValue:(float)value
{
    [slider setValue: value];
}

-(IBAction)tabuada:(id)sender
{
    int numeroBase = [[numero text] intValue];
    
    for (int mult=1; mult<=10; mult++) {
        int result = numeroBase * mult;
        NSLog(@"Tabuada %d x %d = %d", numeroBase, mult, result);
    }
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
