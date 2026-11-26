.class public abstract Lyads/u54;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1278
    invoke-static {}, Lyads/w54;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 33

    new-instance v1, Lyads/w54;

    sget-object v0, Lyads/s64;->e:Lyads/s64;

    new-instance v2, Lyads/v54;

    const-string v3, "AppLovinBannerAdapter"

    const-string v4, "banner"

    invoke-static {v4, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Banner"

    invoke-direct {v2, v5, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/v54;

    const-string v6, "AppLovinInterstitialAdapter"

    const-string v7, "interstitial"

    invoke-static {v7, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Interstitial"

    invoke-direct {v3, v8, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v9, "AppLovinRewardedAdapter"

    const-string v10, "rewarded"

    invoke-static {v10, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Rewarded"

    invoke-direct {v6, v11, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v6}, [Lyads/v54;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "AppLovin"

    invoke-direct {v1, v3, v0, v2}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v2, Lyads/w54;

    sget-object v0, Lyads/s64;->f:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "AppLovinMaxBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v9, "AppLovinMaxInterstitialAdapter"

    invoke-static {v7, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v12, "AppLovinMaxRewardedAdapter"

    invoke-static {v10, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v6, v9}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "AppLovinMax"

    invoke-direct {v2, v6, v0, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v3, Lyads/w54;

    sget-object v0, Lyads/s64;->g:Lyads/s64;

    new-instance v6, Lyads/v54;

    const-string v9, "AppNextBannerAdapter"

    invoke-static {v4, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v5, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v12, "AppNextInterstitialAdapter"

    invoke-static {v7, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v8, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "AppNextNativeAdapter"

    const-string v14, "nativeads"

    invoke-static {v14, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Native"

    invoke-direct {v12, v15, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v16, v1

    const-string v1, "AppNextRewardedAdapter"

    invoke-static {v10, v1}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v11, v1}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v9, v12, v13}, [Lyads/v54;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "Appnext"

    invoke-direct {v3, v6, v0, v1}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v0, Lyads/w54;

    sget-object v1, Lyads/s64;->h:Lyads/s64;

    new-instance v6, Lyads/v54;

    const-string v9, "BigoAdsAppOpenAdAdapter"

    const-string v12, "appopen"

    invoke-static {v12, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "AppOpen"

    invoke-direct {v6, v13, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    move-object/from16 v17, v2

    const-string v2, "BigoAdsBannerAdapter"

    invoke-static {v4, v2}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v5, v2}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lyads/v54;

    move-object/from16 v18, v3

    const-string v3, "BigoAdsInterstitialAdapter"

    invoke-static {v7, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/v54;

    move-object/from16 v19, v13

    const-string v13, "BigoAdsNativeAdapter"

    invoke-static {v14, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v15, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v20, v12

    const-string v12, "BigoAdsRewardedAdapter"

    invoke-static {v10, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v11, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v9, v2, v3, v13}, [Lyads/v54;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "BigoAds"

    invoke-direct {v0, v3, v1, v2}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v1, Lyads/w54;

    sget-object v2, Lyads/s64;->i:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "ChartboostBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v9, "ChartboostInterstitialAdapter"

    invoke-static {v7, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v12, "ChartboostRewardedAdapter"

    invoke-static {v10, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v6, v9}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "Chartboost"

    invoke-direct {v1, v6, v2, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v6, Lyads/w54;

    sget-object v2, Lyads/s64;->l:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v9, "DigitalTurbineBannerAdapter"

    invoke-static {v4, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v5, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v12, "DigitalTurbineInterstitialAdapter"

    invoke-static {v7, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v8, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "DigitalTurbineRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v21, v0

    const-string v0, "DigitalTurbineNativeAdapter"

    invoke-static {v14, v0}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v15, v0}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v9, v12, v13}, [Lyads/v54;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "DigitalTurbine"

    invoke-direct {v6, v3, v2, v0}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v0, Lyads/w54;

    sget-object v2, Lyads/s64;->j:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v9, "AdMobAppOpenAdAdapter"

    move-object/from16 v12, v20

    invoke-static {v12, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, v19

    invoke-direct {v3, v13, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    move-object/from16 v19, v1

    const-string v1, "AdMobBannerAdapter"

    invoke-static {v4, v1}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v5, v1}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/v54;

    move-object/from16 v20, v6

    const-string v6, "AdMobInterstitialAdapter"

    invoke-static {v7, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v8, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    move-object/from16 v22, v13

    const-string v13, "AdMobNativeAdapter"

    invoke-static {v14, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v15, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v23, v12

    const-string v12, "AdMobRewardedAdapter"

    invoke-static {v10, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v11, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v9, v1, v6, v13}, [Lyads/v54;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "AdMob"

    invoke-direct {v0, v3, v2, v1}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v1, Lyads/w54;

    sget-object v2, Lyads/s64;->k:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "AdManagerBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v9, "AdManagerInterstitialAdapter"

    invoke-static {v7, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v12, "AdManagerNativeAdapter"

    invoke-static {v14, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v15, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "AdManagerRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v6, v9, v12}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "AdManager"

    invoke-direct {v1, v6, v2, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v9, Lyads/w54;

    sget-object v2, Lyads/s64;->m:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "InMobiBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v12, "InMobiInterstitialAdapter"

    invoke-static {v7, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v8, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "InMobiRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v6, v12}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "InMobi"

    invoke-direct {v9, v6, v2, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v2, Lyads/w54;

    sget-object v3, Lyads/s64;->n:Lyads/s64;

    new-instance v6, Lyads/v54;

    const-string v12, "IronSourceBannerAdapter"

    invoke-static {v4, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v5, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "IronSourceInterstitialAdapter"

    invoke-static {v7, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v8, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v24, v0

    const-string v0, "IronSourceRewardedAdapter"

    invoke-static {v10, v0}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v11, v0}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v12, v13}, [Lyads/v54;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v6, "IronSource"

    invoke-direct {v2, v6, v3, v0}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v0, Lyads/w54;

    sget-object v3, Lyads/s64;->o:Lyads/s64;

    new-instance v6, Lyads/v54;

    const-string v12, "MintegralAppOpenAdAdapter"

    move-object/from16 v13, v23

    invoke-static {v13, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    invoke-direct {v6, v1, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    move-object/from16 v22, v2

    const-string v2, "MintegralBannerAdapter"

    invoke-static {v4, v2}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v5, v2}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lyads/v54;

    move-object/from16 v25, v9

    const-string v9, "MintegralInterstitialAdapter"

    invoke-static {v7, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    move-object/from16 v26, v1

    const-string v1, "MintegralNativeAdapter"

    invoke-static {v14, v1}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v15, v1}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/v54;

    move-object/from16 v27, v13

    const-string v13, "MintegralRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v12, v2, v9, v1}, [Lyads/v54;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Mintegral"

    invoke-direct {v0, v2, v3, v1}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v12, Lyads/w54;

    sget-object v1, Lyads/s64;->p:Lyads/s64;

    new-instance v2, Lyads/v54;

    const-string v3, "MyTargetBannerAdapter"

    invoke-static {v4, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/v54;

    const-string v6, "MyTargetInterstitialAdapter"

    invoke-static {v7, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v8, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v9, "MyTargetNativeAdapter"

    invoke-static {v14, v9}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v15, v9}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lyads/v54;

    const-string v13, "MyTargetRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v6, v9}, [Lyads/v54;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "MyTarget"

    invoke-direct {v12, v3, v1, v2}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v13, Lyads/w54;

    sget-object v1, Lyads/s64;->q:Lyads/s64;

    new-instance v2, Lyads/v54;

    const-string v3, "PangleAppOpenAdAdapter"

    move-object/from16 v6, v27

    invoke-static {v6, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, v26

    invoke-direct {v2, v9, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/v54;

    move-object/from16 v26, v0

    const-string v0, "PangleBannerAdapter"

    invoke-static {v4, v0}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lyads/v54;

    move-object/from16 v27, v12

    const-string v12, "PangleInterstitialAdapter"

    invoke-static {v7, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v8, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    move-object/from16 v28, v8

    const-string v8, "PangleNativeAdapter"

    invoke-static {v14, v8}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v15, v8}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lyads/v54;

    move-object/from16 v29, v15

    const-string v15, "PangleRewardedAdapter"

    invoke-static {v10, v15}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v11, v15}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v0, v12, v8}, [Lyads/v54;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "Pangle"

    invoke-direct {v13, v2, v1, v0}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v0, Lyads/w54;

    sget-object v1, Lyads/s64;->r:Lyads/s64;

    new-instance v2, Lyads/v54;

    const-string v3, "PetalAdsAppOpenAdAdapter"

    invoke-static {v6, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/v54;

    const-string v8, "PetalAdsBannerAdapter"

    invoke-static {v4, v8}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lyads/v54;

    const-string v12, "PetalAdsInterstitialAdapter"

    invoke-static {v7, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v15, v28

    invoke-direct {v8, v15, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    move-object/from16 v28, v13

    const-string v13, "PetalAdsNativeAdapter"

    invoke-static {v14, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v30, v9

    move-object/from16 v9, v29

    invoke-direct {v12, v9, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v29, v6

    const-string v6, "PetalAdsRewardedAdapter"

    invoke-static {v10, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v11, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v8, v12, v13}, [Lyads/v54;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "PetalAds"

    invoke-direct {v0, v3, v1, v2}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v1, Lyads/w54;

    sget-object v2, Lyads/s64;->s:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "StartAppBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v8, "StartAppInterstitialAdapter"

    invoke-static {v7, v8}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v15, v8}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lyads/v54;

    const-string v12, "StartAppNativeAdapter"

    invoke-static {v14, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "StartAppRewardedAdapter"

    invoke-static {v10, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v6, v8, v12}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "StartApp"

    invoke-direct {v1, v6, v2, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v2, Lyads/w54;

    sget-object v3, Lyads/s64;->t:Lyads/s64;

    new-instance v6, Lyads/v54;

    const-string v8, "TapJoyInterstitialAdapter"

    invoke-static {v7, v8}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v15, v8}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lyads/v54;

    const-string v12, "TapJoyRewardedAdapter"

    invoke-static {v10, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v8}, [Lyads/v54;

    move-result-object v6

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v8, "TapJoy"

    invoke-direct {v2, v8, v3, v6}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v3, Lyads/w54;

    sget-object v6, Lyads/s64;->u:Lyads/s64;

    new-instance v8, Lyads/v54;

    const-string v12, "UnityAdsBannerAdapter"

    invoke-static {v4, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v5, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "UnityAdsInterstitialAdapter"

    invoke-static {v7, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v15, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v31, v0

    const-string v0, "UnityAdsRewardedAdapter"

    invoke-static {v10, v0}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v11, v0}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v8, v12, v13}, [Lyads/v54;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v8, "UnityAds"

    invoke-direct {v3, v8, v6, v0}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v0, Lyads/w54;

    sget-object v6, Lyads/s64;->v:Lyads/s64;

    new-instance v8, Lyads/v54;

    const-string v12, "VungleAppOpenAdAdapter"

    move-object/from16 v13, v29

    invoke-static {v13, v12}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v30

    invoke-direct {v8, v13, v12}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyads/v54;

    const-string v13, "VungleBannerAdapter"

    invoke-static {v4, v13}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v5, v13}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lyads/v54;

    move-object/from16 v29, v1

    const-string v1, "VungleInterstitialAdapter"

    invoke-static {v7, v1}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v15, v1}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/v54;

    move-object/from16 v30, v2

    const-string v2, "VungleNativeAdapter"

    invoke-static {v14, v2}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lyads/v54;

    move-object/from16 v32, v3

    const-string v3, "VungleRewardedAdapter"

    invoke-static {v10, v3}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v8, v12, v13, v1, v2}, [Lyads/v54;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Vungle"

    invoke-direct {v0, v2, v6, v1}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    new-instance v1, Lyads/w54;

    sget-object v2, Lyads/s64;->w:Lyads/s64;

    new-instance v3, Lyads/v54;

    const-string v6, "MaticooBannerAdapter"

    invoke-static {v4, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lyads/v54;

    const-string v5, "MaticooInterstitialAdapter"

    invoke-static {v7, v5}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v15, v5}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lyads/v54;

    const-string v6, "MaticooNativeAdapter"

    invoke-static {v14, v6}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lyads/v54;

    const-string v7, "MaticooRewardedAdapter"

    invoke-static {v10, v7}, Lyads/u54;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v4, v5, v6}, [Lyads/v54;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "zMaticoo"

    invoke-direct {v1, v4, v2, v3}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move-object/from16 v10, v22

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v9, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v15, v29

    move-object/from16 v14, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v30

    filled-new-array/range {v1 .. v19}, [Lyads/w54;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
