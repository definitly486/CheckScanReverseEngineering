.class public final Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation


# instance fields
.field private final adCounterKey:I

.field private final interval:Ljava/time/Duration;

.field private final maxCount:I


# direct methods
.method public constructor <init>(IILjava/time/Duration;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    iput p2, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/common/KeyedFrequencyCap;
    .locals 3

    new-instance v0, Landroid/adservices/common/KeyedFrequencyCap$Builder;

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    new-instance v2, Landroid/adservices/common/KeyedFrequencyCap$Builder;

    invoke-direct {v2, v0, v1, p0}, Landroid/adservices/common/KeyedFrequencyCap$Builder;-><init>(IILjava/time/Duration;)V

    invoke-virtual {v2}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->build()Landroid/adservices/common/KeyedFrequencyCap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    check-cast p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAdCounterKey()I
    .locals 0

    iget p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    return p0
.end method

.method public final getInterval()Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    return-object p0
.end method

.method public final getMaxCount()I
    .locals 0

    iget p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyedFrequencyCap: adCounterKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
