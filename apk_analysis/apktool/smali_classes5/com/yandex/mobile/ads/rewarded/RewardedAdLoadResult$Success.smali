.class public final Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/rewarded/RewardedAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    iget-object p1, p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAd()Lcom/yandex/mobile/ads/rewarded/RewardedAd;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->ad:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success(ad="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
