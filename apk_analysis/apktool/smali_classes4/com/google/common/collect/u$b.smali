.class public abstract Lcom/google/common/collect/u$b;
.super Lcom/google/common/collect/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0$c<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Lcom/google/common/collect/h$a;

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/h$a;

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/h$a;

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/h$a;

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {p0}, Lcom/google/common/collect/h;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Lcom/google/common/collect/h$a;

    const v0, 0x7fffffff

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/f;->d(ILjava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lcom/google/common/collect/h$a;

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/h$b;

    invoke-virtual {p0}, Lcom/google/common/collect/h$b;->size()I

    move-result p0

    return p0
.end method
