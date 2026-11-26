.class public final Lyads/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Landroid/content/Context;

.field public final c:Lyads/t5;

.field public final d:Lyads/s7;

.field public e:Lyads/d9;

.field public f:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

.field public g:Ljava/lang/String;

.field public h:Lyads/l24;

.field public final i:Lcl4;


# direct methods
.method public constructor <init>(Lyads/e4;Landroid/content/Context;Lyads/t5;Lyads/s7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b8;->a:Lyads/e4;

    iput-object p2, p0, Lyads/b8;->b:Landroid/content/Context;

    iput-object p3, p0, Lyads/b8;->c:Lyads/t5;

    iput-object p4, p0, Lyads/b8;->d:Lyads/s7;

    sget-object p1, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;->INSTANCE:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;

    iput-object p1, p0, Lyads/b8;->f:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    new-instance p1, Lb80;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lb80;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/b8;->i:Lcl4;

    return-void
.end method

.method public static final a(Lyads/b8;)Lyads/i8;
    .locals 1

    new-instance v0, Lyads/j8;

    invoke-direct {v0}, Lyads/j8;-><init>()V

    iget-object p0, p0, Lyads/b8;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyads/j8;->a(Landroid/content/Context;)Lyads/i8;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 9

    invoke-virtual {p0}, Lyads/b8;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lyads/b8;->f:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    instance-of v1, v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyads/b8;->e:Lyads/d9;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lyads/b8;->d:Lyads/s7;

    iget-object v3, p0, Lyads/b8;->b:Landroid/content/Context;

    iget-object v4, p0, Lyads/b8;->e:Lyads/d9;

    iget-object v5, p0, Lyads/b8;->g:Ljava/lang/String;

    iget-object v6, p0, Lyads/b8;->h:Lyads/l24;

    iget-object v7, v1, Lyads/s7;->c:Lyads/c7;

    iget-object v8, v1, Lyads/s7;->a:Lyads/e4;

    invoke-virtual {v7, v4, v8, v5, v6}, Lyads/c7;->a(Lyads/d9;Lyads/e4;Ljava/lang/String;Lyads/l24;)Lyads/h75;

    move-result-object v4

    iget-object v5, v1, Lyads/s7;->d:Lyads/u7;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lmx2;->b:Lmx2;

    invoke-static {v5}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_2
    invoke-static {v0}, Lyads/u7;->a(Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "undefined"

    const-string v8, "verification_status"

    if-nez v6, :cond_3

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    instance-of v6, v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    if-nez v6, :cond_9

    const-string v8, "verification_flow"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_8

    instance-of v6, v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    if-eqz v6, :cond_4

    check-cast v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;->getReason()Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;

    :cond_4
    const-string v0, "error"

    const-string v6, "status"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lyads/h75;->b:Lyads/c;

    if-nez v0, :cond_5

    move-object v0, v2

    :cond_5
    iget-object v4, v4, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-static {v4}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_7

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_7
    iget-object v5, v1, Lyads/s7;->f:Lyads/ab;

    iget-object v6, v5, Lyads/ab;->b:Lyads/u5;

    invoke-virtual {v6}, Lyads/u5;->a()Ljava/util/Map;

    move-result-object v6

    iget-object v5, v5, Lyads/ab;->a:Lyads/ku4;

    sget-object v7, Lyads/s5;->p:Lyads/s5;

    invoke-static {v7}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Lyads/ku4;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v6, v5}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "durations"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lyads/g75;

    sget-object v6, Lyads/e75;->c:Lyads/e75;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v4, "ad_verification_result"

    invoke-direct {v5, v4, v6, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object v0, v1, Lyads/s7;->b:Lyads/bf5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lyads/s7;->b:Lyads/bf5;

    check-cast v0, Lyads/do6;

    new-instance v1, Lyads/lm6;

    iget-object v0, v0, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v1}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object v0

    invoke-virtual {v0, v5}, Lyads/q84;->a(Lyads/g75;)V

    :goto_3
    iget-object v0, p0, Lyads/b8;->i:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/i8;

    invoke-interface {v0}, Lyads/i8;->onInvalidated()V

    iget-object p0, p0, Lyads/b8;->i:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/i8;

    invoke-interface {p0, v2}, Lyads/i8;->a(Lcom/monetization/ads/quality/base/AdQualityVerificationIncidentListener;)V

    return-void

    :cond_8
    check-cast v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    throw v2

    :cond_9
    check-cast v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    throw v2

    :cond_a
    return-void
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lyads/b8;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/fe5;->z0:Lyads/n7;

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lyads/n7;->a:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
