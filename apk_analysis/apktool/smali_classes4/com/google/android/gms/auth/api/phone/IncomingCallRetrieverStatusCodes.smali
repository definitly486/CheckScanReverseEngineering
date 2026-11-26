.class public final Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "SourceFile"


# static fields
.field public static final API_UNAVAILABLE:I = 0xcf0b

.field public static final CONCURRENT_REQUESTS:I = 0xcf09

.field public static final FAILURE_OTHER:I = 0xcf10

.field public static final INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;

.field public static final INVALID_PHONE_NUMBER_RANGE:I = 0xcf0e

.field public static final IN_EMERGENCY_CALL:I = 0xcf0a

.field public static final RATE_LIMIT_REACHED:I = 0xcf0c

.field public static final TELEPHONY_FEATURE_UNAVAILABLE:I = 0xcf0d

.field public static final USER_CONSENT_DENIED:I = 0xcf0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;->INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVerificationStatusCodeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :pswitch_0
    const-string p0, "FAILURE_OTHER"

    return-object p0

    :pswitch_1
    const-string p0, "USER_CONSENT_DENIED"

    return-object p0

    :pswitch_2
    const-string p0, "INVALID_PHONE_NUMBER_RANGE"

    return-object p0

    :pswitch_3
    const-string p0, "TELEPHONY_FEATURE_UNAVAILABLE"

    return-object p0

    :pswitch_4
    const-string p0, "ERROR_REASON_RATE_LIMIT_REACHED"

    return-object p0

    :pswitch_5
    const-string p0, "API_NOT_AVAILABLE"

    return-object p0

    :pswitch_6
    const-string p0, "ERROR_REASON_IN_EMERGENCY_CALL"

    return-object p0

    :pswitch_7
    const-string p0, "ERROR_REASON_CONCURRENT_REQUESTS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xcf09
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
