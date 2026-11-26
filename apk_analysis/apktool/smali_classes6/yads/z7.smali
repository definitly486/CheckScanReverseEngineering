.class public final Lyads/z7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/n7;Z)Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;
    .locals 6

    iget-boolean v4, p0, Lyads/n7;->b:Z

    iget-object v1, p0, Lyads/n7;->c:Ljava/lang/String;

    iget-wide v2, p0, Lyads/n7;->d:J

    new-instance v0, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;-><init>(Ljava/lang/String;JZZ)V

    return-object v0
.end method
