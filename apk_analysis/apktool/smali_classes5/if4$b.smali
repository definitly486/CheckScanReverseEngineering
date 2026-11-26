.class public final Lif4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lif4;


# direct methods
.method public constructor <init>(Lif4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif4$b;->b:Lif4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lif4$b;->b:Lif4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lif4$b;->b:Lif4;

    const/4 v2, 0x0

    iput-object v2, v1, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, v1, Lif4;->d:Lif4$d;

    sget-object v3, Lif4$d;->PING_SCHEDULED:Lif4$d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Lif4$d;->PING_SENT:Lif4$d;

    iput-object v2, v1, Lif4;->d:Lif4$d;

    iget-object v2, v1, Lif4;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, v1, Lif4;->g:Lvu4;

    iget-wide v6, v1, Lif4;->j:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lif4;->e:Ljava/util/concurrent/ScheduledFuture;

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    sget-object v6, Lif4$d;->PING_DELAYED:Lif4$d;

    if-ne v2, v6, :cond_1

    iget-object v2, v1, Lif4;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, v1, Lif4;->h:Lvu4;

    iget-wide v7, v1, Lif4;->i:J

    iget-object v9, v1, Lif4;->b:La98;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, La98;->a()J

    move-result-wide v11

    sub-long/2addr v7, v11

    invoke-interface {v2, v6, v7, v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lif4$b;->b:Lif4;

    iput-object v3, v1, Lif4;->d:Lif4$d;

    :cond_1
    move v1, v5

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_8

    iget-object p0, p0, Lif4$b;->b:Lif4;

    iget-object p0, p0, Lif4;->c:Lif4$c;

    iget-object v0, p0, Lif4$c;->a:Llv5;

    new-instance v1, Ljf4;

    invoke-direct {v1, p0}, Ljf4;-><init>(Lif4$c;)V

    sget-object p0, Ljn2;->INSTANCE:Ljn2;

    iget-object v2, v0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Llv5;->k:Lj13;

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-static {v3}, Lo8;->r(Z)V

    iget-boolean v3, v0, Llv5;->A:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llv5;->j()Lh88;

    move-result-object v0

    sget-object v3, Lty3;->g:Ljava/util/logging/Logger;

    new-instance v3, Lsy3;

    invoke-direct {v3, v1, v0}, Lsy3;-><init>(Lem1$a;Lh88;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, v3}, Ljn2;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    sget-object v0, Lty3;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to execute PingCallback"

    invoke-virtual {v0, v1, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    monitor-exit v2

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_3
    iget-object v3, v0, Llv5;->z:Lty3;

    if-eqz v3, :cond_4

    const-wide/16 v6, 0x0

    move v4, v5

    goto :goto_3

    :cond_4
    iget-object v3, v0, Llv5;->f:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    iget-object v3, v0, Llv5;->g:Lkd8;

    invoke-interface {v3}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La98;

    invoke-virtual {v3}, La98;->b()V

    new-instance v8, Lty3;

    invoke-direct {v8, v6, v7, v3}, Lty3;-><init>(JLa98;)V

    iput-object v8, v0, Llv5;->z:Lty3;

    iget-object v3, v0, Llv5;->P:Lg39;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v8

    :goto_3
    if-eqz v4, :cond_5

    iget-object v0, v0, Llv5;->k:Lj13;

    const/16 v4, 0x20

    ushr-long v8, v6, v4

    long-to-int v4, v8

    long-to-int v6, v6

    invoke-virtual {v0, v4, v6, v5}, Lj13;->m0(IIZ)V

    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter v3

    :try_start_4
    iget-boolean v0, v3, Lty3;->d:Z

    if-nez v0, :cond_6

    iget-object v0, v3, Lty3;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_6
    iget-object v0, v3, Lty3;->e:Lh88;

    if-eqz v0, :cond_7

    new-instance v2, Lsy3;

    invoke-direct {v2, v1, v0}, Lsy3;-><init>(Lem1$a;Lh88;)V

    goto :goto_4

    :cond_7
    iget-wide v4, v3, Lty3;->f:J

    new-instance v2, Lry3;

    invoke-direct {v2, v1, v4, v5}, Lry3;-><init>(Lem1$a;J)V

    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {p0, v2}, Ljn2;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    sget-object v0, Lty3;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to execute PingCallback"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :goto_6
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_8
    :goto_7
    return-void

    :goto_8
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method
