.class public abstract Lfn1;
.super Lw;
.source "SourceFile"


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
        "Lw<",
        "TElement;TCollection;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final a:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TElement;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TElement;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfn1;->a:Ldf4;

    return-void
.end method


# virtual methods
.method public final g(Ldu1;Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu1;",
            "TBuilder;II)V"
        }
    .end annotation

    if-ltz p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    invoke-virtual {p0, p1, v1, p2}, Lfn1;->h(Ldu1;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "Size must be known in advance when using READ_ALL"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h(Ldu1;ILjava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    iget-object v1, p0, Lfn1;->a:Ldf4;

    check-cast v1, Lxl2;

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lfn1;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract k(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public serialize(Lux2;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "TCollection;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lw;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lux2;->beginCollection(Lmp7;I)Lgu1;

    move-result-object p1

    invoke-virtual {p0, p2}, Lw;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    iget-object v4, p0, Lfn1;->a:Ldf4;

    check-cast v4, Lxp7;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v3, v2, v4, v5}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
