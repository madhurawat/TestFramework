#import <Foundation/Foundation.h>
#import "Login.h"
#import <DocuSignESign/DSApiClient.h>
#import <DocuSignESign/DSAuthenticationApi.h>
#import <DocuSignESign/DSEnvelopesApi.h>
#import <DocuSignESign/DSTemplatesApi.h>

@interface Login ()
@property (nonatomic, strong) NSString *accountID;
@property (nonatomic, strong) NSString *host ;
@property (nonatomic, strong) NSString *IntegratorKey;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (strong) NSManagedObjectContext *managedObjectContext;

@end

@implementation Login

- (void)userAccountIDforUserName: (NSString *)username  password:(NSString *)password integrationKey:(NSString *)integrationKey completionBlock:(void(^)(NSString *))completionBlock {
   
    NSString *host = @"https://demo.docusign.net/restapi";
    self.IntegratorKey = integrationKey;
    self.username = username;
    self.password = password;
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, integrationKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    // instantiate api client, configure environment URL and assign auth data
    DSApiClient* apiClient = [[DSApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:host]];
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc] initWithApiClient:apiClient];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    [authApi loginWithCompletionBlock:^(DSLoginInformation *output, NSError *error) {
        if (error) {
            NSLog(@"got error %@", error);
        }
        if (!output) {
            NSLog(@"response can't be nil");
        }
        DSLoginAccount *loginAccount = [output.loginAccounts objectAtIndex: 0];
        self.accountID = loginAccount.accountId;
        if (completionBlock) {
            completionBlock(loginAccount.accountId);
        }
    }];
    
  
}

@end
