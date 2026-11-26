.class public final Lyads/sl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/al4;

.field public final c:Lyads/zl4;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t5;)V
    .locals 1

    new-instance v0, Lyads/al4;

    invoke-direct {v0, p1}, Lyads/al4;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/zl4;

    invoke-direct {p1}, Lyads/zl4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/sl0;->a:Lyads/t5;

    iput-object v0, p0, Lyads/sl0;->b:Lyads/al4;

    iput-object p1, p0, Lyads/sl0;->c:Lyads/zl4;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sl0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lyads/sl0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object p0, p0, Lyads/sl0;->b:Lyads/al4;

    .line 81
    iget-object v1, p0, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object p0, p0, Lyads/al4;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qk2;

    if-eqz p0, :cond_0

    .line 84
    iget v1, p0, Lyads/qk2;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lyads/qk2;->c:I

    .line 85
    iget-object p0, p0, Lyads/qk2;->a:Lyads/nk2;

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/ee4;Lyads/hl4;Lyads/jd0;)V
    .locals 4

    iget-object v0, p0, Lyads/sl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lyads/ee4;->a:Lyads/vg4;

    iget-object v1, p0, Lyads/sl0;->c:Lyads/zl4;

    invoke-virtual {v1, p1}, Lyads/zl4;->a(Lyads/vg4;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lyads/hl4;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Lyads/rl0;

    iget-object v2, p0, Lyads/sl0;->a:Lyads/t5;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3, p2, p3}, Lyads/rl0;-><init>(Lyads/t5;ILyads/hl4;Lyads/jd0;)V

    iget-object p2, p0, Lyads/sl0;->a:Lyads/t5;

    sget-object p3, Lyads/s5;->r:Lyads/s5;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb36;

    iget-object p3, p2, Lb36;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p2, p2, Lb36;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lyads/sl0;->b:Lyads/al4;

    invoke-virtual {v2, p3, v1, p2}, Lyads/al4;->a(Ljava/lang/String;Lyads/vc6;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
