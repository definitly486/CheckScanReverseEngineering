.class public final Lwl0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwl0$a;
    }
.end annotation


# instance fields
.field public final a:Ltn0;

.field public final b:Ljf6;

.field public final c:Ln53;

.field public final d:Lbo0;

.field public final e:Lfh8;

.field public final f:I

.field public final g:Lz68;

.field public final h:Lgy6;


# direct methods
.method public constructor <init>(Ltn0;Ljf6;Ln53;Lbo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwl0;->a:Ltn0;

    iput-object p2, p0, Lwl0;->b:Ljf6;

    iput-object p3, p0, Lwl0;->c:Ln53;

    iput-object p4, p0, Lwl0;->d:Lbo0;

    sget-object p1, Lwl0$b;->f:Lwl0$b;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lwl0;->e:Lfh8;

    invoke-interface {p2}, Ljf6;->O0()I

    move-result p2

    iput p2, p0, Lwl0;->f:I

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lwl0;->g:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lwl0;->h:Lgy6;

    return-void
.end method

.method public static m(Lu88;)Lt88;
    .locals 15

    invoke-virtual {p0}, Lu88;->a()Lu88$b;

    move-result-object v0

    invoke-virtual {v0}, Lu88$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lu88;->a()Lu88$b;

    move-result-object v0

    invoke-virtual {v0}, Lu88$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lu88;->a()Lu88$b;

    move-result-object v0

    invoke-virtual {v0}, Lu88$b;->a()Lu88$a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lt88$b;

    invoke-virtual {v0}, Lu88$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lu88$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lt88$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->e()Z

    move-result v8

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object v0

    invoke-virtual {v0}, Lu88$c;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lu88;->b()Lu88$c;

    move-result-object p0

    invoke-virtual {p0}, Lu88$c;->a()Z

    move-result v14

    new-instance v5, Lt88$a;

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Lt88$a;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lt88;

    invoke-direct/range {v1 .. v6}, Lt88;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt88$a;Lt88$b;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcm0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcm0;

    iget v1, v0, Lcm0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcm0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcm0;

    invoke-direct {v0, p0, p2}, Lcm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lcm0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lcm0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lwl0;->a:Ltn0;

    iget v2, p0, Lwl0;->f:I

    iput-object p1, v0, Lcm0;->l:Ljava/util/ArrayList;

    iput v4, v0, Lcm0;->o:I

    invoke-interface {p2, v2, v0}, Ltn0;->i(ILcm0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Law0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lpv0;

    invoke-virtual {v1}, Law0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Law0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Law0;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    invoke-direct {v2, v4, v5, v1}, Lpv0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p2, Lkw0;

    invoke-direct {p2, v0}, Lkw0;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    move-object p2, v3

    goto :goto_4

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_4
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    throw v0

    :cond_8
    :goto_5
    instance-of v0, p2, Lk57$a;

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, p2

    :goto_6
    check-cast v3, Lkw0;

    if-eqz v3, :cond_a

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpz3;

    instance-of v4, v4, Ljw0;

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, -0x1

    :goto_8
    invoke-static {v1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v2

    invoke-virtual {v2, v3}, Ly74;->c(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p2, v0, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Ldm0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ldm0;

    iget v1, v0, Ldm0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ldm0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Ldm0;

    invoke-direct {v0, p0, p3}, Ldm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p3, v0, Ldm0;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ldm0;->p:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p2, v0, Ldm0;->m:Ljava/util/ArrayList;

    iget-object p1, v0, Ldm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lwl0;->a:Ltn0;

    iget v2, p0, Lwl0;->f:I

    iput-object p1, v0, Ldm0;->l:Ljava/util/ArrayList;

    iput-object p2, v0, Ldm0;->m:Ljava/util/ArrayList;

    iput v5, v0, Ldm0;->p:I

    invoke-interface {p3, v2, v4, v0}, Ltn0;->n(IILf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq81;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll81;

    invoke-virtual {v1}, Lq81;->a()I

    move-result v4

    invoke-virtual {v1}, Lq81;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lq81;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, ""

    :cond_4
    invoke-virtual {v1}, Lq81;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v5, v6, v1}, Ll81;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p3, Lo71;

    invoke-direct {p3, v0}, Lo71;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p3}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p3, v0

    :goto_4
    invoke-static {p3}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    throw v0

    :cond_7
    :goto_5
    instance-of v0, p3, Lk57$a;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v3, p3

    :goto_6
    check-cast v3, Lo71;

    if-eqz v3, :cond_a

    iget-object p3, v3, Lo71;->a:Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v3, v3, Li71;

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, -0x1

    :goto_8
    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v1

    invoke-virtual {v1, v2}, Ly74;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p2, p3, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final c(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lem0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lem0;

    iget v1, v0, Lem0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lem0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lem0;

    invoke-direct {v0, p0, p2}, Lem0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lem0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lem0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lem0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lwl0;->a:Ltn0;

    iput-object p1, v0, Lem0;->l:Ljava/util/ArrayList;

    iput v4, v0, Lem0;->o:I

    invoke-interface {p2, v0}, Ltn0;->j(Lem0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lzp6;

    invoke-virtual {p2}, Lzp6;->a()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljr0;

    invoke-virtual {p2}, Lzp6;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lzp6;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lzp6;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lzp6;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-direct {v0, v1, v2, v4, p2}, Ljr0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_3

    :goto_2
    new-instance v0, Lk57$a;

    invoke-direct {v0, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    throw p2

    :cond_7
    :goto_4
    instance-of p2, v0, Lk57$a;

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, v0

    :goto_5
    check-cast v3, Ljr0;

    if-eqz v3, :cond_9

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpz3;

    instance-of v5, v4, Ljr0;

    if-nez v5, :cond_c

    instance-of v4, v4, Lyp6;

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, -0x1

    :cond_c
    :goto_7
    invoke-static {v1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v2

    invoke-virtual {v2, v3}, Ly74;->c(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p2, v0, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final d(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lfm0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lfm0;

    iget v1, v0, Lfm0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lfm0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lfm0;

    invoke-direct {v0, p0, p2}, Lfm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lfm0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lfm0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lfm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lwl0;->a:Ltn0;

    iput-object p1, v0, Lfm0;->l:Ljava/util/ArrayList;

    iput v4, v0, Lfm0;->o:I

    invoke-interface {p2, v0}, Ltn0;->k(Lfm0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lu88;

    invoke-static {p2}, Lwl0;->m(Lu88;)Lt88;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v0, Lk57$a;

    invoke-direct {v0, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_3
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    throw v0

    :cond_5
    :goto_4
    instance-of v0, p2, Lk57$a;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, p2

    :goto_5
    check-cast v3, Lt88;

    if-eqz v3, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpz3;

    instance-of v5, v4, Lbv2;

    if-nez v5, :cond_a

    instance-of v4, v4, Lt88;

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, -0x1

    :cond_a
    :goto_7
    invoke-static {v1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v2

    invoke-virtual {v2, v3}, Ly74;->c(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p2, v0, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final e(Ljava/util/ArrayList;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lhm0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lhm0;

    iget v1, v0, Lhm0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhm0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhm0;

    invoke-direct {v0, p0, p3}, Lhm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p3, v0, Lhm0;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lhm0;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p2, v0, Lhm0;->m:Ljava/util/ArrayList;

    iget-object p1, v0, Lhm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lwl0;->a:Ltn0;

    iget v2, p0, Lwl0;->f:I

    iput-object p1, v0, Lhm0;->l:Ljava/util/ArrayList;

    iput-object p2, v0, Lhm0;->m:Ljava/util/ArrayList;

    iput v4, v0, Lhm0;->p:I

    invoke-interface {p3, v2, v0}, Ltn0;->d(ILf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxf6;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-static {v1, v2}, Ld57;->c(Lxf6;Landroid/widget/ImageView$ScaleType;)Lsv7;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p3}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of v1, p3, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    throw p3

    :cond_6
    :goto_4
    instance-of p3, v0, Lk57$a;

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v0

    :goto_5
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v3, v3, Lwf6;

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, -0x1

    :goto_7
    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v1

    invoke-virtual {v1, v2}, Ly74;->c(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p2, p3, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final f(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lim0;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lim0;

    iget v3, v2, Lim0;->s:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lim0;->s:I

    goto :goto_0

    :cond_0
    new-instance v2, Lim0;

    invoke-direct {v2, v1, v0}, Lim0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object v0, v2, Lim0;->q:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lim0;->s:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Lim0;->p:Lak0$b;

    iget-object v8, v2, Lim0;->o:Ljava/util/Iterator;

    iget-object v9, v2, Lim0;->n:Ljava/util/Collection;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Lim0;->m:Ljava/util/List;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Lim0;->l:Ljava/util/List;

    check-cast v11, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 p4, v5

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    move-object v8, v2

    move-object v10, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak0$b;

    :try_start_1
    iget-object v11, v1, Lwl0;->a:Ltn0;

    iget v12, v1, Lwl0;->f:I

    invoke-virtual {v0}, Lak0$b;->a()I

    move-result v13

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    iput-object v14, v8, Lim0;->l:Ljava/util/List;

    move-object v14, v4

    check-cast v14, Ljava/util/List;

    iput-object v14, v8, Lim0;->m:Ljava/util/List;

    move-object v14, v10

    check-cast v14, Ljava/util/Collection;

    iput-object v14, v8, Lim0;->n:Ljava/util/Collection;

    iput-object v9, v8, Lim0;->o:Ljava/util/Iterator;

    iput-object v0, v8, Lim0;->p:Lak0$b;

    iput v7, v8, Lim0;->s:I

    invoke-interface {v11, v12, v13, v8}, Ltn0;->l(IILf02;)Ljava/io/Serializable;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v11, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v19, v4

    move-object v4, v0

    move-object v0, v11

    move-object v11, v2

    move-object v2, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v19

    :goto_2
    :try_start_2
    check-cast v0, Lb36;

    iget-object v0, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    const/4 v12, 0x3

    invoke-static {v0, v12}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4}, Lak0$b;->a()I

    move-result v13

    invoke-virtual {v4}, Lak0$b;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lak0$b;->b()Ljava/lang/String;

    move-result-object v16

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v4, v15}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v18, v15, 0x1

    move-object/from16 p4, v5

    if-ltz v15, :cond_5

    :try_start_3
    move-object/from16 v5, v17

    check-cast v5, Ltx5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    if-ne v15, v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    invoke-static {v5, v6}, Ld57;->d(Ltx5;Z)Lsv7$c;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p4

    move/from16 v15, v18

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw p4

    :cond_6
    move-object/from16 p4, v5

    move-object/from16 v17, v12

    new-instance v12, Lfs3;

    const-string v15, "\u0421\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0432\u0441\u0435"

    invoke-direct/range {v12 .. v17}, Lfs3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    move-object v4, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    move-object v2, v11

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 p4, v5

    move-object v11, v2

    move-object v2, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v4

    :goto_6
    new-instance v12, Lk57$a;

    invoke-direct {v12, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_7
    invoke-static {v12}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    throw v0

    :cond_8
    :goto_8
    instance-of v0, v12, Lk57$a;

    if-eqz v0, :cond_9

    move-object/from16 v12, p4

    :cond_9
    check-cast v12, Lfs3;

    if-eqz v12, :cond_a

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v5, p4

    goto/16 :goto_1

    :cond_b
    check-cast v10, Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v0, v1, Lwl0;->g:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpz3;

    instance-of v7, v7, Lis3;

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    const/4 v6, -0x1

    :goto_a
    invoke-static {v4}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v5

    invoke-virtual {v5, v6}, Ly74;->c(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_b

    :cond_f
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_b
    invoke-virtual {v0, v3, v4}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public final g(Ljava/util/ArrayList;ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Ljm0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljm0;

    iget v1, v0, Ljm0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljm0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljm0;

    invoke-direct {v0, p0, p3}, Ljm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p3, v0, Ljm0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ljm0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Ljm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lwl0;->a:Ltn0;

    iput-object p1, v0, Ljm0;->l:Ljava/util/ArrayList;

    iput v4, v0, Ljm0;->o:I

    invoke-interface {p3, p2, v0}, Ltn0;->e(ZLjm0;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lco0;

    invoke-virtual {p0, p3}, Lwl0;->l(Lco0;)Lto0;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    new-instance p3, Lk57$a;

    invoke-direct {p3, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, p3

    :goto_3
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_5

    instance-of v0, p3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    throw p3

    :cond_5
    :goto_4
    instance-of p3, p2, Lk57$a;

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, p2

    :goto_5
    check-cast v3, Lto0;

    if-eqz v3, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v4, v3, Lxv3;

    if-nez v4, :cond_a

    instance-of v3, v3, Lto0;

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, -0x1

    :cond_a
    :goto_7
    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v1

    invoke-virtual {v1, v2}, Ly74;->c(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p2, p3, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLf02;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p4, Lmm0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lmm0;

    iget v1, v0, Lmm0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmm0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmm0;

    invoke-direct {v0, p0, p4}, Lmm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p4, v0, Lmm0;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lmm0;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p2, v0, Lmm0;->m:Ljava/util/ArrayList;

    iget-object p1, v0, Lmm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p3, v0

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p4, p0, Lwl0;->a:Ltn0;

    iget v2, p0, Lwl0;->f:I

    sget-object v6, Lgc0;->PROMO:Lgc0;

    iput-object p1, v0, Lmm0;->l:Ljava/util/ArrayList;

    iput-object p2, v0, Lmm0;->m:Ljava/util/ArrayList;

    iput v5, v0, Lmm0;->p:I

    invoke-interface {p4, v2, v6, p3, v0}, Ltn0;->o(ILgc0;ZLmm0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Ljava/util/List;

    check-cast p4, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p4, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkc0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lkc0;->a()I

    move-result v6

    invoke-virtual {v0}, Lkc0;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    move-object v9, v1

    invoke-virtual {v0}, Lkc0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lkc0;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lkc0;->c()Lc06;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lkc0;->c()Lc06;

    move-result-object v0

    invoke-virtual {v0}, Lc06;->f()Lb06;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_6
    move-object v7, v3

    :goto_4
    new-instance v5, Lo58;

    invoke-direct/range {v5 .. v10}, Lo58;-><init>(ILb06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance p4, Lv58;

    invoke-direct {p4, p3}, Lv58;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    new-instance p4, Lk57$a;

    invoke-direct {p4, p3}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {p4}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_9

    instance-of v0, p3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    throw p3

    :cond_9
    :goto_7
    instance-of p3, p4, Lk57$a;

    if-eqz p3, :cond_a

    goto :goto_8

    :cond_a
    move-object v3, p4

    :goto_8
    check-cast v3, Lv58;

    if-eqz v3, :cond_c

    iget-object p3, v3, Lv58;->a:Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Ljava/util/List;

    check-cast p4, Ljava/util/Collection;

    invoke-static {p4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v2, v2, Lu58;

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, -0x1

    :goto_a
    invoke-static {p4}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v0

    invoke-virtual {v0, v1}, Ly74;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p4, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_b

    :cond_f
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_b
    invoke-virtual {p2, p3, p4}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final i(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lnm0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnm0;

    iget v1, v0, Lnm0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnm0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnm0;

    invoke-direct {v0, p0, p2}, Lnm0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lnm0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lnm0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lnm0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lwl0;->a:Ltn0;

    iput-object p1, v0, Lnm0;->l:Ljava/util/ArrayList;

    iput v4, v0, Lnm0;->o:I

    invoke-interface {p2, v0}, Ltn0;->c(Lnm0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lfc8;

    invoke-virtual {p2}, Lfc8;->a()Lfc8$a;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lfc8$a;->a()Ld7;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    move-object p2, v3

    goto :goto_3

    :goto_2
    new-instance v0, Lk57$a;

    invoke-direct {v0, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_3
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    throw v0

    :cond_6
    :goto_4
    instance-of v0, p2, Lk57$a;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, p2

    :goto_5
    check-cast v3, Ld7;

    if-eqz v3, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpz3;

    instance-of v5, v4, Lrc8;

    if-nez v5, :cond_b

    instance-of v4, v4, Ld7;

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, -0x1

    :cond_b
    :goto_7
    invoke-static {v1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v2

    invoke-virtual {v2, v3}, Ly74;->c(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p2, v0, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final j(Ljava/util/ArrayList;ILjava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lom0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lom0;

    iget v1, v0, Lom0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lom0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lom0;

    invoke-direct {v0, p0, p4}, Lom0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p4, v0, Lom0;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lom0;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p3, v0, Lom0;->m:Ljava/util/ArrayList;

    iget-object p1, v0, Lom0;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p4, p0, Lwl0;->a:Ltn0;

    iget v2, p0, Lwl0;->f:I

    iput-object p1, v0, Lom0;->l:Ljava/util/ArrayList;

    iput-object p3, v0, Lom0;->m:Ljava/util/ArrayList;

    iput v4, v0, Lom0;->p:I

    invoke-interface {p4, p2, v2, v0}, Ltn0;->h(IILom0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Ljava/util/List;

    check-cast p4, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p4, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxf6;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, v1}, Ld57;->c(Lxf6;Landroid/widget/ImageView$ScaleType;)Lsv7;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 p4, 0x6

    invoke-static {p2, p4}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    new-instance p4, Lk57$a;

    invoke-direct {p4, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, p4

    :goto_4
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_6

    instance-of v0, p4, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    throw p4

    :cond_6
    :goto_5
    instance-of p4, p2, Lk57$a;

    if-eqz p4, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, p2

    :goto_6
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    iget-object p2, p0, Lwl0;->g:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Ljava/util/List;

    check-cast p4, Ljava/util/Collection;

    invoke-static {p4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v2, v2, Lwf6;

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, -0x1

    :goto_8
    invoke-static {p4}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v0

    invoke-virtual {v0, v1}, Ly74;->c(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p4, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_9

    :cond_c
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p2, p3, p4}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final k(Z)Ldf3;
    .locals 4

    iget-object v0, p0, Lwl0;->a:Ltn0;

    iget v1, p0, Lwl0;->f:I

    invoke-interface {v0, v1}, Ltn0;->g(I)Ltb7;

    move-result-object v0

    new-instance v1, Lxm0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lxm0;-><init>(Lwl0;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v0, v1}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lym0;

    invoke-direct {v0, p0, p1, v2}, Lym0;-><init>(Lwl0;ZLe02;)V

    new-instance p0, Ldf3;

    invoke-direct {p0, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    return-object p0
.end method

.method public final l(Lco0;)Lto0;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwl0;->b:Ljf6;

    invoke-interface {p0}, Ljf6;->S()Z

    move-result p0

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lco0;->c()I

    move-result v4

    invoke-virtual {p1}, Lco0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lco0;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    invoke-virtual {p0}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    invoke-virtual {p0}, Lc06;->f()Lb06;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    move-object v10, p0

    goto :goto_1

    :cond_1
    move-object v10, v1

    :goto_1
    invoke-virtual {p1}, Lco0;->e()Lco0$a;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lco0$a;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p0

    :goto_3
    invoke-virtual {p1}, Lco0;->e()Lco0$a;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lco0$a;->a()Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    goto :goto_4

    :cond_4
    move-object v8, v1

    :goto_4
    invoke-virtual {p1}, Lco0;->e()Lco0$a;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lco0$a;->c()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v7, v1

    new-instance v2, Lno0$a;

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v2 .. v11}, Lno0$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb06;Z)V

    new-instance p0, Lto0;

    invoke-direct {p0, v2}, Lto0;-><init>(Lno0$a;)V

    return-object p0

    :cond_6
    invoke-virtual {p1}, Lco0;->c()I

    move-result v5

    invoke-virtual {p1}, Lco0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lco0;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lco0;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    invoke-virtual {p0}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lco0;->f()Lc06;

    move-result-object p0

    invoke-virtual {p0}, Lc06;->f()Lb06;

    move-result-object v1

    :cond_7
    move-object v11, v1

    invoke-virtual {p1}, Lco0;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    move-object v7, v0

    goto :goto_5

    :cond_8
    move-object v7, p0

    :goto_5
    invoke-virtual {p1}, Lco0;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Lno0$a;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lno0$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb06;Z)V

    new-instance p0, Lto0;

    invoke-direct {p0, v3}, Lto0;-><init>(Lno0$a;)V

    return-object p0
.end method

.method public final n(Lf02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lnn0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnn0;

    iget v1, v0, Lnn0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnn0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnn0;

    invoke-direct {v0, p0, p1}, Lnn0;-><init>(Lwl0;Lf02;)V

    :goto_0
    iget-object p1, v0, Lnn0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lnn0;->o:I

    const/4 v3, 0x0

    iget-object v4, p0, Lwl0;->g:Lz68;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget p0, v0, Lnn0;->l:I

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpz3;

    instance-of v8, v6, Lg63;

    if-nez v8, :cond_5

    instance-of v6, v6, Lsv7;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v7

    :cond_5
    :goto_2
    if-eq v2, v7, :cond_e

    :try_start_1
    iget-object p1, p0, Lwl0;->a:Ltn0;

    iget p0, p0, Lwl0;->f:I

    iput v2, v0, Lnn0;->l:I

    iput v5, v0, Lnn0;->o:I

    invoke-interface {p1, p0, v0}, Ltn0;->d(ILf02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move p0, v2

    :goto_3
    :try_start_2
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxf6;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-static {v1, v2}, Ld57;->c(Lxf6;Landroid/widget/ImageView$ScaleType;)Lsv7;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    move p0, v2

    :goto_5
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_7
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    throw p1

    :cond_9
    :goto_6
    instance-of p1, v0, Lk57$a;

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    move-object v3, v0

    :goto_7
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    :cond_b
    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lpz3;

    instance-of v6, v5, Lg63;

    if-nez v6, :cond_c

    instance-of v5, v5, Lsv7;

    if-nez v5, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v4, p1, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_e
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
