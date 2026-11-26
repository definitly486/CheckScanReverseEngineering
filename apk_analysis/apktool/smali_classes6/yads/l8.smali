.class public final Lyads/l8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/e4;

.field public final c:Lyads/ah4;

.field public final d:Lyads/q84;

.field public final e:Lyads/k8;

.field public final f:Lyads/fe5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/t5;Lyads/ah4;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/k8;

    invoke-direct {v0, p4}, Lyads/k8;-><init>(Lyads/t5;)V

    sget-object p4, Lyads/zg5;->l:Lyads/zg5;

    if-nez p4, :cond_1

    sget-object p4, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p4

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
    monitor-exit p4

    move-object p4, v1

    goto :goto_2

    :goto_1
    monitor-exit p4

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p4, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/l8;->a:Lyads/d9;

    iput-object p3, p0, Lyads/l8;->b:Lyads/e4;

    iput-object p5, p0, Lyads/l8;->c:Lyads/ah4;

    iput-object p6, p0, Lyads/l8;->d:Lyads/q84;

    iput-object v0, p0, Lyads/l8;->e:Lyads/k8;

    iput-object p1, p0, Lyads/l8;->f:Lyads/fe5;

    return-void
.end method
