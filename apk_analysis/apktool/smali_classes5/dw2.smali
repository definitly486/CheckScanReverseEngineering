.class public final Ldw2;
.super Ldo5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldo5<",
        "Lorg/jsoup/nodes/h;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(I)Lorg/jsoup/nodes/n;
    .locals 0

    invoke-super {p0, p1}, Ldo5;->b(I)Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ldw2;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d(ILorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;
    .locals 0

    check-cast p2, Lorg/jsoup/nodes/h;

    invoke-super {p0, p1, p2}, Ldo5;->d(ILorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Ldo5;->b(I)Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/jsoup/nodes/h;

    invoke-super {p0, p1, p2}, Ldo5;->d(ILorg/jsoup/nodes/n;)Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0
.end method
