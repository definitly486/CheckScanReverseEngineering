.class public final Lqd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxc6<",
        "Lcom/posthog/PostHogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lnb6;

.field public final b:Lwc6;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Led6;

.field public e:Lod6$a;


# direct methods
.method public constructor <init>(Lnb6;Lwc6;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    iget-object v0, p1, Lnb6;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd6;->a:Lnb6;

    iput-object p2, p0, Lqd6;->b:Lwc6;

    iput-object p4, p0, Lqd6;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz p3, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Led6;

    if-eqz p3, :cond_1

    new-instance p4, Ljava/io/File;

    const-string v1, "-buffer"

    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/io/File;

    const-string p3, "java.io.tmpdir"

    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "posthog-replay-buffer/"

    invoke-static {v1, v0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p1, p4}, Led6;-><init>(Lnb6;Ljava/io/File;)V

    iput-object p2, p0, Lqd6;->d:Led6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lqd6;->d:Led6;

    invoke-virtual {v0}, Led6;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lqd6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "No buffered replay events to migrate"

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lqd6;->d:Led6;

    iget-object v2, p0, Lqd6;->b:Lwc6;

    iget-object v3, v2, Lwc6;->b:Liz2;

    iget-object v3, v3, Liz2;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lwc6;->a:Lnb6;

    iget-object v5, v5, Lnb6;->t:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v4, :cond_2

    iget-object v1, v1, Led6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    const-string v2, "Replay queue has no disk directory configured. Skipping buffer migration."

    invoke-interface {v1, v2}, Lic6;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    iget-object v5, v1, Led6;->d:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v1, Led6;->c:Ljava/util/ArrayList;

    invoke-static {v6}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Led6;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v5

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v7, v1, Led6;->a:Lnb6;

    iget-object v7, v7, Lnb6;->v:Lic6;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error creating replay target queue directory: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lic6;->a(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Led6;->b:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, v1, Led6;->a:Lnb6;

    iget-object v7, v7, Lnb6;->v:Lic6;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to move replay buffer item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lic6;->a(Ljava/lang/String;)V

    sget-object v6, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_3
    iget-object v8, v1, Led6;->a:Lnb6;

    iget-object v8, v8, Lnb6;->v:Lic6;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to migrate replay buffer item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lic6;->a(Ljava/lang/String;)V

    sget-object v6, Lj59;->a:Lj59;

    goto :goto_2

    :cond_6
    iget-object v1, v2, Lwc6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Liq;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Liq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :goto_4
    iget-object p0, p0, Lqd6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Migrated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " buffered replay events to replay queue."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v5

    throw p0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/posthog/PostHogEvent;

    iget-object v0, p0, Lqd6;->e:Lod6$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lod6$a;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lqd6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lzg4;

    invoke-direct {v2, v1, p0, p1}, Lzg4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_0
    iget-object v0, p0, Lqd6;->e:Lod6$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lod6$a;->a:Lod6;

    iget-boolean v0, v0, Lod6;->l:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    iget-object p0, p0, Lqd6;->b:Lwc6;

    invoke-virtual {p0, p1}, Lwc6;->add(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lqd6;->e:Lod6$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lod6$a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lqd6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Replay queue flush suppressed \u2014 still buffering"

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lqd6;->b:Lwc6;

    invoke-virtual {p0}, Lwc6;->flush()V

    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lqd6;->b:Lwc6;

    invoke-virtual {p0}, Lwc6;->start()V

    return-void
.end method
