.class public final Lyads/y56;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c66;

.field public final b:Lyads/zg5;

.field public final c:Lyads/m96;

.field public final d:Lyads/x56;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lyads/c66;

    invoke-direct {v0, p1}, Lyads/c66;-><init>(Landroid/content/Context;)V

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
    new-instance v2, Lyads/m96;

    invoke-direct {v2}, Lyads/m96;-><init>()V

    new-instance v3, Lyads/x56;

    invoke-direct {v3}, Lyads/x56;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/y56;->a:Lyads/c66;

    iput-object v1, p0, Lyads/y56;->b:Lyads/zg5;

    iput-object v2, p0, Lyads/y56;->c:Lyads/m96;

    iput-object v3, p0, Lyads/y56;->d:Lyads/x56;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/y56;->e:Landroid/content/Context;

    return-void
.end method
