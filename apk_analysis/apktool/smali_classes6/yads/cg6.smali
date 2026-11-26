.class public final Lyads/cg6;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Lyads/o90;

.field public final c:Lyads/ts;

.field public volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/o90;)V
    .locals 2

    const-string v0, "ViewPoolThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/cg6;->b:Lyads/o90;

    new-instance p1, Lyads/ts;

    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    invoke-direct {p1, v0}, Lyads/ts;-><init>(Ljava/util/PriorityQueue;)V

    iput-object p1, p0, Lyads/cg6;->c:Lyads/ts;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/cg6;->c:Lyads/ts;

    invoke-virtual {v0}, Lyads/ts;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bg6;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lyads/cg6;->c:Lyads/ts;

    invoke-virtual {v0}, Lyads/ts;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bg6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    throw v0

    :cond_0
    :goto_0
    iget-object v1, v0, Lyads/bg6;->c:Ljava/lang/String;

    iput-object v1, p0, Lyads/cg6;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lyads/bg6;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/cg6;->d:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lyads/cg6;->b:Lyads/o90;

    invoke-static {}, Landroid/os/Process;->myTid()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/o90;->a()Lyads/yx;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lyads/cg6;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Ldd2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/o90;->b()V

    return-void

    :goto_1
    check-cast v0, Ldd2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/o90;->b()V

    throw p0
.end method
