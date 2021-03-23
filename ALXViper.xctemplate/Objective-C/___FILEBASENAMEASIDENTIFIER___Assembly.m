//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___VARIABLE_viperModuleName___Assembly.h"
#import "ALXNetworkAdapter.h"
#import "VCFactory.h"


#pragma mark - Interface

@interface ___VARIABLE_viperModuleName___Assembly()


#pragma mark - Properties

@property (nonatomic, weak) id<___VARIABLE_viperModuleName___PresenterModuleInput> moduleInput;


@end


#pragma mark - Implementation

@implementation ___VARIABLE_viperModuleName___Assembly


#pragma mark - ALXAssemblyProtocol Methods

- (UIViewController *)assemblyModule {
    
    return [self createModule];
}


- (id<___VARIABLE_viperModuleName___PresenterModuleInput>)moduleInput {
    
    return self.moduleInput;
}


#pragma mark - Private Methods

- (___VARIABLE_viperModuleName___ViewController *)createModule {
    ___VARIABLE_viperModuleName___ViewController *viewController = [VCFactory VC];
    viewController.presenter = [self presenterModuleWithVC:viewController];
    
    return viewController;
}


- (___VARIABLE_viperModuleName___Presenter *)presenterModuleWithVC:(___VARIABLE_viperModuleName___ViewController *)viewController {
    ___VARIABLE_viperModuleName___Presenter *presenter = [[___VARIABLE_viperModuleName___Presenter alloc] init];
    self.moduleInput = presenter;
    presenter.userInterface = viewController;
    presenter.interactor = [self interactorModule];
    presenter.router = [self routerWithTransitionHandler:viewController];
    
    return presenter;
}


- (___VARIABLE_viperModuleName___Interactor *)interactorModule {
    ___VARIABLE_viperModuleName___Interactor *interactor = [[___VARIABLE_viperModuleName___Interactor alloc] init];

    return interactor;
}


- (___VARIABLE_viperModuleName___Router *)routerWithTransitionHandler:(id)transitionHandler {
    ___VARIABLE_viperModuleName___Router *router = [[___VARIABLE_viperModuleName___Router alloc] init];
    router.transitionHandler = transitionHandler;
    
    return router;
}

@end

