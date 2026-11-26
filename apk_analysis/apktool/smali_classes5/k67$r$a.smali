.class public final Lk67$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk67$x;

.field public final synthetic c:Lk67$r;


# direct methods
.method public constructor <init>(Lk67$r;Lk67$x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$r$a;->c:Lk67$r;

    iput-object p2, p0, Lk67$r$a;->b:Lk67$x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v1, v0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v2, v0, Lk67$r;->b:Lk67$q;

    iget-boolean v2, v2, Lk67$q;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v2, v0, Lk67;->p:Lk67$v;

    iget-object v5, p0, Lk67$r$a;->b:Lk67$x;

    invoke-virtual {v2, v5}, Lk67$v;->a(Lk67$x;)Lk67$v;

    move-result-object v2

    iput-object v2, v0, Lk67;->p:Lk67$v;

    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v2, v0, Lk67;->p:Lk67$v;

    invoke-virtual {v0, v2}, Lk67;->r(Lk67$v;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v0, v0, Lk67;->n:Lk67$y;

    if-eqz v0, :cond_2

    iget-object v5, v0, Lk67$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v0, v0, Lk67$y;->b:I

    if-le v5, v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v3, v0, Lk67$r;->c:Lk67;

    new-instance v4, Lk67$q;

    iget-object v5, v3, Lk67;->j:Ljava/lang/Object;

    invoke-direct {v4, v5}, Lk67$q;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lk67;->x:Lk67$q;

    :goto_1
    move v3, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v3, v0, Lk67;->p:Lk67$v;

    iget-boolean v5, v3, Lk67$v;->h:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Lk67$v;

    iget-object v7, v3, Lk67$v;->b:Ljava/util/List;

    iget-object v8, v3, Lk67$v;->c:Ljava/util/Collection;

    iget-object v9, v3, Lk67$v;->d:Ljava/util/Collection;

    iget-object v10, v3, Lk67$v;->f:Lk67$x;

    iget-boolean v11, v3, Lk67$v;->g:Z

    iget-boolean v12, v3, Lk67$v;->a:Z

    iget v14, v3, Lk67$v;->e:I

    const/4 v13, 0x1

    invoke-direct/range {v6 .. v14}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    move-object v3, v6

    :goto_2
    iput-object v3, v0, Lk67;->p:Lk67$v;

    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v3, v0, Lk67$r;->c:Lk67;

    iput-object v4, v3, Lk67;->x:Lk67$q;

    goto :goto_1

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    iget-object v1, p0, Lk67$r$a;->b:Lk67$x;

    iget-object v2, v1, Lk67$x;->a:Lcm1;

    new-instance v3, Lk67$w;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    invoke-direct {v3, v0, v1}, Lk67$w;-><init>(Lk67;Lk67$x;)V

    invoke-interface {v2, v3}, Lcm1;->i(Ldm1;)V

    iget-object p0, p0, Lk67$r$a;->b:Lk67$x;

    iget-object p0, p0, Lk67$x;->a:Lcm1;

    sget-object v0, Lh88;->f:Lh88;

    const-string v1, "Unneeded hedging"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-interface {p0, v0}, Lcm1;->j(Lh88;)V

    return-void

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object v1, v0, Lk67;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lk67$r;

    invoke-direct {v2, v0, v4}, Lk67$r;-><init>(Lk67;Lk67$q;)V

    iget-object v0, v0, Lk67;->h:Lsv3;

    iget-wide v5, v0, Lsv3;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v5, v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v4, v0}, Lk67$q;->a(Ljava/util/concurrent/ScheduledFuture;)V

    :cond_6
    iget-object v0, p0, Lk67$r$a;->c:Lk67$r;

    iget-object v0, v0, Lk67$r;->c:Lk67;

    iget-object p0, p0, Lk67$r$a;->b:Lk67$x;

    invoke-virtual {v0, p0}, Lk67;->p(Lk67$x;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
