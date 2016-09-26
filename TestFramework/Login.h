#import <Foundation/Foundation.h>
#import <DocuSignESign/DSEnvelopeTemplate.h>
#import <CoreData/CoreData.h>

@interface Login : NSObject

- (void)userAccountIDforUserName: (NSString *)username  password:(NSString *)password integrationKey:(NSString *)integrationKey completionBlock:(void(^)(NSString *)) completionBlock;

@end
