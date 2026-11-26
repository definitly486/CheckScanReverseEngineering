.class public final Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getCustomAudience()Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JoinCustomAudience: customAudience="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;->customAudience:Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
