.class public final Lze7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkv6;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lw39;

.field public final e:Lhg4;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lze7;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lfr<",
            "Li36;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkv6;Ljava/lang/String;Lw39;Lhg4;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lze7;->a:Lkv6;

    iput-object p2, p0, Lze7;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lze7;->c:Z

    iput-object p3, p0, Lze7;->d:Lw39;

    iput-object p4, p0, Lze7;->e:Lhg4;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lze7;->f:Ljava/util/ArrayList;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr<",
            "Li36;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lfr;->p()Ljava/lang/Object;

    invoke-virtual {p1}, Lfr;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lze7;->b()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lfr<",
            "Li36;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lze7;->g:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lze7;->g:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lze7;->g:Ljava/lang/ThreadLocal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lze7;->e:Lhg4;

    iget-object p0, p0, Lhg4;->e:Lfs6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lfs6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lorg/koin/core/error/MissingPropertyException;

    const-string v0, "Property \'"

    const-string v1, "\' not found"

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Li36;)Lfr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li36;",
            ")",
            "Lfr<",
            "Li36;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lze7;->b()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr;

    if-nez v0, :cond_0

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    invoke-virtual {p0}, Lze7;->b()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lfr;->addFirst(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lze7;->e:Lhg4;

    iget-object v0, v0, Lhg4;->a:Llx2;

    sget-object v1, Luo4;->DEBUG:Luo4;

    iget-object v2, v0, Llx2;->a:Ljava/lang/Object;

    check-cast v2, Luo4;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_2

    const/16 v2, 0x27

    if-eqz p3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " with qualifier \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v3, p0, Lze7;->c:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - scope:\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lze7;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p1}, Loe4;->a(Lne4;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ldd5;->b()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, p3}, Lze7;->g(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2}, Lqv8$a$a;->a(J)J

    move-result-wide p2

    invoke-static {p1}, Loe4;->a(Lne4;)Ljava/lang/String;

    sget-object p1, Lwt2;->c:Lwt2$a;

    sget-object p1, Lau2;->MICROSECONDS:Lau2;

    invoke-static {p2, p3, p1}, Lwt2;->k(JLau2;)J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lze7;->g(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lz37;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz37;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lze7;->e:Lhg4;

    iget-object v0, v0, Lhg4;->b:Lf12;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lz37;->e:Li36;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Li36;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lz37;->e:Li36;

    iget-object v3, p1, Lz37;->c:Lzk1;

    invoke-virtual {v1, v3}, Li36;->b(Lne4;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_20

    iget-object v1, p1, Lz37;->d:Lkv6;

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lze7;->g:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lfr;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li36;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lz37;->c:Lzk1;

    invoke-virtual {v1, v3}, Li36;->b(Lne4;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_20

    iget-object v1, v0, Lf12;->a:Lhg4;

    iget-object v3, v1, Lhg4;->d:Lf64;

    iget-object v4, p1, Lz37;->c:Lzk1;

    iget-object v5, p1, Lz37;->d:Lkv6;

    iget-object v6, p0, Lze7;->a:Lkv6;

    invoke-virtual {v3, v4, v5, v6}, Lf64;->a(Lne4;Lkv6;Lkv6;)Ld64;

    move-result-object v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lze7;->c:Z

    if-eqz v3, :cond_7

    :cond_6
    move-object v3, v2

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lze7;->d:Lw39;

    if-eqz v3, :cond_6

    iput-object v3, p1, Lz37;->f:Lw39;

    iget-object v1, v1, Lhg4;->d:Lf64;

    iget-object v4, p1, Lz37;->c:Lzk1;

    invoke-virtual {v1, v4, v5, v3}, Lf64;->a(Lne4;Lkv6;Lkv6;)Ld64;

    move-result-object v1

    move-object v3, v1

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Ld64;->c(Lz37;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_9
    move-object v1, v2

    :goto_5
    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lze7;->c:Z

    if-nez v1, :cond_b

    iget-object v1, p1, Lz37;->d:Lkv6;

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, p1, Lz37;->c:Lzk1;

    invoke-virtual {v1, v2}, Lzk1;->e(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    iget-object v1, p0, Lze7;->f:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Lfr;

    new-instance v5, Lz67;

    invoke-direct {v5, v1}, Lz67;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v5}, Lfr;-><init>(Ljava/util/Collection;)V

    :cond_c
    :goto_7
    invoke-virtual {v4}, Lfr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v4}, Lfr;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lze7;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    iget-object v1, v1, Lze7;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lze7;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v4, v5}, Lfr;->addLast(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lze7;

    iget-object v3, v0, Lf12;->a:Lhg4;

    iget-object v4, v6, Lze7;->d:Lw39;

    if-eqz v4, :cond_13

    iget-object v5, v3, Lhg4;->d:Lf64;

    iget-object v7, p1, Lz37;->c:Lzk1;

    iget-object v8, p1, Lz37;->d:Lkv6;

    invoke-virtual {v5, v7, v8, v4}, Lf64;->a(Lne4;Lkv6;Lkv6;)Ld64;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_a

    :cond_12
    :goto_9
    move-object v3, v4

    goto :goto_b

    :cond_13
    :goto_a
    iget-object v3, v3, Lhg4;->d:Lf64;

    iget-object v4, p1, Lz37;->c:Lzk1;

    iget-object v5, p1, Lz37;->d:Lkv6;

    iget-object v7, v6, Lze7;->a:Lkv6;

    invoke-virtual {v3, v4, v5, v7}, Lf64;->a(Lne4;Lkv6;Lkv6;)Ld64;

    move-result-object v4

    goto :goto_9

    :goto_b
    if-eqz v3, :cond_18

    iget-boolean v1, v6, Lze7;->c:Z

    if-eqz v1, :cond_14

    instance-of v1, v3, Lm08;

    if-nez v1, :cond_14

    invoke-virtual {v3, p1}, Ld64;->c(Lz37;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_11

    :cond_14
    new-instance v4, Lz37;

    iget-object v5, p1, Lz37;->a:Llx2;

    iget-object v7, p1, Lz37;->c:Lzk1;

    iget-object v8, p1, Lz37;->d:Lkv6;

    iget-object v9, p1, Lz37;->e:Li36;

    invoke-direct/range {v4 .. v9}, Lz37;-><init>(Llx2;Lze7;Lzk1;Lkv6;Li36;)V

    iget-object v1, v6, Lze7;->d:Lw39;

    iput-object v1, v4, Lz37;->f:Lw39;

    if-eqz v1, :cond_15

    iget-boolean v5, v6, Lze7;->c:Z

    if-nez v5, :cond_15

    iput-object v1, v4, Lz37;->f:Lw39;

    :cond_15
    if-eqz v9, :cond_16

    invoke-virtual {v6, v9}, Lze7;->d(Li36;)Lfr;

    move-result-object v1

    goto :goto_c

    :cond_16
    move-object v1, v2

    :goto_c
    invoke-virtual {v3, v4}, Ld64;->c(Lz37;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_17

    invoke-virtual {v6, v1}, Lze7;->a(Lfr;)V

    :cond_17
    :goto_d
    move-object v1, v3

    goto :goto_11

    :cond_18
    iget-object v3, p1, Lz37;->d:Lkv6;

    if-eqz v3, :cond_1a

    :cond_19
    :goto_e
    move-object v3, v2

    goto :goto_f

    :cond_1a
    iget-object v3, v6, Lze7;->g:Ljava/lang/ThreadLocal;

    if-nez v3, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lfr;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-virtual {v3}, Lfr;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li36;

    if-eqz v3, :cond_19

    iget-object v4, p1, Lz37;->c:Lzk1;

    invoke-virtual {v3, v4}, Li36;->b(Lne4;)Ljava/lang/Object;

    move-result-object v3

    :goto_f
    if-eqz v3, :cond_11

    goto :goto_d

    :cond_1d
    :goto_10
    move-object v1, v2

    :cond_1e
    :goto_11
    if-nez v1, :cond_20

    iget-object v0, v0, Lf12;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La47;

    iget-object v3, p1, Lz37;->a:Llx2;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|- [\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, La47;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'] ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Luo4;->DEBUG:Luo4;

    invoke-virtual {v3, v5, v4}, Llx2;->a(Luo4;Ljava/lang/String;)V

    invoke-interface {v1}, La47;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    :cond_20
    move-object v2, v1

    :cond_21
    if-nez v2, :cond_28

    iget-object v0, p1, Lz37;->d:Lkv6;

    const-string v1, ""

    const/16 v2, 0x27

    if-eqz v0, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " and qualifier \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_22
    move-object v0, v1

    :goto_12
    iget-object v3, p1, Lz37;->b:Lze7;

    const-string v4, "scope \'"

    if-eq v3, p0, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' (resolution context scope: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lz37;->b:Lze7;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_13
    iget-object v4, p0, Lze7;->f:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lze7;

    iget-object v7, v7, Lze7;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_24
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " Searched scopes: [\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lze7;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'] -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\']"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_26
    iget-object p1, p1, Lz37;->c:Lzk1;

    invoke-static {p1}, Loe4;->a(Lne4;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x2e

    invoke-static {v4, p1, p1}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SavedStateHandle"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string p0, " SavedStateHandle is provided by the ViewModel\'s CreationExtras during creation, not by a module definition \u2014 resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner and inject SavedStateHandle in its constructor (do not resolve it lazily or outside construction)."

    goto :goto_16

    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Check or add definition for type \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in scope \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lze7;->a:Lkv6;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_16
    new-instance v5, Lorg/koin/core/error/NoDefinitionFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No definition found for type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_28
    return-object v2
.end method

.method public final g(Lzk1;Li36;Lkv6;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lz37;

    iget-object v6, p0, Lze7;->e:Lhg4;

    iget-object v1, v6, Lhg4;->a:Llx2;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lz37;-><init>(Llx2;Lze7;Lzk1;Lkv6;Li36;)V

    const-string p0, "| << parameters"

    if-nez v5, :cond_0

    invoke-virtual {v2, v0}, Lze7;->f(Lz37;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, v6, Lhg4;->a:Llx2;

    sget-object p2, Luo4;->DEBUG:Luo4;

    iget-object p3, p1, Llx2;->a:Ljava/lang/Object;

    check-cast p3, Luo4;

    invoke-virtual {p3, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-gtz p3, :cond_1

    invoke-virtual {v5}, Li36;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2, v5}, Lze7;->d(Li36;)Lfr;

    move-result-object p3

    :try_start_0
    invoke-virtual {v2, v0}, Lze7;->f(Lz37;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Llx2;->a(Luo4;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lze7;->a(Lfr;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Luo4;->DEBUG:Luo4;

    invoke-virtual {p1, v0, p0}, Llx2;->a(Luo4;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lze7;->a(Lfr;)V

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lze7;->b:Ljava/lang/String;

    const-string v1, "\']"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
