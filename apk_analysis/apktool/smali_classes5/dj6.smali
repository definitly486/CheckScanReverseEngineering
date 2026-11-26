.class public final Ldj6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILjava/util/ArrayList;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Lpd5;

    invoke-direct {v0, p0}, Lpd5;-><init>(I)V

    invoke-static {v0, p1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static final b(Lsj6;)Lti6;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lti6;

    invoke-virtual {p0}, Lsj6;->c()I

    move-result v1

    invoke-virtual {p0}, Lsj6;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsj6;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsj6$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lsj6$a;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v5, v4

    invoke-virtual {p0}, Lsj6;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lsj6;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsj6$a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lsj6$a;->a()Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    :cond_2
    invoke-direct/range {v0 .. v5}, Lti6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lwi6;

    new-instance v5, Loa3;

    invoke-virtual {v3}, Lwi6;->a()I

    move-result v6

    invoke-virtual {v3}, Lwi6;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    invoke-direct {v5, v6, v3, v2}, Loa3;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static final d(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lik6;

    instance-of v2, v1, Lfj6;

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    check-cast v1, Lfj6;

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->d()I

    move-result v8

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->f()Lfj6$b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lfj6$b;->a()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v9, v4

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->c()Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsj6;

    invoke-static {v3}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v1

    invoke-virtual {v1}, Lfj6$a;->d()I

    move-result v1

    invoke-static {v1, v4}, Ldj6;->a(ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v6

    new-instance v5, Lzn7;

    invoke-direct/range {v5 .. v10}, Lzn7;-><init>(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Z)V

    :goto_2
    move-object v4, v5

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->d()I

    move-result v6

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->c()Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsj6;

    invoke-static {v3}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lfj6$a;->d()I

    move-result v2

    invoke-static {v2, v5}, Ldj6;->a(ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1}, Lfj6;->a()Lfj6$a;

    move-result-object v1

    invoke-virtual {v1}, Lfj6$a;->f()Lfj6$b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lfj6$b;->a()Ljava/lang/String;

    move-result-object v4

    :cond_5
    move-object v13, v4

    new-instance v5, Lvp6;

    invoke-direct/range {v5 .. v13}, Lvp6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    instance-of v2, v1, Lgj6;

    if-eqz v2, :cond_b

    check-cast v1, Lgj6;

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->d()I

    move-result v7

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->c()Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsj6;

    invoke-static {v3}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v1

    invoke-virtual {v1}, Lgj6$a;->d()I

    move-result v1

    invoke-static {v1, v4}, Ldj6;->a(ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    new-instance v4, Lzn7;

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lzn7;-><init>(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->d()I

    move-result v6

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->c()Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsj6;

    invoke-static {v3}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v2

    invoke-virtual {v2}, Lgj6$a;->d()I

    move-result v2

    invoke-static {v2, v5}, Ldj6;->a(ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1}, Lgj6;->a()Lgj6$a;

    move-result-object v1

    invoke-virtual {v1}, Lgj6$a;->f()Lfj6$b;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lfj6$b;->a()Ljava/lang/String;

    move-result-object v4

    :cond_a
    move-object v13, v4

    new-instance v5, Lvp6;

    invoke-direct/range {v5 .. v13}, Lvp6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    :goto_6
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method
