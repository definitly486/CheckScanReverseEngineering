.class public final Lyads/u7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;

    if-eqz v0, :cond_0

    const-string p0, "Verification not started"

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    if-nez v0, :cond_1

    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_1
    check-cast p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    invoke-virtual {p0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    throw v1

    :cond_2
    check-cast p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    invoke-virtual {p0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;->getReason()Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;

    throw v1
.end method
