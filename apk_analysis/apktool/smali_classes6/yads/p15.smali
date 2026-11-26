.class public final Lyads/p15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/uk2;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lyads/bd0;

.field public final c:Lyads/cw;

.field public final d:Lyads/lw;

.field public e:Lyads/pk2;

.field public volatile f:Lyads/o15;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lyads/p04;Lyads/bw;Ljava/util/concurrent/ExecutorService;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p3

    iput-object v3, v0, Lyads/p15;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, v1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v5, v1, Lyads/k04;->a:Landroid/net/Uri;

    iget-object v15, v1, Lyads/k04;->c:Ljava/lang/String;

    const-string v1, "The uri must be set."

    invoke-static {v5, v1}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lyads/bd0;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-direct/range {v4 .. v17}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iput-object v4, v0, Lyads/p15;->b:Lyads/bd0;

    iget-object v1, v2, Lyads/bw;->c:Lyads/vc0;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lyads/bw;->a(Lyads/wc0;I)Lyads/cw;

    move-result-object v1

    iput-object v1, v0, Lyads/p15;->c:Lyads/cw;

    new-instance v2, Lwp0;

    const/4 v5, 0x5

    invoke-direct {v2, v0, v5}, Lwp0;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lyads/lw;

    invoke-direct {v5, v1, v4, v3, v2}, Lyads/lw;-><init>(Lyads/cw;Lyads/bd0;[BLyads/kw;)V

    iput-object v5, v0, Lyads/p15;->d:Lyads/lw;

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 0

    .line 67
    iget-object p0, p0, Lyads/p15;->e:Lyads/pk2;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 p5, -0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_2

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float/2addr p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p5, -0x40800000    # -1.0f

    .line 68
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lyads/pk2;->a(JJF)V

    return-void
.end method

.method public final a(Lyads/pk2;)V
    .locals 1

    iput-object p1, p0, Lyads/p15;->e:Lyads/pk2;

    new-instance p1, Lyads/o15;

    invoke-direct {p1, p0}, Lyads/o15;-><init>(Lyads/p15;)V

    iput-object p1, p0, Lyads/p15;->f:Lyads/o15;

    :try_start_0
    iget-boolean p1, p0, Lyads/p15;->g:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lyads/p15;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lyads/p15;->f:Lyads/o15;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lyads/p15;->f:Lyads/o15;

    iget-object v0, p1, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {v0}, Lyads/m50;->a()V

    invoke-virtual {p1}, Lyads/rb5;->c()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    sget v0, Lyads/u56;->a:I

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    iget-object p0, p0, Lyads/p15;->f:Lyads/o15;

    iget-object p0, p0, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {p0}, Lyads/m50;->b()V

    return-void

    :goto_1
    iget-object p0, p0, Lyads/p15;->f:Lyads/o15;

    iget-object p0, p0, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {p0}, Lyads/m50;->b()V

    throw p1
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/p15;->g:Z

    iget-object p0, p0, Lyads/p15;->f:Lyads/o15;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lyads/rb5;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lyads/p15;->c:Lyads/cw;

    iget-object v1, v0, Lyads/cw;->a:Lyads/yv;

    iget-object v0, v0, Lyads/cw;->e:Lyads/iw;

    iget-object p0, p0, Lyads/p15;->b:Lyads/bd0;

    check-cast v0, Lxp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object p0

    check-cast v1, Lyads/ok5;

    invoke-virtual {v1, p0}, Lyads/ok5;->c(Ljava/lang/String;)V

    return-void
.end method
