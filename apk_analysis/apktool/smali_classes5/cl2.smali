.class public Lcl2;
.super Lrl1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl2$g;,
        Lcl2$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lrl1<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/logging/Logger;

.field public static final m:Lcl2$e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lky1;

.field public volatile e:Z

.field public f:Lrl1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public g:Lla5;

.field public h:Lrl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public i:Lh88;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcl2$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl2$g<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcl2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcl2;->l:Ljava/util/logging/Logger;

    new-instance v0, Lcl2$e;

    invoke-direct {v0}, Lrl1;-><init>()V

    sput-object v0, Lcl2;->m:Lcl2$e;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lxc2;)V
    .locals 2

    invoke-direct {p0}, Lrl1;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl2;->j:Ljava/util/List;

    const-string v0, "name_resolver"

    iput-object v0, p0, Lcl2;->a:Ljava/lang/String;

    const-string v0, "callExecutor"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcl2;->c:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lky1;->b()Lky1;

    move-result-object p1

    iput-object p1, p0, Lcl2;->d:Lky1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lxc2;->a()J

    move-result-wide v0

    new-instance p1, Lbl2;

    invoke-direct {p1, p0, v0, v1}, Lbl2;-><init>(Lcl2;J)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p1, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcl2;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lh88;->f:Lh88;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcl2;->g(Lh88;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcl2$d;

    invoke-direct {v0, p0}, Lcl2$d;-><init>(Lcl2;)V

    invoke-virtual {p0, v0}, Lcl2;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcl2;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcl2;->h:Lrl1;

    invoke-virtual {p0}, Lrl1;->c()V

    return-void

    :cond_0
    new-instance v0, Ldl2;

    invoke-direct {v0, p0}, Ldl2;-><init>(Lcl2;)V

    invoke-virtual {p0, v0}, Lcl2;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcl2;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcl2;->h:Lrl1;

    invoke-virtual {p0, p1}, Lrl1;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcl2$c;

    invoke-direct {v0, p0, p1}, Lcl2$c;-><init>(Lcl2;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcl2;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lrl1$a;Lla5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p2, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcl2;->f:Lrl1$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcl2;->f:Lrl1$a;

    iget-object v0, p0, Lcl2;->i:Lh88;

    iget-boolean v1, p0, Lcl2;->e:Z

    if-nez v1, :cond_1

    new-instance v2, Lcl2$g;

    invoke-direct {v2, p0, p1}, Lcl2$g;-><init>(Lcl2;Lrl1$a;)V

    iput-object v2, p0, Lcl2;->k:Lcl2$g;

    iput-object p2, p0, Lcl2;->g:Lla5;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcl2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcl2$f;

    invoke-direct {v1, p0, p1, v0}, Lcl2$f;-><init>(Lcl2;Lrl1$a;Lh88;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcl2;->h:Lrl1;

    invoke-virtual {p0, p1, p2}, Lrl1;->e(Lrl1$a;Lla5;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g(Lh88;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcl2;->h:Lrl1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object p2, Lcl2;->m:Lcl2$e;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "realCall already set to %s"

    invoke-static {v4, v1, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Lcl2;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iput-object p2, p0, Lcl2;->h:Lrl1;

    iget-object p2, p0, Lcl2;->f:Lrl1$a;

    iput-object p1, p0, Lcl2;->i:Lh88;

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    move-object p2, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    new-instance p2, Lcl2$b;

    invoke-direct {p2, p0, p1}, Lcl2$b;-><init>(Lcl2;Lh88;)V

    invoke-virtual {p0, p2}, Lcl2;->h(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcl2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcl2$f;

    invoke-direct {v1, p0, p2, p1}, Lcl2$f;-><init>(Lcl2;Lrl1$a;Lh88;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    iget-object p1, p0, Lcl2;->g:Lla5;

    iput-object v2, p0, Lcl2;->g:Lla5;

    iget-object v0, p0, Lcl2;->d:Lky1;

    invoke-virtual {v0}, Lky1;->a()Lky1;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcl2;->h:Lrl1;

    invoke-virtual {v2, p2, p1}, Lrl1;->e(Lrl1$a;Lla5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, v1}, Lky1;->c(Lky1;)V

    invoke-virtual {p0}, Lcl2;->i()V

    :goto_2
    invoke-virtual {p0}, Lcl2;->f()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lky1;->c(Lky1;)V

    throw p0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcl2;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl2;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcl2;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcl2;->j:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl2;->e:Z

    iget-object v0, p0, Lcl2;->k:Lcl2$g;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcl2;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcl2$a;

    invoke-direct {v2, p0, v0}, Lcl2$a;-><init>(Lcl2;Lcl2$g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcl2;->j:Ljava/util/List;

    iput-object v0, p0, Lcl2;->j:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "realCall"

    iget-object p0, p0, Lcl2;->h:Lrl1;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
