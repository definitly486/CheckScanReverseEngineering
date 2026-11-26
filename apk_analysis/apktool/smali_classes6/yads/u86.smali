.class public final Lyads/u86;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ws;

.field public final b:Lyads/no5;

.field public final c:Lyads/m5;

.field public final d:Lyads/ia;

.field public final e:Lyads/fe5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lyads/ws;

    invoke-direct {v0, p1}, Lyads/ws;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/no5;

    invoke-direct {v1}, Lyads/no5;-><init>()V

    new-instance v2, Lyads/m5;

    invoke-direct {v2}, Lyads/m5;-><init>()V

    new-instance v3, Lyads/ia;

    invoke-direct {v3}, Lyads/ia;-><init>()V

    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_1

    sget-object v4, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lyads/zg5;->l:Lyads/zg5;

    if-nez v5, :cond_0

    new-instance v5, Lyads/zg5;

    invoke-direct {v5}, Lyads/zg5;-><init>()V

    sput-object v5, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v4, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/u86;->a:Lyads/ws;

    iput-object v1, p0, Lyads/u86;->b:Lyads/no5;

    iput-object v2, p0, Lyads/u86;->c:Lyads/m5;

    iput-object v3, p0, Lyads/u86;->d:Lyads/ia;

    iput-object p1, p0, Lyads/u86;->e:Lyads/fe5;

    return-void
.end method
