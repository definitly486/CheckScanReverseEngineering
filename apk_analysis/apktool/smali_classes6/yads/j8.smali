.class public final Lyads/j8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/i8;
    .locals 11

    :try_start_0
    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/fe5;->c()Lyads/n7;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lyads/xt2;->f:Lyads/xt2;

    invoke-static {v0, v1}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lyads/n7;->a:Z

    iget-object v4, p0, Lyads/n7;->c:Ljava/lang/String;

    iget-wide v5, p0, Lyads/n7;->d:J

    iget v7, p0, Lyads/n7;->e:I

    iget-boolean v8, p0, Lyads/n7;->f:Z

    iget-object v9, p0, Lyads/n7;->g:Ljava/util/Set;

    iget-object v10, p0, Lyads/n7;->h:Ljava/util/Map;

    new-instance v1, Lyads/n7;

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v10}, Lyads/n7;-><init>(ZZLjava/lang/String;JIZLjava/util/Set;Ljava/util/Map;)V

    move-object p0, v1

    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lyads/n7;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lyads/xt2;->f:Lyads/xt2;

    invoke-static {p1, v0}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result p1

    invoke-static {p0, p1}, Lyads/z7;->a(Lyads/n7;Z)Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;

    move-result-object v2

    invoke-static {}, Lyads/y7;->a()Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance p0, Lyads/d7;

    invoke-direct {p0}, Lyads/d7;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lyads/h8;->a(Lyads/n7;)Lyads/r7;

    move-result-object p0

    invoke-virtual {v2}, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;->getVerificationTimeoutInSec()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    new-instance v5, Lyads/g8;

    invoke-direct {v5, p0}, Lyads/g8;-><init>(Lyads/r7;)V

    new-instance v6, Lyads/w7;

    invoke-direct {v6, p0}, Lyads/w7;-><init>(Lyads/r7;)V

    new-instance v0, Lyads/i7;

    invoke-direct/range {v0 .. v6}, Lyads/i7;-><init>(Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;JLyads/g8;Lyads/w7;)V

    move-object p0, v0

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p0, Lyads/d7;

    invoke-direct {p0}, Lyads/d7;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    new-instance p0, Lyads/d7;

    invoke-direct {p0}, Lyads/d7;-><init>()V

    :goto_3
    check-cast p0, Lyads/i8;

    return-object p0
.end method
