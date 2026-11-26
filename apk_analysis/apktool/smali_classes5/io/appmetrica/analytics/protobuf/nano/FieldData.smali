.class Lio/appmetrica/analytics/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    .line 13
    iput-object p2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-void
.end method

.method private toByteArray()[B
    .locals 2

    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method public addUnknownField(Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clone()Lio/appmetrica/analytics/protobuf/nano/FieldData;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    invoke-direct {v0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iput-object v2, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iget-object v2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v2, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    if-eqz v2, :cond_2

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->clone()Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_3
    instance-of v2, p0, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    check-cast p0, [[B

    array-length v2, p0

    new-array v2, v2, [[B

    iput-object v2, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_a

    aget-object v4, p0, v3

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    instance-of v2, p0, [Z

    if-eqz v2, :cond_5

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_5
    instance-of v2, p0, [I

    if-eqz v2, :cond_6

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_6
    instance-of v2, p0, [J

    if-eqz v2, :cond_7

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    instance-of v2, p0, [F

    if-eqz v2, :cond_8

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_8
    instance-of v2, p0, [D

    if-eqz v2, :cond_9

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_9
    instance-of v2, p0, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    if-eqz v2, :cond_a

    check-cast p0, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    array-length v2, p0

    new-array v2, v2, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    iput-object v2, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_a

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->clone()Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0

    :goto_4
    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->clone()Lio/appmetrica/analytics/protobuf/nano/FieldData;

    move-result-object p0

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    invoke-virtual {v1}, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iget-object v2, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, v0, Lio/appmetrica/analytics/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    check-cast p0, [B

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    check-cast p0, [I

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    check-cast p0, [J

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    check-cast p0, [F

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    check-cast p0, [D

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    check-cast p0, [Z

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_9
    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v2, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public getUnknownField(I)Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getUnknownFieldSize()I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getValue(Lio/appmetrica/analytics/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    if-ne p0, p1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "Tried to getExtension with a differernt Extension."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-object p1
.end method

.method public hashCode()I
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, 0x20f

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Lio/appmetrica/analytics/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iput-object p2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method public writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0

    :cond_1
    return-void
.end method
