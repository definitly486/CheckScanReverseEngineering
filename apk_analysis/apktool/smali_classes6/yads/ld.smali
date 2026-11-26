.class public final Lyads/ld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gd;

.field public final b:Lyads/zg5;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lyads/hd;->a(Landroid/content/Context;)Lyads/gd;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ld;->a:Lyads/gd;

    iput-object v1, p0, Lyads/ld;->b:Lyads/zg5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lyads/ld;->c:Landroid/content/Context;

    return-void
.end method
