.class public final Lio/appmetrica/analytics/productflow/impl/y;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static volatile n:[Lio/appmetrica/analytics/productflow/impl/y;


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:Lio/appmetrica/analytics/productflow/impl/w;

.field public e:Lio/appmetrica/analytics/productflow/impl/x;

.field public f:Lio/appmetrica/analytics/productflow/impl/v;

.field public g:Lio/appmetrica/analytics/productflow/impl/r;

.field public h:Lio/appmetrica/analytics/productflow/impl/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/productflow/impl/y;->a()Lio/appmetrica/analytics/productflow/impl/y;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/productflow/impl/y;
    .locals 1

    .line 171
    new-instance v0, Lio/appmetrica/analytics/productflow/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/y;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/productflow/impl/y;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/productflow/impl/y;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/productflow/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/y;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/productflow/impl/y;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/productflow/impl/y;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/productflow/impl/y;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/productflow/impl/y;->n:[Lio/appmetrica/analytics/productflow/impl/y;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/productflow/impl/y;->n:[Lio/appmetrica/analytics/productflow/impl/y;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/productflow/impl/y;

    sput-object v1, Lio/appmetrica/analytics/productflow/impl/y;->n:[Lio/appmetrica/analytics/productflow/impl/y;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lio/appmetrica/analytics/productflow/impl/y;->n:[Lio/appmetrica/analytics/productflow/impl/y;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/productflow/impl/y;
    .locals 1

    .line 162
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    .line 163
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    .line 166
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->e:Lio/appmetrica/analytics/productflow/impl/x;

    .line 167
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    .line 168
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    .line 169
    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/productflow/impl/y;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/t;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/t;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    if-nez v0, :cond_4

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/r;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/r;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    :cond_4
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/v;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/v;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    :cond_6
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->e:Lio/appmetrica/analytics/productflow/impl/x;

    if-nez v0, :cond_8

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/x;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->e:Lio/appmetrica/analytics/productflow/impl/x;

    :cond_8
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    if-nez v0, :cond_a

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/w;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/w;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    :cond_a
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto/16 :goto_0

    :cond_c
    iput v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    goto/16 :goto_0

    :cond_f
    :goto_1
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    sget-object v2, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->e:Lio/appmetrica/analytics/productflow/impl/x;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    if-eqz p0, :cond_7

    const/16 v1, 0x8

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_7
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/productflow/impl/y;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/productflow/impl/y;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    sget-object v1, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1
    iget v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->e:Lio/appmetrica/analytics/productflow/impl/x;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_7
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
