.class public Ldo5;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jsoup/nodes/n;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public b(I)Lorg/jsoup/nodes/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/n;

    iget-object p1, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_0
    return-object p0
.end method

.method public final clear()V
    .locals 3

    move-object v0, p0

    check-cast v0, Ldw2;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    iget-object v2, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d(ILorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-static {p2}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    iput-object p1, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    :cond_0
    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lyb9;->b(Z)V

    if-ne p0, p2, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p2, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->D()I

    move-result v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p2, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    iput v0, p2, Lorg/jsoup/nodes/n;->c:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    iget-object p1, p1, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p1}, Lorg/jsoup/nodes/h$a;->i()V

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ldo5;->b(I)Lorg/jsoup/nodes/n;

    const/4 p0, 0x1

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldo5;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    invoke-virtual {p0, v0, v1}, Ldo5;->d(ILorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/n;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ls45;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls45;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lja8;->a:[Ljava/lang/String;

    new-instance v0, Lga8;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Lga8;-><init>(Ljava/lang/String;)V

    new-instance v2, Lha8;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lia8;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lb45;

    invoke-direct {v4, v1}, Lb45;-><init>(I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v2, v3, v4, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
