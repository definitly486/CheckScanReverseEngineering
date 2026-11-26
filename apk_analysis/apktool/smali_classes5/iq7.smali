.class public final synthetic Liq7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lne4;Ljava/util/ArrayList;Lll3;)Ldf4;
    .locals 4

    const-class v0, Ljava/util/Collection;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lxu3;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-direct {p2, v0}, Lxu3;-><init>(Ldf4;)V

    goto/16 :goto_4

    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-class v0, Ljava/util/HashMap;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance p2, Lvu3;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf4;

    invoke-direct {p2, v0, v2}, Lvu3;-><init>(Ldf4;Ldf4;)V

    goto/16 :goto_4

    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-class v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldf4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyz4;

    invoke-direct {v2, p2, v0}, Lyz4;-><init>(Ldf4;Ldf4;)V

    :goto_0
    move-object p2, v2

    goto/16 :goto_4

    :cond_5
    const-class v0, Lb36;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldf4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lc36;

    invoke-direct {v2, p2, v0}, Lc36;-><init>(Ldf4;Ldf4;)V

    goto :goto_0

    :cond_6
    const-class v0, Lk39;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldf4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ll39;

    invoke-direct {v3, p2, v0, v2}, Ll39;-><init>(Ldf4;Ldf4;Ldf4;)V

    move-object p2, v3

    goto :goto_4

    :cond_7
    invoke-static {p0}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lne4;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ls07;

    invoke-direct {v2, p2, v0}, Ls07;-><init>(Lne4;Ldf4;)V

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    goto :goto_4

    :cond_9
    :goto_1
    new-instance p2, Luq4;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf4;

    invoke-direct {p2, v0, v2}, Luq4;-><init>(Ldf4;Ldf4;)V

    goto :goto_4

    :cond_a
    :goto_2
    new-instance p2, Lwq4;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-direct {p2, v0}, Lwq4;-><init>(Ldf4;)V

    goto :goto_4

    :cond_b
    :goto_3
    new-instance p2, Lmr;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf4;

    invoke-direct {p2, v0}, Lmr;-><init>(Ldf4;)V

    :goto_4
    if-nez p2, :cond_c

    new-array p2, v1, [Ldf4;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldf4;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldf4;

    invoke-static {p0, p1}, Lg96;->a(Lne4;[Ldf4;)Ldf4;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p2
.end method

.method public static final b(Lne4;)Ldf4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)",
            "Ldf4<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Liq7;->d(Lne4;)Ldf4;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lm96;->g(Lne4;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final c(Ljq7;Lef4;Z)Ldf4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq7;",
            "Lef4;",
            "Z)",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lm96;->e(Lef4;)Lne4;

    move-result-object v0

    invoke-interface {p1}, Lef4;->b()Z

    move-result v1

    invoke-interface {p1}, Lef4;->getArguments()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    sget-object v3, Lkx2;->b:Lkx2;

    if-eqz p1, :cond_3

    invoke-static {v0}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v3}, Ljq7;->b(Lne4;Ljava/util/List;)Ldf4;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v4

    goto :goto_2

    :cond_1
    sget-object p1, Lhq7;->a:Lfq7;

    if-nez v1, :cond_2

    sget-object p1, Lhq7;->a:Lfq7;

    invoke-interface {p1, v0}, Lfq7;->a(Lne4;)Ldf4;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_2
    sget-object p1, Lhq7;->b:Lfq7;

    invoke-interface {p1, v0}, Lfq7;->a(Lne4;)Ldf4;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljq7;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p1, Lhq7;->a:Lfq7;

    if-nez v1, :cond_5

    sget-object p1, Lhq7;->c:Lk36;

    invoke-interface {p1, v0, v2}, Lk36;->a(Lne4;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget-object p1, Lhq7;->d:Lk36;

    invoke-interface {p1, v0, v2}, Lk36;->a(Lne4;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    instance-of v5, p1, Lk57$a;

    if-eqz v5, :cond_6

    move-object p1, v4

    :cond_6
    check-cast p1, Ldf4;

    :goto_2
    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Liq7;->d(Lne4;)Ldf4;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v0, v3}, Ljq7;->b(Lne4;Ljava/util/List;)Ldf4;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v0}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lda6;

    invoke-direct {p0, v0}, Lda6;-><init>(Lne4;)V

    :goto_3
    move-object p1, p0

    goto :goto_4

    :cond_8
    move-object p1, v4

    goto :goto_4

    :cond_9
    invoke-static {p0, v2, p2}, Liq7;->e(Ljq7;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p2, Ld84;

    const/4 v3, 0x2

    invoke-direct {p2, v2, v3}, Ld84;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p1, p2}, Liq7;->a(Lne4;Ljava/util/ArrayList;Lll3;)Ldf4;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {p0, v0, p1}, Ljq7;->b(Lne4;Ljava/util/List;)Ldf4;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v0}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lda6;

    invoke-direct {p0, v0}, Lda6;-><init>(Lne4;)V

    goto :goto_3

    :cond_b
    move-object p1, p2

    :cond_c
    :goto_4
    if-eqz p1, :cond_e

    if-eqz v1, :cond_d

    invoke-static {p1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1

    :cond_e
    :goto_5
    return-object v4

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lff4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Star projections in type arguments are not allowed, but had null"

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v4
.end method

.method public static final d(Lne4;)Ldf4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)",
            "Ldf4<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ldf4;

    invoke-static {p0, v0}, Lg96;->a(Lne4;[Ldf4;)Ldf4;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lhg6;->a:Luz4;

    invoke-virtual {v0, p0}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static final e(Ljq7;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Liq7;->c(Ljq7;Lef4;Z)Ldf4;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lm96;->e(Lef4;)Lne4;

    move-result-object p0

    invoke-static {p0}, Lm96;->g(Lne4;)V

    throw v0

    :cond_1
    return-object p2

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Liq7;->c(Ljq7;Lef4;Z)Ldf4;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p2
.end method
