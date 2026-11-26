.class public abstract Lyads/f85;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;I)Lyads/e85;
    .locals 7

    sget-object v0, Lyads/d35;->a:Lyads/oa4;

    const-string v0, "Yandex Mobile Ads"

    sget-boolean v1, Lyads/li6;->a:Z

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lyads/li6;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lyads/li6;->a:Z

    new-instance v0, Lyads/bc5;

    invoke-direct {v0}, Lyads/bc5;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/bc5;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v1}, Lyads/in4;->a(Landroid/content/Context;)I

    new-instance v1, Lyads/i94;

    invoke-direct {v1, v0}, Lyads/i94;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lyads/ua3;

    invoke-direct {v0, v1}, Lyads/ua3;-><init>(Lyads/i94;)V

    new-instance v1, Lyads/ss;

    invoke-direct {v1, v0}, Lyads/ss;-><init>(Lyads/ua3;)V

    const-string v0, "mobileads-volley-cache"

    invoke-static {p0, v0}, Lyads/pp0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_1

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_0

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v2, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v2, v2, Lyads/fe5;->d:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const-wide/32 v2, 0x3200000

    :goto_3
    new-instance v4, Lyads/op0;

    const-wide/32 v5, 0xa00000

    invoke-static {p0, v5, v6, v2, v3}, Lyads/x74;->a(Landroid/content/Context;JJ)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v4, v0, p0}, Lyads/op0;-><init>(Ljava/io/File;I)V

    new-instance p0, Lyads/e85;

    invoke-direct {p0, v4, v1, p1}, Lyads/e85;-><init>(Lyads/xv;Lyads/ss;I)V

    new-instance p1, Lyads/t75;

    invoke-direct {p1}, Lyads/t75;-><init>()V

    invoke-virtual {p0, p1}, Lyads/e85;->a(Lyads/t75;)V

    return-object p0
.end method
