//___FILEHEADER___

@import Foundation

#import "___FILEBASENAME___.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end


#pragma mark - Class Variables

static ___FILEBASENAMEASIDENTIFIER___ *_sharedInstance;


#pragma mark - Class Definition

@implementation ___FILEBASENAMEASIDENTIFIER___


#pragma mark - Properties


#pragma mark - Constructors

+ (void)initialize
{
	// NOTE: initialize is called in a thead-safe manner so we don't need to worry about two shared instances possibly being created.
	
	// Create a flag to keep track of whether or not this class has been initialized because this method could be called a second time if a subclass does not override it.
	static BOOL classInitialized = NO;
	
	// If this class has not been initialized then create the shared instance.
	if (classInitialized == NO)
	{
		_sharedInstance = [[___FILEBASENAMEASIDENTIFIER___ alloc] 
			init];
		
		classInitialized = YES;
	}
}

+ (id)allocWithZone: (NSZone *)zone
{
	// Because we are creating the shared instance in the +initialize method we can check if it exists here to know if we should alloc an instance of the class.
	if (_sharedInstance == nil)
	{
		return [super allocWithZone: zone];
	}
	else
	{
	    return [self sharedInstance];
	}
}

- (id)init
{
	// Abort if base initializer fails.
	if ((self = [super init]) == nil)
	{
		return nil;
	}
	
	// Initialize instance variables.
	
	// Return initialized instance.
	return self;
}


#pragma mark - Public Methods

+ (___FILEBASENAMEASIDENTIFIER___ *)sharedInstance
{
	return _sharedInstance;
}


#pragma mark - Overridden Methods

- (id)copyWithZone: (NSZone *)zone
{
	return self;
}


#pragma mark - Private Methods


@end