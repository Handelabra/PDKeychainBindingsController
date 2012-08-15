//
//  PDKeychainBindingsController.h
//  PDKeychainBindingsController
//
//  Created by Carl Brown on 7/10/11.
//  Copyright 2011 PDAgent, LLC. Released under MIT License.
//

#import <Foundation/Foundation.h>
#import "PDKeychainBindings.h"


@interface PDKeychainBindingsController : NSObject {
@private
    PDKeychainBindings *_keychainBindings;
    NSMutableDictionary *_valueBuffer;
}

+ (PDKeychainBindingsController *)sharedKeychainBindingsController;
- (PDKeychainBindings *) keychainBindings;

- (id)values;    // accessor object for PDKeychainBindings values. This property is observable using key-value observing.

- (NSString*)stringForKey:(NSString*)key;
- (BOOL)storeString:(NSString*)string forKey:(NSString*)key;

- (id)objectForKey:(NSString*)key;
- (BOOL)storeObject:(id)obj forKey:(NSString*)key;

- (NSArray*)arrayForKey:(NSString*)key;
- (BOOL)storeArray:(NSArray*)array forKey:(NSString*)key;

- (NSDictionary*)dictionaryForKey:(NSString*)key;
- (BOOL)storeDictionary:(NSDictionary*)dict forKey:(NSString*)key;

@end

