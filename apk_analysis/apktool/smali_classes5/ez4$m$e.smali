.class public final Lez4$m$e;
.super Lcl2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez4$m$e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lcl2<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final n:Lky1;

.field public final o:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final p:Lio/grpc/b;

.field public final q:J

.field public final synthetic r:Lez4$m;


# direct methods
.method public constructor <init>(Lez4$m;Lky1;Lra5;Lio/grpc/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lky1;",
            "Lra5<",
            "TReqT;TRespT;>;",
            "Lio/grpc/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lez4$m$e;->r:Lez4$m;

    iget-object p1, p1, Lez4$m;->d:Lez4;

    sget-object v0, Lez4;->c0:Ljava/util/logging/Logger;

    iget-object v0, p4, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p1, Lez4;->i:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v1, p1, Lez4;->h:Lez4$o;

    iget-object v2, p4, Lio/grpc/b;->a:Lxc2;

    invoke-direct {p0, v0, v1, v2}, Lcl2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lxc2;)V

    iput-object p2, p0, Lez4$m$e;->n:Lky1;

    iput-object p3, p0, Lez4$m$e;->o:Lra5;

    iput-object p4, p0, Lez4$m$e;->p:Lio/grpc/b;

    iget-object p1, p1, Lez4;->X:Lxc2$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lez4$m$e;->q:J

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    iget-object v0, p0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    new-instance v1, Lez4$m$e$b;

    invoke-direct {v1, p0}, Lez4$m$e$b;-><init>(Lez4$m$e;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Lez4$m$e;->n:Lky1;

    invoke-virtual {v0}, Lky1;->a()Lky1;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lez4$m$e;->p:Lio/grpc/b;

    sget-object v2, Lio/grpc/c;->o:Lio/grpc/b$b;

    iget-object v3, p0, Lez4$m$e;->r:Lez4$m;

    iget-object v3, v3, Lez4$m;->d:Lez4;

    iget-object v3, v3, Lez4;->X:Lxc2$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lez4$m$e;->q:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/b;->d(Lio/grpc/b$b;Ljava/lang/Object;)Lio/grpc/b;

    move-result-object v1

    iget-object v2, p0, Lez4$m$e;->r:Lez4$m;

    iget-object v3, p0, Lez4$m$e;->o:Lra5;

    invoke-virtual {v2, v3, v1}, Lez4$m;->g(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lez4$m$e;->n:Lky1;

    invoke-virtual {v2, v0}, Lky1;->c(Lky1;)V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcl2;->h:Lrl1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const-string v6, "realCall already set to %s"

    invoke-static {v6, v5, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Lcl2;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iput-object v1, p0, Lcl2;->h:Lrl1;

    iget-object v0, p0, Lcl2;->k:Lcl2$g;

    if-nez v0, :cond_3

    iput-object v2, p0, Lcl2;->j:Ljava/util/List;

    iput-boolean v3, p0, Lcl2;->e:Z

    monitor-exit p0

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcl2;->g:Lla5;

    iput-object v2, p0, Lcl2;->g:Lla5;

    iget-object v2, p0, Lcl2;->d:Lky1;

    invoke-virtual {v2}, Lky1;->a()Lky1;

    move-result-object v3

    :try_start_2
    iget-object v4, p0, Lcl2;->h:Lrl1;

    invoke-virtual {v4, v0, v1}, Lrl1;->e(Lrl1$a;Lla5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2, v3}, Lky1;->c(Lky1;)V

    new-instance v2, Lal2;

    iget-object v0, p0, Lcl2;->d:Lky1;

    invoke-direct {v2, p0, v0}, Lal2;-><init>(Lez4$m$e;Lky1;)V

    :goto_1
    iget-object v0, p0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    if-nez v2, :cond_4

    iget-object v0, v0, Lez4;->n:Lch8;

    new-instance v1, Lez4$m$e$b;

    invoke-direct {v1, p0}, Lez4$m$e$b;-><init>(Lez4$m$e;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v1, p0, Lez4$m$e;->p:Lio/grpc/b;

    iget-object v1, v1, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_5

    iget-object v1, v0, Lez4;->i:Ljava/util/concurrent/Executor;

    :cond_5
    new-instance v0, Lez4$m$e$a;

    invoke-direct {v0, p0, v2}, Lez4$m$e$a;-><init>(Lez4$m$e;Lal2;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v2, v3}, Lky1;->c(Lky1;)V

    throw p0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_2
    move-exception v1

    iget-object p0, p0, Lez4$m$e;->n:Lky1;

    invoke-virtual {p0, v0}, Lky1;->c(Lky1;)V

    throw v1
.end method
