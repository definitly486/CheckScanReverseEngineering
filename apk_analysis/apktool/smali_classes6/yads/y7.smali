.class public final Lyads/y7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;
    .locals 3

    const-string v0, "com.yandex.mobile.ads.quality.AdQualityVerifierAdapter"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lyads/f55;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :goto_0
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    check-cast v2, Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    return-object v2
.end method
