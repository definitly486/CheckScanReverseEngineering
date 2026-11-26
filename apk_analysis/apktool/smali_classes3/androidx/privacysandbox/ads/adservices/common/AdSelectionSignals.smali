.class public final Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final signals:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdSelectionSignals;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-static {p0}, Landroid/adservices/common/AdSelectionSignals;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSignals()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdSelectionSignals: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
