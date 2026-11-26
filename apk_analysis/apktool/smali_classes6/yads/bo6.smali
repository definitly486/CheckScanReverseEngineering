.class public final Lyads/bo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    return-void
.end method

.method public static final a(Lyads/bo6;)Lj59;
    .locals 0

    .line 24
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onAdClicked()V

    .line 25
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/bo6;Lyads/fm6;)Lj59;
    .locals 0

    .line 21
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onAdFailedToShow(Lcom/yandex/mobile/ads/common/AdError;)V

    .line 22
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/bo6;Lyads/tm6;)Lj59;
    .locals 0

    .line 30
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onAdImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V

    .line 31
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/bo6;Lyads/zn6;)Lj59;
    .locals 0

    .line 34
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onRewarded(Lcom/yandex/mobile/ads/rewarded/Reward;)V

    .line 35
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/bo6;)Lj59;
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onAdDismissed()V

    .line 13
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c(Lyads/bo6;)Lj59;
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/bo6;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;->onAdShown()V

    .line 13
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 23
    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lpg0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lpg0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final a(Lyads/j5;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lyads/tm6;

    invoke-direct {v0, p1}, Lyads/tm6;-><init>(Lyads/j5;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lbg8;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lbg8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final a(Lyads/mk5;)V
    .locals 2

    .line 26
    new-instance v0, Lyads/fm6;

    .line 27
    iget-object p1, p1, Lyads/mk5;->a:Ljava/lang/String;

    .line 28
    invoke-direct {v0, p1}, Lyads/fm6;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Luo9;

    invoke-direct {v1, p0, v0}, Luo9;-><init>(Lyads/bo6;Lyads/fm6;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final a(Lyads/s95;)V
    .locals 3

    .line 32
    new-instance v0, Lyads/zn6;

    invoke-direct {v0, p1}, Lyads/zn6;-><init>(Lyads/s95;)V

    .line 33
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Log0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Log0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lg22;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg22;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lsk;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lsk;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method
