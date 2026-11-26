.class public final Lcom/tapjoy/internal/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/s1;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/s1;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/s1;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/s1;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/s1;->e:Ljava/lang/Boolean;

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getBelowConsentAge()Lcom/tapjoy/TJStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tapjoy/TJStatus;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/tapjoy/internal/s1;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getSubjectToGDPR()Lcom/tapjoy/TJStatus;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tapjoy/TJStatus;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Lcom/tapjoy/internal/s1;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getUserConsent()Lcom/tapjoy/TJStatus;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tapjoy/TJStatus;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_2

    :cond_2
    const-string v2, "0"

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lcom/tapjoy/internal/s1;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getUSPrivacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getUSPrivacy()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v2, v0

    :goto_4
    iput-object v2, p0, Lcom/tapjoy/internal/s1;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getUsageStatsConsent()Lcom/tapjoy/TJStatus;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tapjoy/TJStatus;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/tapjoy/internal/s1;->e:Ljava/lang/Boolean;

    return-void
.end method
