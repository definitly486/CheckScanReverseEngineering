.class public final Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;
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
    name = "Failure"
.end annotation


# instance fields
.field private final error:Lcom/yandex/mobile/ads/common/AdRequestError;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/AdRequestError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;->error:Lcom/yandex/mobile/ads/common/AdRequestError;

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
    const-class v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;->error:Lcom/yandex/mobile/ads/common/AdRequestError;

    iget-object p1, p1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;->error:Lcom/yandex/mobile/ads/common/AdRequestError;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;->error:Lcom/yandex/mobile/ads/common/AdRequestError;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/common/AdRequestError;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Failure;->error:Lcom/yandex/mobile/ads/common/AdRequestError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
