.class public abstract Lcom/google/protobuf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/a$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a0;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/a;->memoizedHashCode:I

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/google/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static checkByteStringIsUtf8(Lfx0;)V
    .locals 0

    invoke-virtual {p0}, Lfx0;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Byte string is not UTF-8."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Serializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " threw an IOException (should never happen)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMemoizedSerializedSize()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getSerializedSize(Lcom/google/protobuf/f0;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/a;->getMemoizedSerializedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/protobuf/f0;->b(Lcom/google/protobuf/a;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->setMemoizedSerializedSize(I)V

    return p1

    :cond_0
    return v0
.end method

.method public newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 0

    new-instance p0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    return-object p0
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toByteArray()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/protobuf/CodedOutputStream$b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/protobuf/CodedOutputStream$b;-><init>([BII)V

    invoke-interface {p0, v2}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream;->U()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "byte array"

    invoke-direct {p0, v1}, Lcom/google/protobuf/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toByteString()Lfx0;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    sget-object v1, Lfx0;->c:Lfx0$h;

    new-array v1, v0, [B

    sget-object v2, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/protobuf/CodedOutputStream$b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/protobuf/CodedOutputStream$b;-><init>([BII)V

    invoke-interface {p0, v2}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream;->U()V

    new-instance v0, Lfx0$h;

    invoke-direct {v0, v1}, Lfx0$h;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ByteString"

    invoke-direct {p0, v1}, Lcom/google/protobuf/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Lcom/google/protobuf/CodedOutputStream$c;

    invoke-direct {v2, p1, v1}, Lcom/google/protobuf/CodedOutputStream$c;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v2, v0}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    invoke-interface {p0, v2}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget p0, v2, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    if-lez p0, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    sget-object v1, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$c;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/CodedOutputStream$c;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget p0, v1, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    if-lez p0, :cond_1

    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    :cond_1
    return-void
.end method
