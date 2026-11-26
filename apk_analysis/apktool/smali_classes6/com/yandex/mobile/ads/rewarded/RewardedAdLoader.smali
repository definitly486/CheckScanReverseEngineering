.class public final Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lyads/x80;

.field private final b:Lyads/im6;

.field private final c:Lyads/ha5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/do6;

    invoke-direct {v0, p1}, Lyads/do6;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/x80;

    invoke-direct {v1, p1, v0}, Lyads/x80;-><init>(Landroid/content/Context;Lyads/do6;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->a:Lyads/x80;

    new-instance p1, Lyads/im6;

    invoke-direct {p1}, Lyads/im6;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->b:Lyads/im6;

    new-instance p1, Lyads/ha5;

    invoke-direct {p1}, Lyads/ha5;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->c:Lyads/ha5;

    return-void
.end method


# virtual methods
.method public final cancelLoading()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->a:Lyads/x80;

    iget-object p0, p0, Lyads/x80;->a:Lyads/ga5;

    invoke-interface {p0}, Lyads/ga5;->a()V

    return-void
.end method

.method public final loadAd(Lcom/yandex/mobile/ads/common/AdRequest;Le02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/ia5;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/ia5;

    iget v1, v0, Lyads/ia5;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/ia5;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/ia5;

    invoke-direct {v0, p0, p2}, Lyads/ia5;-><init>(Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;Le02;)V

    :goto_0
    iget-object p2, v0, Lyads/ia5;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/ia5;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->b:Lyads/im6;

    invoke-virtual {p2, p1}, Lyads/im6;->a(Lcom/yandex/mobile/ads/common/AdRequest;)Lyads/n8;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->a:Lyads/x80;

    iput v4, v0, Lyads/ia5;->d:I

    iget-object p2, p2, Lyads/x80;->a:Lyads/ga5;

    invoke-interface {p2, p1, v0}, Lyads/ga5;->a(Lyads/n8;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lyads/l70;

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->c:Lyads/ha5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lyads/k70;

    if-eqz p0, :cond_4

    check-cast p2, Lyads/k70;

    iget-object p0, p2, Lyads/k70;->a:Ljava/lang/Object;

    check-cast p0, Lyads/ja5;

    new-instance p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;

    new-instance p2, Lyads/ao6;

    invoke-direct {p2, p0}, Lyads/ao6;-><init>(Lyads/ja5;)V

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;-><init>(Lcom/yandex/mobile/ads/rewarded/RewardedAd;)V

    return-object p1

    :cond_4
    instance-of p0, p2, Lyads/j70;

    if-eqz p0, :cond_5

    check-cast p2, Lyads/j70;

    iget-object p0, p2, Lyads/j70;->a:Ljava/lang/Object;

    check-cast p0, Lyads/m4;

    new-instance p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;

    invoke-static {p0}, Lyads/km6;->a(Lyads/m4;)Lcom/yandex/mobile/ads/common/AdRequestError;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;-><init>(Lcom/yandex/mobile/ads/common/AdRequestError;)V

    return-object p1

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3
.end method
