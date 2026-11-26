.class public final Lyads/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i8;


# instance fields
.field public final a:Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

.field public final b:Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;

.field public final c:J

.field public final d:Lyads/g8;

.field public final e:Lyads/w7;

.field public final f:Lyads/x7;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;JLyads/g8;Lyads/w7;)V
    .locals 1

    new-instance v0, Lyads/x7;

    invoke-direct {v0}, Lyads/x7;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/i7;->a:Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    iput-object p2, p0, Lyads/i7;->b:Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;

    iput-wide p3, p0, Lyads/i7;->c:J

    iput-object p5, p0, Lyads/i7;->d:Lyads/g8;

    iput-object p6, p0, Lyads/i7;->e:Lyads/w7;

    iput-object v0, p0, Lyads/i7;->f:Lyads/x7;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/quality/base/AdQualityVerificationIncidentListener;)V
    .locals 0

    iget-object p0, p0, Lyads/i7;->a:Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    invoke-virtual {p0, p1}, Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;->setIncidentListener(Lcom/monetization/ads/quality/base/AdQualityVerificationIncidentListener;)V

    return-void
.end method

.method public final onAdDisplayed()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lyads/i7;->a:Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    invoke-interface {p0}, Lcom/monetization/ads/quality/base/AdQualityVerifierAdEventListener;->onAdDisplayed()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lyads/i7;->a:Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    invoke-interface {p0}, Lcom/monetization/ads/quality/base/AdQualityVerifierAdEventListener;->onInvalidated()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
