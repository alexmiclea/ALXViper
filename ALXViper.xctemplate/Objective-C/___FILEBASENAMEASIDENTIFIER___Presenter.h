//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "___VARIABLE_viperModuleName___PresenterModuleInput.h"
#import "___VARIABLE_viperModuleName___PresenterInput.h"
#import "___VARIABLE_viperModuleName___PresenterOutput.h"
#import "___VARIABLE_viperModuleName___Interactor.h"
#import "___VARIABLE_viperModuleName___Router.h"


#pragma mark - Interface

@interface ___VARIABLE_viperModuleName___Presenter : NSObject<___VARIABLE_viperModuleName___PresenterInput, ___VARIABLE_viperModuleName___PresenterModuleInput>


#pragma mark - Properties

@property (nonatomic, weak,) id<___VARIABLE_viperModuleName___PresenterOutput> userInterface;
@property (nonatomic, strong) id<___VARIABLE_viperModuleName___InteractorProtocol> interactor;
@property (nonatomic, strong) id<___VARIABLE_viperModuleName___RouterInput> router;


@end
