.class public final Lio/appmetrica/analytics/impl/v9;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final g:I = -0x1

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static volatile j:[Lio/appmetrica/analytics/impl/v9;


# instance fields
.field public a:[Lio/appmetrica/analytics/impl/s9;

.field public b:Lio/appmetrica/analytics/impl/n9;

.field public c:[Lio/appmetrica/analytics/impl/k9;

.field public d:[Lio/appmetrica/analytics/impl/t9;

.field public e:[Ljava/lang/String;

.field public f:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/v9;->a()Lio/appmetrica/analytics/impl/v9;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/v9;
    .locals 1

    .line 310
    new-instance v0, Lio/appmetrica/analytics/impl/v9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v9;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/v9;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/v9;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/v9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v9;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/v9;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/v9;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/v9;->j:[Lio/appmetrica/analytics/impl/v9;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/v9;->j:[Lio/appmetrica/analytics/impl/v9;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/v9;

    sput-object v1, Lio/appmetrica/analytics/impl/v9;->j:[Lio/appmetrica/analytics/impl/v9;

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
    sget-object v0, Lio/appmetrica/analytics/impl/v9;->j:[Lio/appmetrica/analytics/impl/v9;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/v9;
    .locals 1

    .line 303
    invoke-static {}, Lio/appmetrica/analytics/impl/s9;->b()[Lio/appmetrica/analytics/impl/s9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    .line 305
    invoke-static {}, Lio/appmetrica/analytics/impl/k9;->b()[Lio/appmetrica/analytics/impl/k9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    .line 306
    invoke-static {}, Lio/appmetrica/analytics/impl/t9;->b()[Lio/appmetrica/analytics/impl/t9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    .line 307
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    .line 308
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    const/4 v0, -0x1

    .line 309
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/v9;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/16 v1, 0x22

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_d

    const/16 v1, 0x52

    if-eq v0, v1, :cond_9

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x62

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_1
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [[B

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    if-nez v1, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_9
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    if-nez v1, :cond_a

    move v3, v2

    goto :goto_5

    :cond_a
    array-length v3, v1

    :goto_5
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/t9;

    if-eqz v3, :cond_b

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    new-instance v1, Lio/appmetrica/analytics/impl/t9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/t9;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    new-instance v0, Lio/appmetrica/analytics/impl/t9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t9;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    goto/16 :goto_0

    :cond_d
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    if-nez v1, :cond_e

    move v3, v2

    goto :goto_7

    :cond_e
    array-length v3, v1

    :goto_7
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/k9;

    if-eqz v3, :cond_f

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_10

    new-instance v1, Lio/appmetrica/analytics/impl/k9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/k9;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    new-instance v0, Lio/appmetrica/analytics/impl/k9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k9;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    if-nez v0, :cond_12

    new-instance v0, Lio/appmetrica/analytics/impl/n9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/n9;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    :cond_12
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    if-nez v1, :cond_14

    move v3, v2

    goto :goto_9

    :cond_14
    array-length v3, v1

    :goto_9
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/s9;

    if-eqz v3, :cond_15

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_16

    new-instance v1, Lio/appmetrica/analytics/impl/s9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s9;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    new-instance v0, Lio/appmetrica/analytics/impl/s9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s9;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    goto/16 :goto_0

    :cond_17
    :goto_b
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v3, v0

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x7

    invoke-static {v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v3, v0

    move v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    :goto_2
    iget-object v3, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v3, v0

    move v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v3, v1

    move v4, v3

    :goto_3
    iget-object v5, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_8

    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    :cond_9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    move v1, v2

    move v3, v1

    :goto_4
    iget-object v4, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    array-length v5, v4

    if-ge v2, v5, :cond_b

    aget-object v4, v4, v2

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v4

    add-int/2addr v4, v1

    move v1, v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    :cond_c
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/v9;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    :goto_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/v9;->f:[[B

    array-length v2, v0

    if-ge v1, v2, :cond_a

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
