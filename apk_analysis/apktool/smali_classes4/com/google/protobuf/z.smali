.class public final Lcom/google/protobuf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/y;


# virtual methods
.method public final a()Lcom/google/protobuf/x;
    .locals 0

    sget-object p0, Lcom/google/protobuf/x;->c:Lcom/google/protobuf/x;

    invoke-virtual {p0}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public final forMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;
    .locals 0

    check-cast p1, Lcom/google/protobuf/x;

    return-object p1
.end method

.method public final forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/w$a<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w;

    iget-object p0, p1, Lcom/google/protobuf/w;->a:Lcom/google/protobuf/w$a;

    return-object p0
.end method

.method public final forMutableMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;
    .locals 0

    check-cast p1, Lcom/google/protobuf/x;

    return-object p1
.end method

.method public final getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p2, Lcom/google/protobuf/x;

    check-cast p3, Lcom/google/protobuf/w;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/x;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v2

    iget-object v3, p3, Lcom/google/protobuf/w;->a:Lcom/google/protobuf/w$a;

    invoke-static {v3, v1, p2}, Lcom/google/protobuf/w;->a(Lcom/google/protobuf/w$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2, p2, v2, v0}, Lej0;->c(IIII)I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isImmutable(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/protobuf/x;

    iget-boolean p0, p1, Lcom/google/protobuf/x;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/x;
    .locals 0

    check-cast p1, Lcom/google/protobuf/x;

    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/google/protobuf/x;->b:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/x;->e()V

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/x;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p1
.end method

.method public final toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/x;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/x;->b:Z

    return-object p1
.end method
