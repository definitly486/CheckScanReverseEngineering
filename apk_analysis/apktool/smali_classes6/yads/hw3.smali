.class public final enum Lyads/hw3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/hw3;

.field public static final enum d:Lyads/hw3;

.field public static final enum e:Lyads/hw3;

.field public static final enum f:Lyads/hw3;

.field public static final enum g:Lyads/hw3;

.field public static final enum h:Lyads/hw3;

.field public static final enum i:Lyads/hw3;

.field public static final enum j:Lyads/hw3;

.field public static final synthetic k:[Lyads/hw3;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/hw3;

    const-string v1, "AUTOMATIC_SDK_INITIALIZATION"

    const/4 v2, 0x0

    const-string v3, "com.yandex.mobile.ads.AUTOMATIC_SDK_INITIALIZATION"

    invoke-direct {v0, v1, v2, v3}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/hw3;->c:Lyads/hw3;

    new-instance v1, Lyads/hw3;

    const-string v2, "AGE_RESTRICTED_USER"

    const/4 v3, 0x1

    const-string v4, "com.yandex.mobile.ads.AGE_RESTRICTED_USER"

    invoke-direct {v1, v2, v3, v4}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/hw3;->d:Lyads/hw3;

    new-instance v2, Lyads/hw3;

    const-string v3, "ENABLE_LOGGING"

    const/4 v4, 0x2

    const-string v5, "com.yandex.mobile.ads.ENABLE_LOGGING"

    invoke-direct {v2, v3, v4, v5}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/hw3;->e:Lyads/hw3;

    new-instance v3, Lyads/hw3;

    const-string v4, "AD_HOST"

    const/4 v5, 0x3

    const-string v6, "com.yandex.mobile.ads.AD_HOST"

    invoke-direct {v3, v4, v5, v6}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/hw3;->f:Lyads/hw3;

    new-instance v4, Lyads/hw3;

    const-string v5, "FALLBACK_HOSTS"

    const/4 v6, 0x4

    const-string v7, "com.yandex.mobile.ads.FALLBACK_HOSTS"

    invoke-direct {v4, v5, v6, v7}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/hw3;->g:Lyads/hw3;

    new-instance v5, Lyads/hw3;

    const-string v6, "APPMETRICA_EASY_INTEGRATION_ENABLED"

    const/4 v7, 0x5

    const-string v8, "com.yandex.mobile.ads.APPMETRICA_EASY_INTEGRATION_ENABLED"

    invoke-direct {v5, v6, v7, v8}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/hw3;->h:Lyads/hw3;

    new-instance v6, Lyads/hw3;

    const-string v7, "APPMETRICA_ANALYTICS_ENABLED"

    const/4 v8, 0x6

    const-string v9, "com.yandex.mobile.ads.APPMETRICA_ANALYTICS_ENABLED"

    invoke-direct {v6, v7, v8, v9}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/hw3;->i:Lyads/hw3;

    new-instance v7, Lyads/hw3;

    const-string v8, "SINGLE_ASSEMBLY_ENABLED"

    const/4 v9, 0x7

    const-string v10, "com.yandex.mobile.ads.SINGLE_ASSEMBLY_ENABLED"

    invoke-direct {v7, v8, v9, v10}, Lyads/hw3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/hw3;->j:Lyads/hw3;

    filled-new-array/range {v0 .. v7}, [Lyads/hw3;

    move-result-object v0

    sput-object v0, Lyads/hw3;->k:[Lyads/hw3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/hw3;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/hw3;
    .locals 1

    const-class v0, Lyads/hw3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/hw3;

    return-object p0
.end method

.method public static values()[Lyads/hw3;
    .locals 1

    sget-object v0, Lyads/hw3;->k:[Lyads/hw3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/hw3;

    return-object v0
.end method
