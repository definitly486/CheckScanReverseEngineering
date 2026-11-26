.class public abstract Lb05;
.super Lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder::",
        "Ljava/util/Map<",
        "TKey;TValue;>;>",
        "Lw<",
        "Ljava/util/Map$Entry<",
        "+TKey;+TValue;>;TCollection;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final a:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TKey;>;"
        }
    .end annotation
.end field

.field public final b:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;Ldf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TKey;>;",
            "Ldf4<",
            "TValue;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb05;->a:Ldf4;

    iput-object p2, p0, Lb05;->b:Ldf4;

    return-void
.end method


# virtual methods
.method public final g(Ldu1;Ljava/lang/Object;II)V
    .locals 4

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p4, :cond_3

    const/4 v0, 0x2

    mul-int/2addr p4, v0

    const/4 v1, 0x0

    invoke-static {v1, p4}, Lkx6;->n(II)Ly74;

    move-result-object p4

    invoke-static {v0, p4}, Lkx6;->m(ILy74;)Lw74;

    move-result-object p4

    iget v0, p4, Lw74;->b:I

    iget v2, p4, Lw74;->c:I

    iget p4, p4, Lw74;->d:I

    if-lez p4, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    if-gez p4, :cond_2

    if-gt v2, v0, :cond_2

    :cond_1
    :goto_0
    add-int v3, p3, v0

    invoke-virtual {p0, p1, v3, p2, v1}, Lb05;->k(Ldu1;ILjava/util/Map;Z)V

    if-eq v0, v2, :cond_2

    add-int/2addr v0, p4

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "Size must be known in advance when using READ_ALL"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic h(Ldu1;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, v0}, Lb05;->k(Ldu1;ILjava/util/Map;Z)V

    return-void
.end method

.method public final k(Ldu1;ILjava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu1;",
            "ITBuilder;Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    iget-object v1, p0, Lb05;->a:Ldf4;

    check-cast v1, Lxl2;

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p4

    invoke-interface {p1, p4}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result p4

    add-int/lit8 v1, p2, 0x1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Value must follow key in a map, index for key: "

    const-string p1, ", returned index for value: "

    invoke-static {p2, p4, p0, p1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 p4, p2, 0x1

    :goto_0
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    iget-object v1, p0, Lb05;->b:Ldf4;

    if-eqz p2, :cond_2

    invoke-interface {v1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p2

    invoke-interface {p2}, Lmp7;->getKind()Lsp7;

    move-result-object p2

    instance-of p2, p2, Ldg6;

    if-nez p2, :cond_2

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    check-cast v1, Lxl2;

    invoke-static {v0, p3}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p4, v1, p2}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    check-cast v1, Lxl2;

    invoke-interface {p1, p0, p4, v1, v2}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 7
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

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lb05;->a:Ldf4;

    check-cast v6, Lxp7;

    invoke-interface {p1, v4, v0, v6, v3}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lb05;->b:Ldf4;

    check-cast v4, Lxp7;

    invoke-interface {p1, v3, v5, v4, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
