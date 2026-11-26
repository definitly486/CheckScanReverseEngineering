.class public final Lwc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Record:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxc6<",
        "TRecord;>;"
    }
.end annotation


# instance fields
.field public final a:Lnb6;

.field public final b:Liz2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz2<",
            "TRecord;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/util/Date;

.field public h:I

.field public final i:Lei0;

.field public volatile j:Ljava/util/Timer;

.field public volatile k:Lwc6$b;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lnb6;Liz2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnb6;",
            "Liz2<",
            "TRecord;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc6;->a:Lnb6;

    iput-object p2, p0, Lwc6;->b:Liz2;

    iput-object p3, p0, Lwc6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lfr;

    invoke-direct {p3}, Lfr;-><init>()V

    iput-object p3, p0, Lwc6;->d:Lfr;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lwc6;->e:Ljava/lang/Object;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lwc6;->f:Ljava/lang/Object;

    new-instance p3, Lei0;

    iget-object v0, p2, Liz2;->c:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget-object p2, p2, Liz2;->d:Lnl3;

    invoke-interface {p2, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput v0, p3, Lei0;->a:I

    iput v1, p3, Lei0;->b:I

    iput-object p3, p0, Lwc6;->i:Lei0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwc6;->d:Lfr;

    iget-object v2, p0, Lwc6;->i:Lei0;

    iget v2, v2, Lei0;->a:I

    invoke-static {v1, v2}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    monitor-exit v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lwc6;->b:Liz2;

    iget-object v5, v5, Liz2;->h:Lnl3;

    invoke-interface {v5, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lwc6;->d(Ljava/io/File;Ljava/lang/Throwable;)V

    sget-object v5, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    goto :goto_3

    :goto_2
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-static {v4, v5}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-virtual {p0, v3, v4}, Lwc6;->d(Ljava/io/File;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lwc6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->v:Lic6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lwc6;->b:Liz2;

    iget-object v6, v6, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lic6;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lwc6;->b:Liz2;

    iget-object v3, v3, Liz2;->j:Lnl3;

    invoke-interface {v3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->v:Lic6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flushed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lwc6;->b:Liz2;

    iget-object v5, v5, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " successfully."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lic6;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/posthog/internal/PostHogApiError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v3

    goto :goto_8

    :cond_2
    :goto_4
    iget-object v0, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v2, p0, Lwc6;->d:Lfr;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lfr;->removeAll(Ljava/util/Collection;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lwc6;->a:Lnb6;

    invoke-static {v2, v1}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    goto :goto_5

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_6
    :try_start_8
    invoke-static {v0}, Lhe6;->d(Ljava/io/IOException;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v4, p0, Lwc6;->a:Lnb6;

    iget-object v4, v4, Lnb6;->v:Lic6;

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :try_start_9
    const-string v3, "Flushing failed because of a network error, let\'s try again soon."

    invoke-interface {v4, v3}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flushing failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lic6;->a(Ljava/lang/String;)V

    :goto_7
    throw v0

    :goto_8
    iget-object v4, p0, Lwc6;->i:Lei0;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p0, Lwc6;->a:Lnb6;

    iget-object v5, v5, Lnb6;->v:Lic6;

    iget-object v6, p0, Lwc6;->b:Liz2;

    iget-object v6, v6, Liz2;->k:Lnl3;

    invoke-static {v3, v4, v0, v5, v6}, Lvc3;->b(Lcom/posthog/internal/PostHogApiError;Lei0;ILic6;Lnl3;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_5

    if-eqz v2, :cond_4

    iget-object v0, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, Lwc6;->d:Lfr;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lfr;->removeAll(Ljava/util/Collection;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lwc6;->a:Lnb6;

    invoke-static {v2, v1}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    goto :goto_9

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    return-void

    :cond_5
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_a
    if-eqz v2, :cond_6

    iget-object v2, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lwc6;->d:Lfr;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lfr;->removeAll(Ljava/util/Collection;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    monitor-exit v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    invoke-static {v3, v2}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    goto :goto_b

    :catchall_6
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_6
    throw v0

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecord;)V"
        }
    .end annotation

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->l:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lwc6;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v0, Lsc6;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1}, Lsc6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_0
    new-instance v0, Ltc6;

    invoke-direct {v0, p0, p1}, Ltc6;-><init>(Lwc6;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lhe6;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Ljava/lang/Integer;Z)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lwc6;->h:I

    add-int/lit8 p1, p1, -0x1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x1e

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lwc6;->a:Lnb6;

    iget-object p2, p2, Lnb6;->I:Lqb6;

    invoke-interface {p2, p1}, Lqb6;->a(I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lwc6;->g:Ljava/util/Date;

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lwc6;->g:Ljava/util/Date;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lwc6;->a:Lnb6;

    iget-object v3, v2, Lnb6;->I:Lqb6;

    invoke-interface {v3}, Lqb6;->b()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queue is paused until "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwc6;->g:Ljava/util/Date;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lic6;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public final d(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwc6;->d:Lfr;

    invoke-virtual {v1, p1}, Lfr;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lwc6;->a:Lnb6;

    invoke-static {v0, p1}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    iget-object p0, p0, Lwc6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to parse: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwc6;->d:Lfr;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lwc6;->d:Lfr;

    invoke-virtual {v2}, Lfr;->clear()V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lwc6;->a:Lnb6;

    invoke-static {v2, v1}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final f()V
    .locals 5

    const-string v0, "Failed to load cached "

    iget-boolean v1, p0, Lwc6;->m:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lwc6;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lwc6;->m:Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lwc6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->v:Lic6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v1, p0, Lwc6;->m:Z

    return-void

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lwc6;->m:Z

    throw v0

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwc6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Queue is flushing."

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lrc6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrc6;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lwc6;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lhe6;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final g(Lll3;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lwc6;->a:Lnb6;

    iget-object v1, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "Max retries ("

    const-string v3, "Flushing failed: "

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    iput v4, p0, Lwc6;->h:I

    iput-object v5, p0, Lwc6;->g:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    iget-object v6, v0, Lnb6;->v:Lic6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lic6;->a(Ljava/lang/String;)V

    iget v6, p0, Lwc6;->h:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lwc6;->h:I

    iget v8, v0, Lnb6;->i:I

    if-le v6, v8, :cond_0

    iget-object p1, v0, Lnb6;->v:Lic6;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lnb6;->i:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") exceeded, dropping "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lic6;->a(Ljava/lang/String;)V

    iput v4, p0, Lwc6;->h:I

    iput-object v5, p0, Lwc6;->g:Ljava/util/Date;

    invoke-virtual {p0}, Lwc6;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v7, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    move v7, v4

    goto :goto_1

    :cond_0
    :try_start_2
    instance-of v0, p1, Lcom/posthog/internal/PostHogApiError;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/posthog/internal/PostHogApiError;

    iget-object v5, p1, Lcom/posthog/internal/PostHogApiError;->d:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v5, v7}, Lwc6;->b(Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    invoke-virtual {p0, v5, v7}, Lwc6;->b(Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method public final h(Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecord;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lwc6;->f()V

    const-string v0, "Queue is full, the oldest "

    iget-object v1, p0, Lwc6;->d:Lfr;

    invoke-virtual {v1}, Ld1;->size()I

    move-result v1

    iget-object v2, p0, Lwc6;->b:Liz2;

    iget-object v2, v2, Liz2;->e:Lnl3;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    invoke-interface {v2, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lwc6;->d:Lfr;

    invoke-virtual {v2}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    move-object v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    invoke-static {v3, v1}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    iget-object v1, p0, Lwc6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is dropped."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    const-string v0, "Queued "

    iget-object v1, p0, Lwc6;->b:Liz2;

    iget-object v1, v1, Liz2;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lwc6;->a:Lnb6;

    iget-object v4, v4, Lnb6;->t:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lwc6;->n:Z

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iput-boolean v2, p0, Lwc6;->n:Z

    :cond_1
    iget-object v1, p0, Lwc6;->b:Liz2;

    iget-object v1, v1, Liz2;->m:Lnl3;

    invoke-interface {v1, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    if-nez v1, :cond_2

    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v1

    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".event"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v3, p0, Lwc6;->d:Lfr;

    invoke-virtual {v3, v4}, Lfr;->addLast(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v1

    const/16 v1, 0x2e

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, Lwc6;->b:Liz2;

    iget-object v5, v5, Liz2;->g:Lbm3;

    invoke-interface {v5, p1, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lwc6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->v:Lic6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->i:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v3, p2}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    iget-object v0, p0, Lwc6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwc6;->b:Liz2;

    iget-object v3, v3, Liz2;->i:Lnl3;

    invoke-interface {v3, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to parse: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lic6;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lwc6;->a:Lnb6;

    invoke-static {p0, v4}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    goto :goto_3

    :catchall_4
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    :goto_2
    iget-object p1, p0, Lwc6;->i:Lei0;

    iget p1, p1, Lei0;->b:I

    invoke-virtual {p0, p1}, Lwc6;->i(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lwc6;->a:Lnb6;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lwc6;->c()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, v0, Lnb6;->v:Lic6;

    const-string p1, "Cannot flush the Queue."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, v0, Lnb6;->v:Lic6;

    const-string p1, "Queue is flushing."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lwc6;->a:Lnb6;

    iget-object v0, p2, Lnb6;->F:Llc6;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Llc6;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p2, Lnb6;->v:Lic6;

    const-string p2, "Network isn\'t connected."

    invoke-interface {p0, p2}, Lic6;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_6
    new-instance p1, Luc6;

    invoke-direct {p1, p0, v1}, Luc6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lwc6;->g(Lll3;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final i(I)Z
    .locals 2

    iget-object v0, p0, Lwc6;->d:Lfr;

    invoke-virtual {v0}, Ld1;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Ld1;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lwc6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot flush the Queue yet, below the threshold: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j()V
    .locals 5

    invoke-virtual {p0}, Lwc6;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lwc6;->d:Lfr;

    invoke-static {v2}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lwc6;->d:Lfr;

    invoke-virtual {v3}, Lfr;->clear()V

    iget-object v3, p0, Lwc6;->d:Lfr;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lfr;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lwc6;->d:Lfr;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Lfr;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lwc6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cached "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lwc6;->b:Liz2;

    iget-object p0, p0, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from disk."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->b:Ljava/lang/String;

    iget-object p0, p0, Lwc6;->a:Lnb6;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnb6;->t:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lhe6;->c(Lnb6;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_3
    invoke-static {p0}, Lyr;->j0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    new-instance v0, Lwc6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p0}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_5
    return-object p0
.end method

.method public final start()V
    .locals 8

    iget-object v1, p0, Lwc6;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lwc6;->k:Lwc6$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lwc6;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    new-instance v2, Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/Timer;-><init>(Z)V

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->f:Lnl3;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    invoke-interface {v0, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget-object v0, p0, Lwc6;->b:Liz2;

    iget-object v0, v0, Liz2;->f:Lnl3;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    invoke-interface {v0, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    new-instance v3, Lwc6$b;

    invoke-direct {v3, p0}, Lwc6$b;-><init>(Lwc6;)V

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-object v3, p0, Lwc6;->k:Lwc6$b;

    iput-object v2, p0, Lwc6;->j:Ljava/util/Timer;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lwc6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->F:Llc6;

    if-eqz v0, :cond_2

    new-instance v1, Lap1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lap1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Llc6;->a(Lap1;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method
