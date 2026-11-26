.class public final Lcom/google/common/collect/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d0$a;,
        Lcom/google/common/collect/d0$b;,
        Lcom/google/common/collect/d0$d;,
        Lcom/google/common/collect/d0$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Set;Lbf6;)Lcom/google/common/collect/d0$a;
    .locals 5

    instance-of v0, p0, Ljava/util/SortedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/SortedSet;

    instance-of v0, p0, Lcom/google/common/collect/d0$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/d0$a;

    iget-object v0, p0, Lin1;->c:Lbf6;

    new-instance v4, Lcf6;

    new-array v3, v3, [Lbf6;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lcf6;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/google/common/collect/d0$b;

    iget-object p0, p0, Lin1;->b:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {p1, p0, v4}, Lin1;-><init>(Ljava/util/Collection;Lbf6;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/collect/d0$b;

    invoke-direct {v0, p0, p1}, Lin1;-><init>(Ljava/util/Collection;Lbf6;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/d0$a;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/common/collect/d0$a;

    iget-object v0, p0, Lin1;->c:Lbf6;

    new-instance v4, Lcf6;

    new-array v3, v3, [Lbf6;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lcf6;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/google/common/collect/d0$a;

    iget-object p0, p0, Lin1;->b:Ljava/util/Collection;

    check-cast p0, Ljava/util/Set;

    invoke-direct {p1, p0, v4}, Lin1;-><init>(Ljava/util/Collection;Lbf6;)V

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/common/collect/d0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0, p1}, Lin1;-><init>(Ljava/util/Collection;Lbf6;)V

    return-object v0
.end method

.method public static c(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static d(Lcom/google/common/collect/n;Lcom/google/common/collect/n;)Lcom/google/common/collect/c0;
    .locals 1

    const-string v0, "set1"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "set2"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/collect/c0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method
