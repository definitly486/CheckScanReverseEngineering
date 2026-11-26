.class public final Lph5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm95;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lph5$a;
    }
.end annotation


# instance fields
.field public a:Lkia;

.field public b:Lz94;


# virtual methods
.method public final a(Lcom/my/target/t$a;Lcom/my/target/x$a;Landroid/content/Context;)V
    .locals 7

    iget-object v0, p1, Lcom/my/target/t$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Lz94;

    invoke-direct {v2, v0, p3}, Lz94;-><init>(ILandroid/content/Context;)V

    iput-object v2, p0, Lph5;->b:Lz94;

    iget-object p3, v2, Lzc0;->a:Lz2a;

    const/4 v3, 0x0

    iput-boolean v3, p3, Lz2a;->c:Z

    new-instance v4, Lph5$a;

    invoke-direct {v4, p0, p2}, Lph5$a;-><init>(Lph5;Lcom/my/target/x$a;)V

    iput-object v4, v2, Lz94;->h:Lz94$a;

    iget-object p2, p3, Lz2a;->a:Lf72;

    iget p3, p1, Lcom/my/target/t$a;->d:I

    const-string v2, "ea"

    if-ltz p3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CustomParams: Age param set to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lf72;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "CustomParams: Age param removed"

    invoke-static {v1, p3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lf72;->c(Ljava/lang/String;)Z

    :goto_0
    iget p3, p1, Lcom/my/target/t$a;->c:I

    const-string v2, "eg"

    const/4 v4, 0x2

    if-eqz p3, :cond_1

    const/4 v5, 0x1

    if-eq p3, v5, :cond_1

    if-eq p3, v4, :cond_1

    invoke-virtual {p2, v2}, Lf72;->c(Ljava/lang/String;)Z

    const-string p3, "CustomParams: Gender param removed"

    invoke-static {v1, p3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CustomParams: Gender param is set to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lf72;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p3, p1, Lcom/my/target/t$a;->e:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "stories_playhead_v2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "1"

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "CustomParams: STORIES_PLAYHEAD_V2 feature flag enabled"

    invoke-static {v1, v6}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v6, "CustomParams: STORIES_PLAYHEAD_V2 feature flag disabled"

    invoke-static {v1, v6}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual {p2, v5, v2}, Lf72;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    monitor-exit p2

    goto :goto_2

    :cond_4
    iget-object v6, p2, Lf72;->b:Ljava/util/HashMap;

    if-nez v2, :cond_5

    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :try_start_3
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p2

    goto :goto_2

    :goto_4
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_6
    iget-object p1, p1, Lcom/my/target/t$a;->b:Ljava/lang/String;

    iget-object p2, p0, Lph5;->a:Lkia;

    if-eqz p2, :cond_8

    const-string p1, "MyTargetInterstitialAdAdapter: Got banner from mediation response"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lph5;->b:Lz94;

    iget-object p0, p0, Lph5;->a:Lkia;

    iget-object p2, p1, Lzc0;->b:Lcom/my/target/t0$a;

    new-instance p3, Lcom/my/target/t0;

    iget v0, p2, Lcom/my/target/t0$a;->a:I

    const-string v1, "myTarget"

    invoke-direct {p3, v0, v1, v3}, Lcom/my/target/t0;-><init>(ILjava/lang/String;I)V

    iget-boolean v0, p2, Lcom/my/target/t0$a;->b:Z

    iput-boolean v0, p3, Lcom/my/target/t0;->e:Z

    iget-object v0, p1, Lzc0;->a:Lz2a;

    new-instance v1, Lcom/my/target/u;

    invoke-direct {v1, v0, p2, p0}, Lcom/my/target/u;-><init>(Lz2a;Lcom/my/target/t0$a;Lkia;)V

    new-instance p0, Ljd0;

    invoke-direct {p0, p1}, Ljd0;-><init>(Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    iget-object p0, p1, Lkd0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p0}, Lrh5;->a(Landroid/content/Context;)V

    :cond_7
    new-instance p0, Lnr1;

    invoke-direct {p0, v4, v1, p3}, Lnr1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lw4a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MyTargetInterstitialAdAdapter: Load id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lph5;->b:Lz94;

    invoke-virtual {p0}, Lkd0;->b()V

    return-void

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MyTargetInterstitialAdAdapter: Load id "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from BID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lph5;->b:Lz94;

    iget-object p2, p0, Lzc0;->a:Lz2a;

    iput-object p1, p2, Lz2a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lkd0;->b()V

    return-void

    :catchall_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "MyTargetInterstitialAdAdapter: Error - failed to request ad, unable to convert slotId "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to int"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ll6a;->o:Ll6a;

    invoke-virtual {p2, p1, p0}, Lcom/my/target/x$a;->a(Ll6a;Lm95;)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lph5;->b:Lz94;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lz94;->h:Lz94$a;

    iget-object v2, v0, Lkd0;->f:Lcom/my/target/b3;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/my/target/b3;->destroy()V

    iput-object v1, v0, Lkd0;->f:Lcom/my/target/b3;

    :cond_1
    iput-object v1, v0, Lz94;->h:Lz94$a;

    iput-object v1, p0, Lph5;->b:Lz94;

    return-void
.end method

.method public final show()V
    .locals 0

    iget-object p0, p0, Lph5;->b:Lz94;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkd0;->c()V

    return-void
.end method
