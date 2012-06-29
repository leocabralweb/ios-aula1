//
//  ViewController.h
//  01aMundo
//
//  Created by ios2749 on 26/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    // Hello World
    @property IBOutlet UILabel *meuLabel;
    @property IBOutlet UITextField *meuTexto;
    
    -(IBAction) atualizaLabel:(id)sender;

    // Soma
    @property IBOutlet UITextField *somar1;
    @property IBOutlet UITextField *somar2;
    @property IBOutlet UILabel *resultadoSoma;

    @property IBOutlet UISlider *slider1;
    @property IBOutlet UISlider *slider2;

    -(IBAction) soma:(id)sender;

    -(IBAction) valorAtualizado1:(id)sender;
    -(IBAction) valorAtualizado2:(id)sender;
    -(IBAction) valueToSlide1:(id)sender;
    -(IBAction) valueToSlide2:(id)sender;

    -(void) atualizaCampoSoma:(UITextField *)target withValue:(float)value;
    -(void) atualizaSliderSoma:(UISlider *)slider withValue:(float)value;


    // Tabuada
    @property IBOutlet UITextField *numero;
    -(IBAction) tabuada:(id)sender;

@end
