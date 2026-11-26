.class public abstract Lcom/google/common/collect/h;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h$a;,
        Lcom/google/common/collect/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lcom/google/common/collect/t<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public transient b:Lcom/google/common/collect/h$a;

.field public transient c:Lcom/google/common/collect/h$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/f;->a(ILjava/lang/Object;)I

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/common/collect/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lcom/google/common/collect/t;

    instance-of v0, p1, Lcom/google/common/collect/f;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/common/collect/f;

    invoke-virtual {p1}, Lcom/google/common/collect/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, v0, Lcom/google/common/collect/v;->c:I

    const/4 v2, -0x1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    if-ltz v1, :cond_5

    iget-object v0, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v3, v0, Lcom/google/common/collect/v;->c:I

    invoke-static {v1, v3}, Lo8;->j(II)V

    iget-object v0, v0, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/v;->c(I)I

    move-result v3

    move-object v4, p0

    check-cast v4, Lcom/google/common/collect/f;

    invoke-virtual {v4, v3, v0}, Lcom/google/common/collect/f;->a(ILjava/lang/Object;)I

    iget-object v0, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Lcom/google/common/collect/v;->c:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lcom/google/common/collect/t;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t$a;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    move-object v2, p0

    check-cast v2, Lcom/google/common/collect/f;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/f;->a(ILjava/lang/Object;)I

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    return v1

    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lya4;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h;->b:Lcom/google/common/collect/h$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

    iput-object v0, p0, Lcom/google/common/collect/h;->b:Lcom/google/common/collect/h$a;

    :cond_0
    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/t$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/h$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/h$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$b;-><init>(Lcom/google/common/collect/h;)V

    iput-object v0, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/h$b;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/t;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractSet;

    invoke-virtual {p0}, Ljava/util/AbstractSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractCollection;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Lcom/google/common/collect/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/f;->d(ILjava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/t;

    invoke-interface {p1}, Lcom/google/common/collect/t;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/h;->elementSet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/d0$c;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$c;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/common/collect/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/t;

    invoke-interface {p1}, Lcom/google/common/collect/t;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/h;->elementSet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/d0$c;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$c;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
