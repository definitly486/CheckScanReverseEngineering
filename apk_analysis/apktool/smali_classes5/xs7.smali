.class public final Lxs7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "select"

    const-string v1, "textarea"

    const-string v2, "input"

    const-string v3, "keygen"

    const-string v4, "object"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxs7;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/util/List;)La46;
    .locals 3

    new-instance v0, La46;

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La46;

    invoke-static {v2, v0}, Lxs7;->b(La46;La46;)La46;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lxs7;->c(La46;Ljava/util/List;)La46;

    move-result-object p0

    return-object p0
.end method

.method public static final b(La46;La46;)La46;
    .locals 3

    iget-object v0, p0, La46;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, La46;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance p0, La46;

    check-cast v1, Ljava/util/Collection;

    iget-object v0, p1, La46;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, La46;->b:Ljava/util/List;

    invoke-direct {p0, v0, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_0
    iget-object p0, p0, La46;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La46;

    invoke-static {v2, p1}, Lxs7;->b(La46;La46;)La46;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, La46;

    invoke-direct {p0, v1, v0}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static final c(La46;Ljava/util/List;)La46;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, La46;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly36;

    instance-of v5, v4, Lhq5;

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    check-cast v4, Lhq5;

    iget-object v4, v4, Lhq5;->a:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    check-cast v4, Lhq5;

    iget-object v3, v4, Lhq5;->a:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    goto :goto_0

    :cond_1
    instance-of v5, v4, Lc59;

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v5, Lhq5;

    invoke-direct {v5, v3}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, La46;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La46;

    invoke-static {v2, v1}, Lxs7;->c(La46;Ljava/util/List;)La46;

    move-result-object v2

    iget-object v4, v2, La46;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, La46;->b:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_5
    check-cast v4, Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_2
    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, p1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, La46;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-direct {p0, v1, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_8
    check-cast p1, Ljava/util/List;

    if-nez v3, :cond_9

    new-instance p0, La46;

    invoke-direct {p0, v0, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_9
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_a

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La46;

    iget-object v2, v2, La46;->a:Ljava/util/List;

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly36;

    if-eqz v2, :cond_b

    instance-of v2, v2, Lhq5;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La46;

    iget-object v2, v1, La46;->a:Ljava/util/List;

    iget-object v1, v1, La46;->b:Ljava/util/List;

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly36;

    instance-of v6, v5, Lhq5;

    if-eqz v6, :cond_c

    new-instance v6, La46;

    new-instance v7, Lhq5;

    check-cast v5, Lhq5;

    iget-object v5, v5, Lhq5;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v7, v5}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-static {v7}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v6, v2, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :cond_c
    if-nez v5, :cond_d

    new-instance v6, La46;

    new-instance v2, Lhq5;

    invoke-direct {v2, v3}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :cond_d
    new-instance v6, La46;

    new-instance v5, Lhq5;

    invoke-direct {v5, v3}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v6, v2, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_4
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    new-instance p0, La46;

    invoke-direct {p0, v0, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_f
    :goto_5
    new-instance p0, Lhq5;

    invoke-direct {p0, v3}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, La46;

    invoke-direct {p0, v0, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
