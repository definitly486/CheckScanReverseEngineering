.class public final Lyads/zp2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/d9;

.field public final d:Lyads/zt3;

.field public final e:Lyads/fe5;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 3

    new-instance v0, Lyads/zt3;

    invoke-direct {v0}, Lyads/zt3;-><init>()V

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
    invoke-virtual {v1, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/zp2;->a:Lyads/e4;

    iput-object p3, p0, Lyads/zp2;->b:Lyads/bf5;

    iput-object p4, p0, Lyads/zp2;->c:Lyads/d9;

    iput-object v0, p0, Lyads/zp2;->d:Lyads/zt3;

    iput-object v1, p0, Lyads/zp2;->e:Lyads/fe5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/zp2;->f:Landroid/content/Context;

    return-void
.end method
