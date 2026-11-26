.class public final Lms6;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lzr2;
.implements Lgg4;


# instance fields
.field public b:Lcom/google/protobuf/a0;

.field public final c:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/a0;Lx36;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/a0;",
            "Lx36<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lms6;->b:Lcom/google/protobuf/a0;

    iput-object p2, p0, Lms6;->c:Lx36;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)I
    .locals 8

    iget-object v0, p0, Lms6;->b:Lcom/google/protobuf/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    iget-object v2, p0, Lms6;->b:Lcom/google/protobuf/a0;

    invoke-interface {v2, p1}, Lcom/google/protobuf/a0;->writeTo(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lms6;->b:Lcom/google/protobuf/a0;

    return v0

    :cond_0
    iget-object v0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lns6;->a:Lcom/google/protobuf/j;

    const-string v3, "outputStream cannot be null!"

    invoke-static {p1, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    long-to-int p1, v4

    iput-object v1, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    return p1

    :cond_1
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final available()I
    .locals 1

    iget-object v0, p0, Lms6;->b:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final read()I
    .locals 2

    .line 64
    iget-object v0, p0, Lms6;->b:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lms6;->b:Lcom/google/protobuf/a0;

    invoke-interface {v1}, Lcom/google/protobuf/a0;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lms6;->b:Lcom/google/protobuf/a0;

    .line 67
    :cond_0
    iget-object p0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 4

    iget-object v0, p0, Lms6;->b:Lcom/google/protobuf/a0;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lms6;->b:Lcom/google/protobuf/a0;

    iput-object v2, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_1

    sget-object p3, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    new-instance p3, Lcom/google/protobuf/CodedOutputStream$b;

    invoke-direct {p3, p1, p2, v0}, Lcom/google/protobuf/CodedOutputStream$b;-><init>([BII)V

    iget-object p1, p0, Lms6;->b:Lcom/google/protobuf/a0;

    invoke-interface {p1, p3}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p3}, Lcom/google/protobuf/CodedOutputStream;->U()V

    iput-object v2, p0, Lms6;->b:Lcom/google/protobuf/a0;

    iput-object v2, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    return v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lms6;->b:Lcom/google/protobuf/a0;

    invoke-interface {v3}, Lcom/google/protobuf/a0;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Lms6;->b:Lcom/google/protobuf/a0;

    :cond_2
    iget-object p0, p0, Lms6;->d:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method
