.class public Lgl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgl2$k;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public volatile c:Z

.field public d:Ldm1;

.field public e:Lcm1;

.field public f:Lh88;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lgl2$k;

.field public i:J

.field public j:J

.field public k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgl2;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lgl2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$d;

    invoke-direct {v1, p0, p1}, Lgl2$d;-><init>(Lgl2;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$e;

    invoke-direct {v1, p0, p1}, Lgl2$e;-><init>(Lgl2;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lqu1;)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$b;

    invoke-direct {v1, p0, p1}, Lgl2$b;-><init>(Lgl2;Lqu1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lgl2;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lgl2;->e:Lcm1;

    invoke-interface {p0, p1}, Le98;->d(Ljava/io/InputStream;)V

    return-void

    :cond_1
    new-instance v0, Lgl2$g;

    invoke-direct {v0, p0, p1}, Lgl2$g;-><init>(Lgl2;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lgl2;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$a;

    invoke-direct {v1, p0}, Lgl2$a;-><init>(Lgl2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lyd2;)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$c;

    invoke-direct {v1, p0, p1}, Lgl2$c;-><init>(Lgl2;Lyd2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lgl2;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lgl2;->e:Lcm1;

    invoke-interface {p0}, Le98;->flush()V

    return-void

    :cond_1
    new-instance v0, Lgl2$h;

    invoke-direct {v0, p0}, Lgl2$h;-><init>(Lgl2;)V

    invoke-virtual {p0, v0}, Lgl2;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lxc2;)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    new-instance v1, Lgl2$f;

    invoke-direct {v1, p0, p1}, Lgl2$f;-><init>(Lgl2;Lxc2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    new-instance v0, Lgl2$j;

    invoke-direct {v0, p0}, Lgl2$j;-><init>(Lgl2;)V

    invoke-virtual {p0, v0}, Lgl2;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ldm1;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lgl2;->d:Ldm1;

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
    iget-object v0, p0, Lgl2;->f:Lh88;

    iget-boolean v1, p0, Lgl2;->c:Z

    if-nez v1, :cond_1

    new-instance v2, Lgl2$k;

    invoke-direct {v2, p1}, Lgl2$k;-><init>(Ldm1;)V

    iput-object v2, p0, Lgl2;->h:Lgl2$k;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object p1, p0, Lgl2;->d:Ldm1;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lgl2;->i:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object p0, Ldm1$a;->PROCESSED:Ldm1$a;

    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    invoke-interface {p1, v0, p0, v1}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lgl2;->o(Ldm1;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isReady()Z
    .locals 1

    iget-boolean v0, p0, Lgl2;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgl2;->e:Lcm1;

    invoke-interface {p0}, Le98;->isReady()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Lh88;)V
    .locals 5

    iget-object v0, p0, Lgl2;->d:Ldm1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v0, "reason"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgl2;->e:Lcm1;

    if-nez v0, :cond_2

    sget-object v3, Ld31;->e:Ld31;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v4, "realStream already set to %s"

    invoke-static {v4, v2, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iput-object v3, p0, Lgl2;->e:Lcm1;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lgl2;->j:J

    iput-object p1, p0, Lgl2;->f:Lh88;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    new-instance v0, Lgl2$i;

    invoke-direct {v0, p0, p1}, Lgl2$i;-><init>(Lgl2;Lh88;)V

    invoke-virtual {p0, v0}, Lgl2;->k(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lgl2;->n()V

    invoke-virtual {p0, p1}, Lgl2;->p(Lh88;)V

    iget-object p0, p0, Lgl2;->d:Ldm1;

    sget-object v0, Ldm1$a;->PROCESSED:Ldm1$a;

    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    invoke-interface {p0, p1, v0, v1}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgl2;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lgl2;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l(Ly54;)V
    .locals 6

    const-string v0, "_delay"

    const-string v1, "_delay"

    const-string v2, ""

    const-string v3, ""

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lgl2;->d:Ldm1;

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lgl2;->e:Lcm1;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lgl2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lgl2;->j:J

    iget-wide v4, p0, Lgl2;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgl2;->e:Lcm1;

    invoke-interface {v0, p1}, Lcm1;->l(Ly54;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgl2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lgl2;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "was_still_waiting"

    iget-object p1, p1, Ly54;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lgl2;->d:Ldm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lgl2;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lgl2;->e:Lcm1;

    invoke-interface {p0}, Le98;->m()V

    return-void

    :cond_1
    new-instance v0, Lfl2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfl2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lgl2;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgl2;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lgl2;->g:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgl2;->c:Z

    iget-object v2, p0, Lgl2;->h:Lgl2$k;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    monitor-enter v2

    :try_start_1
    iget-object v3, v2, Lgl2$k;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, v2, Lgl2$k;->c:Ljava/util/List;

    iput-boolean v1, v2, Lgl2$k;->b:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v3, v2, Lgl2$k;->c:Ljava/util/List;

    iput-object p0, v2, Lgl2$k;->c:Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object p0, v3

    goto :goto_1

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_3
    :try_start_3
    iget-object v1, p0, Lgl2;->g:Ljava/util/List;

    iput-object v0, p0, Lgl2;->g:Ljava/util/List;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final o(Ldm1;)V
    .locals 2

    iget-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgl2;->k:Ljava/util/ArrayList;

    iget-object p0, p0, Lgl2;->e:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->i(Ldm1;)V

    return-void
.end method

.method public p(Lh88;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
