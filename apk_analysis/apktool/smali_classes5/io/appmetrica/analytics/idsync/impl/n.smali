.class public final Lio/appmetrica/analytics/idsync/impl/n;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile j:[Lio/appmetrica/analytics/idsync/impl/n;


# instance fields
.field public a:[B

.field public b:Lio/appmetrica/analytics/idsync/impl/m;

.field public c:[B

.field public d:[Lio/appmetrica/analytics/idsync/impl/l;

.field public e:J

.field public f:J

.field public g:[I

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/idsync/impl/n;->a()Lio/appmetrica/analytics/idsync/impl/n;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/idsync/impl/n;
    .locals 1

    .line 252
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/n;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/n;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/impl/n;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/n;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/idsync/impl/n;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/idsync/impl/n;->j:[Lio/appmetrica/analytics/idsync/impl/n;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/idsync/impl/n;->j:[Lio/appmetrica/analytics/idsync/impl/n;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/idsync/impl/n;

    sput-object v1, Lio/appmetrica/analytics/idsync/impl/n;->j:[Lio/appmetrica/analytics/idsync/impl/n;

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
    sget-object v0, Lio/appmetrica/analytics/idsync/impl/n;->j:[Lio/appmetrica/analytics/idsync/impl/n;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/idsync/impl/n;
    .locals 2

    .line 242
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    const/4 v1, 0x0

    .line 243
    iput-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    .line 244
    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    .line 245
    invoke-static {}, Lio/appmetrica/analytics/idsync/impl/l;->b()[Lio/appmetrica/analytics/idsync/impl/l;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    const-wide/32 v0, 0x5265c00

    .line 246
    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    const-wide/32 v0, 0x36ee80

    .line 247
    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    .line 248
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/n;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v2

    :goto_2
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_3

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    if-ge v4, v3, :cond_4

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iput-object v5, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    if-nez v2, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    array-length v3, v2

    :goto_4
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_6

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    if-nez v2, :cond_8

    move v3, v1

    goto :goto_6

    :cond_8
    array-length v3, v2

    :goto_6
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/idsync/impl/l;

    if-eqz v3, :cond_9

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_a

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/l;

    invoke-direct {v1}, Lio/appmetrica/analytics/idsync/impl/l;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/l;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/l;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    if-nez v0, :cond_b

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/m;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/m;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    :cond_b
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    goto/16 :goto_0

    :goto_8
    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x3a -> :sswitch_2
        0x40 -> :sswitch_1
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method public final computeSerializedSize()I
    .locals 8

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    sget-object v2, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    iget-object v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v4, v0

    move v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    :goto_1
    iget-object v4, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    array-length v5, v4

    if-ge v2, v5, :cond_7

    aget v4, v4, v2

    invoke-static {v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v1

    array-length v1, v4

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    if-eq v1, v3, :cond_9

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_a
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/n;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/n;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    sget-object v1, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-wide v3, p0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_5
    iget-wide v3, p0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    const-wide/32 v5, 0x36ee80

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    array-length v3, v0

    if-ge v1, v3, :cond_7

    aget v0, v0, v1

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    if-eq v0, v2, :cond_8

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
