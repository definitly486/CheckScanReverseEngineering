.class public final enum Lyads/xt2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/xt2;

.field public static final enum d:Lyads/xt2;

.field public static final enum e:Lyads/xt2;

.field public static final enum f:Lyads/xt2;

.field public static final synthetic g:[Lyads/xt2;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/xt2;

    const/4 v1, 0x0

    const-string v2, "AdPodSkipFeatureToggle"

    const-string v3, "AD_POD_SKIP"

    invoke-direct {v0, v3, v1, v2}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/xt2;

    const/4 v2, 0x1

    const-string v3, "InterstitialPreloading"

    const-string v4, "INTERSTITIAL_PRELOADING"

    invoke-direct {v1, v4, v2, v3}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/xt2;

    const/4 v3, 0x2

    const-string v4, "RewardedPreloading"

    const-string v5, "REWARDED_PRELOADING"

    invoke-direct {v2, v5, v3, v4}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/xt2;

    const/4 v4, 0x3

    const-string v5, "FirstVideoPreloadingStrategyFeatureToggle"

    const-string v6, "FIRST_VIDEO_PRELOADING_STRATEGY"

    invoke-direct {v3, v6, v4, v5}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/xt2;->c:Lyads/xt2;

    new-instance v4, Lyads/xt2;

    const/4 v5, 0x4

    const-string v6, "TestingNewAdapterFeatureToggle"

    const-string v7, "TESTING_NEW_ADAPTER"

    invoke-direct {v4, v7, v5, v6}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/xt2;->d:Lyads/xt2;

    new-instance v5, Lyads/xt2;

    const/4 v6, 0x5

    const-string v7, "FallbackForVideoFeatureToggle"

    const-string v8, "FALLBACK_FOR_VIDEO"

    invoke-direct {v5, v8, v6, v7}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/xt2;->e:Lyads/xt2;

    new-instance v6, Lyads/xt2;

    const/4 v7, 0x6

    const-string v8, "BackgroundNativeVideoPreloading"

    const-string v9, "BACKGROUND_NATIVE_VIDEO_PRELOADING"

    invoke-direct {v6, v9, v7, v8}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lyads/xt2;

    const/4 v8, 0x7

    const-string v9, "DontWaitForWebViewLoadFinishOnPreloading"

    const-string v10, "DONT_WAIT_FOR_WEB_VIEW_LOAD_FINISH_ON_PRELOADING"

    invoke-direct {v7, v10, v8, v9}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lyads/xt2;

    const/16 v9, 0x8

    const-string v10, "AppHarbrQualityVerificationEnabled"

    const-string v11, "APP_HARBR_QUALITY_VERIFICATION"

    invoke-direct {v8, v11, v9, v10}, Lyads/xt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lyads/xt2;->f:Lyads/xt2;

    filled-new-array/range {v0 .. v8}, [Lyads/xt2;

    move-result-object v0

    sput-object v0, Lyads/xt2;->g:[Lyads/xt2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/xt2;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/xt2;
    .locals 1

    const-class v0, Lyads/xt2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/xt2;

    return-object p0
.end method

.method public static values()[Lyads/xt2;
    .locals 1

    sget-object v0, Lyads/xt2;->g:[Lyads/xt2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/xt2;

    return-object v0
.end method
