.class public abstract Lk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldu1;Ljava/lang/String;)Lxl2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu1;",
            "Ljava/lang/String;",
            ")",
            "Lxl2<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Ldu1;->getSerializersModule()Ljq7;

    move-result-object p1

    invoke-virtual {p0}, Lk1;->c()Lne4;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ljq7;->d(Lne4;Ljava/lang/String;)Lxl2;

    move-result-object p0

    return-object p0
.end method

.method public b(Lux2;Ljava/lang/Object;)Lxp7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "TT;)",
            "Lxp7<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lux2;->getSerializersModule()Ljq7;

    move-result-object p1

    invoke-virtual {p0}, Lk1;->c()Lne4;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ljq7;->e(Lne4;Ljava/lang/Object;)Lxp7;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lne4<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {p1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lea6;->a(Lk1;Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object v1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p1, p0, v3, v1, v4}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v5

    invoke-interface {p1, v5}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    if-eqz v5, :cond_4

    iget-object v2, v1, Lr07;->b:Ljava/lang/Object;

    if-eq v5, v3, :cond_2

    new-instance p0, Lkotlinx/serialization/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid index in polymorphic deserialization of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "unknown class"

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v2, :cond_3

    iput-object v2, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lea6;->a(Lk1;Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object v2

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v6

    invoke-interface {p1, v6, v5, v2, v4}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string p0, "Cannot read polymorphic value before its type token"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v4

    :cond_4
    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v6

    invoke-interface {p1, v6, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lr07;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    move-object p0, v2

    :goto_1
    invoke-interface {p1, v0}, Ldu1;->endStructure(Lmp7;)V

    return-object p0

    :cond_6
    iget-object p0, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "Polymorphic value has not been read for class "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lea6;->b(Lk1;Lux2;Ljava/lang/Object;)Lxp7;

    move-result-object v0

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-interface {v3}, Lmp7;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
