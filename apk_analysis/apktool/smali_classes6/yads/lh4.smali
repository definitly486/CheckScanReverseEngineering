.class public final Lyads/lh4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/ae4;

.field public final c:Lyads/zg5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ae4;Lyads/yh4;)V
    .locals 1

    sget-object p3, Lyads/zg5;->l:Lyads/zg5;

    if-nez p3, :cond_1

    sget-object p3, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p3

    move-object p3, v0

    goto :goto_2

    :goto_1
    monitor-exit p3

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lh4;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/lh4;->b:Lyads/ae4;

    iput-object p3, p0, Lyads/lh4;->c:Lyads/zg5;

    return-void
.end method
