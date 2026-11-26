.class public final Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_RESULT_INTENT_EXTRA_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final ACTIVITY_RESULT_INTENT_EXTRA_STATUS_CODE:Ljava/lang/String; = "STATUS_CODE"

.field public static final INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;

.field public static final PHONE_VERIFICATION_STATUS_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.PHONE_VERIFICATION_STATUS_INTENT_ACTION"

.field public static final PHONE_VERIFICATION_STATUS_INTENT_EXTRA:Ljava/lang/String; = "PHONE_VERIFICATION_STATUS_INTENT_EXTRA"

.field public static final SEND_PERMISSION:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.permission.SEND"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;->INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetriever;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverClient;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;ILjh2;)V

    return-object v0
.end method

.method public static final getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverClient;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;ILjh2;)V

    return-object v0
.end method
