.class public abstract Lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "TCollection;>;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilder;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)I"
        }
    .end annotation
.end method

.method public abstract c(ILjava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)",
            "Ljava/util/Iterator<",
            "TElement;>;"
        }
    .end annotation
.end method

.method public deserialize(Lud2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")TCollection;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw;->f(Lud2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract e(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)I"
        }
    .end annotation
.end method

.method public final f(Lud2;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lw;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {p1, v2}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {p1, v2}, Ldu1;->decodeCollectionSize(Lmp7;)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lw;->c(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lw;->g(Ldu1;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {p1, v2}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lw;->h(Ldu1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1}, Ldu1;->endStructure(Lmp7;)V

    invoke-virtual {p0, v0}, Lw;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Ldu1;Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu1;",
            "TBuilder;II)V"
        }
    .end annotation
.end method

.method public abstract h(Ldu1;ILjava/lang/Object;)V
.end method

.method public abstract i(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)TBuilder;"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)TCollection;"
        }
    .end annotation
.end method
