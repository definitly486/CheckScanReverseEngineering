.class public final Lel2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lel2$f;,
        Lel2$e;
    }
.end annotation


# instance fields
.field public final a:Lm94;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lch8;

.field public e:Lel2$a;

.field public f:Lel2$b;

.field public g:Lel2$c;

.field public h:Lez4$g;

.field public i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lel2$e;",
            ">;"
        }
    .end annotation
.end field

.field public volatile j:Lel2$f;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lch8;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lel2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm94;->a(Ljava/lang/Class;Ljava/lang/String;)Lm94;

    move-result-object v0

    iput-object v0, p0, Lel2;->a:Lm94;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lel2;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lel2;->i:Ljava/util/Collection;

    new-instance v0, Lel2$f;

    invoke-direct {v0, v1, v1}, Lel2$f;-><init>(Lio/grpc/h$k;Lh88;)V

    iput-object v0, p0, Lel2;->j:Lel2$f;

    iput-object p1, p0, Lel2;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lel2;->d:Lch8;

    return-void
.end method


# virtual methods
.method public final a(Ll86;[Lio/grpc/c;Lio/grpc/h$g;)Lel2$e;
    .locals 1

    new-instance v0, Lel2$e;

    invoke-direct {v0, p0, p1, p2}, Lel2$e;-><init>(Lel2;Ll86;[Lio/grpc/c;)V

    iget-object p1, p1, Ll86;->a:Lio/grpc/b;

    invoke-virtual {p1}, Lio/grpc/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p3, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    if-nez p1, :cond_0

    iget-object p1, p3, Lio/grpc/h$g;->c:Lh88;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p3, Lio/grpc/h$g;->c:Lh88;

    iput-object p1, v0, Lel2$e;->o:Lh88;

    :cond_1
    iget-object p1, p0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lel2;->d:Lch8;

    iget-object p0, p0, Lel2;->e:Lel2$a;

    invoke-virtual {p1, p0}, Lch8;->b(Ljava/lang/Runnable;)V

    :cond_2
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    aget-object p3, p2, p1

    invoke-virtual {p3}, Lio/grpc/c;->U()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lra5<",
            "**>;",
            "Lla5;",
            "Lio/grpc/b;",
            "[",
            "Lio/grpc/c;",
            ")",
            "Lcm1;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ll86;

    new-instance v1, La86;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Ll86;-><init>(Lra5;Lla5;Lio/grpc/b;Lio/grpc/h$f;)V

    iget-object p1, p0, Lel2;->j:Lel2$f;

    :goto_0
    iget-object p2, p1, Lel2$f;->b:Lh88;

    if-eqz p2, :cond_0

    new-instance p1, Li53;

    sget-object p3, Ldm1$a;->PROCESSED:Ldm1$a;

    invoke-direct {p1, p2, p3, p4}, Li53;-><init>(Lh88;Ldm1$a;[Lio/grpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lel2;->d:Lch8;

    invoke-virtual {p0}, Lch8;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object p2, p1, Lel2$f;->a:Lio/grpc/h$k;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lio/grpc/h$k;->a(Ll86;)Lio/grpc/h$g;

    move-result-object p2

    iget-object p3, v0, Ll86;->a:Lio/grpc/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lio/grpc/b;->b()Z

    move-result v1

    invoke-static {p2, v1}, Lvs3;->e(Lio/grpc/h$g;Z)Lem1;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p1, v0, Ll86;->c:Lra5;

    iget-object p2, v0, Ll86;->b:Lla5;

    invoke-interface {v1, p1, p2, p3, p4}, Lem1;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    iget-object p3, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lel2;->j:Lel2$f;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0, p4, p2}, Lel2;->a(Ll86;[Lio/grpc/c;Lio/grpc/h$g;)Lel2$e;

    move-result-object p1

    monitor-exit p3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    monitor-exit p3

    move-object p1, v1

    goto :goto_0

    :goto_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p0, p0, Lel2;->d:Lch8;

    invoke-virtual {p0}, Lch8;->a()V

    throw p1
.end method

.method public final c()Lm94;
    .locals 0

    iget-object p0, p0, Lel2;->a:Lm94;

    return-object p0
.end method

.method public final d(Lnz4$a;)Ljava/lang/Runnable;
    .locals 1

    check-cast p1, Lez4$g;

    iput-object p1, p0, Lel2;->h:Lez4$g;

    new-instance v0, Lel2$a;

    invoke-direct {v0, p1}, Lel2$a;-><init>(Lez4$g;)V

    iput-object v0, p0, Lel2;->e:Lel2$a;

    new-instance v0, Lel2$b;

    invoke-direct {v0, p1}, Lel2$b;-><init>(Lez4$g;)V

    iput-object v0, p0, Lel2;->f:Lel2$b;

    new-instance v0, Lel2$c;

    invoke-direct {v0, p1}, Lel2$c;-><init>(Lez4$g;)V

    iput-object v0, p0, Lel2;->g:Lel2$c;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Lh88;)V
    .locals 3

    iget-object v0, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lel2;->j:Lel2$f;

    iget-object v1, v1, Lel2$f;->b:Lh88;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lel2;->j:Lel2$f;

    new-instance v2, Lel2$f;

    iget-object v1, v1, Lel2$f;->a:Lio/grpc/h$k;

    invoke-direct {v2, v1, p1}, Lel2$f;-><init>(Lio/grpc/h$k;Lh88;)V

    iput-object v2, p0, Lel2;->j:Lel2$f;

    iget-object v1, p0, Lel2;->d:Lch8;

    new-instance v2, Lel2$d;

    invoke-direct {v2, p0, p1}, Lel2$d;-><init>(Lel2;Lh88;)V

    invoke-virtual {v1, v2}, Lch8;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lel2;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lel2;->g:Lel2$c;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lel2;->d:Lch8;

    invoke-virtual {v1, p1}, Lch8;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lel2;->g:Lel2$c;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lel2;->d:Lch8;

    invoke-virtual {p0}, Lch8;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lio/grpc/h$k;)V
    .locals 12

    iget-object v0, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lel2;->j:Lel2$f;

    new-instance v2, Lel2$f;

    iget-object v1, v1, Lel2$f;->b:Lh88;

    invoke-direct {v2, p1, v1}, Lel2$f;-><init>(Lio/grpc/h$k;Lh88;)V

    iput-object v2, p0, Lel2;->j:Lel2$f;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lel2;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lel2;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lel2$e;

    iget-object v4, v2, Lel2$e;->l:Ll86;

    invoke-virtual {p1, v4}, Lio/grpc/h$k;->a(Ll86;)Lio/grpc/h$g;

    move-result-object v4

    iget-object v5, v2, Lel2$e;->l:Ll86;

    iget-object v5, v5, Ll86;->a:Lio/grpc/b;

    invoke-virtual {v5}, Lio/grpc/b;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    if-nez v6, :cond_2

    iget-object v6, v4, Lio/grpc/h$g;->c:Lh88;

    invoke-virtual {v6}, Lh88;->f()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, v4, Lio/grpc/h$g;->c:Lh88;

    iput-object v6, v2, Lel2$e;->o:Lh88;

    :cond_3
    invoke-virtual {v5}, Lio/grpc/b;->b()Z

    move-result v6

    invoke-static {v4, v6}, Lvs3;->e(Lio/grpc/h$g;Z)Lem1;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lel2;->c:Ljava/util/concurrent/Executor;

    iget-object v5, v5, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-eqz v5, :cond_4

    move-object v6, v5

    :cond_4
    iget-object v5, v2, Lel2$e;->m:Lky1;

    invoke-virtual {v5}, Lky1;->a()Lky1;

    move-result-object v7

    :try_start_1
    iget-object v8, v2, Lel2$e;->l:Ll86;

    iget-object v9, v8, Ll86;->c:Lra5;

    iget-object v10, v8, Ll86;->b:Lla5;

    iget-object v8, v8, Ll86;->a:Lio/grpc/b;

    iget-object v11, v2, Lel2$e;->n:[Lio/grpc/c;

    invoke-interface {v4, v9, v10, v8, v11}, Lem1;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v5, v7}, Lky1;->c(Lky1;)V

    monitor-enter v2

    :try_start_2
    iget-object v5, v2, Lgl2;->e:Lcm1;

    if-eqz v5, :cond_5

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    const-string v5, "stream"

    invoke-static {v4, v5}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v2, Lgl2;->e:Lcm1;

    const/4 v7, 0x1

    if-nez v5, :cond_6

    move v8, v7

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    const-string v9, "realStream already set to %s"

    invoke-static {v9, v8, v5}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iput-object v4, v2, Lgl2;->e:Lcm1;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lgl2;->j:J

    iget-object v4, v2, Lgl2;->d:Ldm1;

    if-nez v4, :cond_7

    iput-object v3, v2, Lgl2;->g:Ljava/util/List;

    iput-boolean v7, v2, Lgl2;->c:Z

    :cond_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v4}, Lgl2;->o(Ldm1;)V

    new-instance v3, Lhl2;

    invoke-direct {v3, v2}, Lhl2;-><init>(Lgl2;)V

    :goto_2
    if-eqz v3, :cond_9

    invoke-interface {v6, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v5, v7}, Lky1;->c(Lky1;)V

    throw p0

    :cond_a
    iget-object p1, p0, Lel2;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-virtual {p0}, Lel2;->f()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lel2$e;

    iget-object v2, p0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lel2;->i:Ljava/util/Collection;

    :cond_d
    invoke-virtual {p0}, Lel2;->f()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lel2;->d:Lch8;

    iget-object v1, p0, Lel2;->f:Lel2$b;

    invoke-virtual {v0, v1}, Lch8;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lel2;->j:Lel2$f;

    iget-object v0, v0, Lel2$f;->b:Lh88;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lel2;->g:Lel2$c;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lel2;->d:Lch8;

    invoke-virtual {v1, v0}, Lch8;->b(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lel2;->g:Lel2$c;

    :cond_e
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p0, p0, Lel2;->d:Lch8;

    invoke-virtual {p0}, Lch8;->a()V

    return-void

    :goto_5
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    goto :goto_7

    :cond_f
    :goto_6
    :try_start_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method
