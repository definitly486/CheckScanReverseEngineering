.class public final Lyads/yq2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/ok5;
    .locals 4

    const-string p0, "mobileads-video-cache"

    invoke-static {p1, p0}, Lyads/pp0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

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
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lyads/fe5;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const-wide/32 v0, 0x3200000

    :goto_3
    const-wide/32 v2, 0x2800000

    invoke-static {p1, v2, v3, v0, v1}, Lyads/x74;->a(Landroid/content/Context;JJ)J

    move-result-wide v0

    new-instance v2, Lyads/zr3;

    invoke-direct {v2, v0, v1}, Lyads/zr3;-><init>(J)V

    new-instance v0, Lyads/rp2;

    invoke-direct {v0, p1}, Lyads/rp2;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/ok5;

    invoke-direct {p1, p0, v2, v0}, Lyads/ok5;-><init>(Ljava/io/File;Lyads/zr3;Lyads/rp2;)V

    return-object p1
.end method
