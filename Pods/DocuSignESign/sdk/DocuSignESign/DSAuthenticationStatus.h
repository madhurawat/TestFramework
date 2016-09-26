#import <Foundation/Foundation.h>
#import "DSObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "DSEventResult.h"


@protocol DSAuthenticationStatus
@end

@interface DSAuthenticationStatus : DSObject


@property(nonatomic) DSEventResult* accessCodeResult;

@property(nonatomic) DSEventResult* phoneAuthResult;

@property(nonatomic) DSEventResult* idLookupResult;

@property(nonatomic) DSEventResult* idQuestionsResult;

@property(nonatomic) DSEventResult* ageVerifyResult;

@property(nonatomic) DSEventResult* sTANPinResult;

@property(nonatomic) DSEventResult* ofacResult;

@property(nonatomic) DSEventResult* liveIDResult;

@property(nonatomic) DSEventResult* facebookResult;

@property(nonatomic) DSEventResult* googleResult;

@property(nonatomic) DSEventResult* linkedinResult;

@property(nonatomic) DSEventResult* salesforceResult;

@property(nonatomic) DSEventResult* twitterResult;

@property(nonatomic) DSEventResult* openIDResult;

@property(nonatomic) DSEventResult* anySocialIDResult;

@property(nonatomic) DSEventResult* yahooResult;

@property(nonatomic) DSEventResult* smsAuthResult;

@end
