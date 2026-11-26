.class public final Lyads/x80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ga5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/do6;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_0

    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lyads/fe5;->I:Z

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_3

    new-instance v1, Lyads/ox;

    invoke-direct {v1, v0, p2}, Lyads/ox;-><init>(Landroid/content/Context;Lyads/do6;)V

    goto :goto_4

    :cond_3
    new-instance v1, Lyads/ks;

    invoke-direct {v1, v0, p2}, Lyads/ks;-><init>(Landroid/content/Context;Lyads/do6;)V

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/x80;->a:Lyads/ga5;

    invoke-static {p1}, Lyads/s1;->a(Landroid/content/Context;)V

    return-void
.end method
