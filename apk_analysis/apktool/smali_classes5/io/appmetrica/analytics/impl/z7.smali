.class public final Lio/appmetrica/analytics/impl/z7;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile t:[Lio/appmetrica/analytics/impl/z7;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Lio/appmetrica/analytics/impl/A7;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:[B

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z7;->a()Lio/appmetrica/analytics/impl/z7;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/z7;
    .locals 1

    .line 192
    new-instance v0, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/z7;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/z7;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/z7;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/z7;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/z7;->t:[Lio/appmetrica/analytics/impl/z7;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/z7;->t:[Lio/appmetrica/analytics/impl/z7;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/z7;

    sput-object v1, Lio/appmetrica/analytics/impl/z7;->t:[Lio/appmetrica/analytics/impl/z7;

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
    sget-object v0, Lio/appmetrica/analytics/impl/z7;->t:[Lio/appmetrica/analytics/impl/z7;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/z7;
    .locals 5

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->a:I

    .line 173
    const-string v1, ""

    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 175
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/z7;->d:J

    const/4 v4, 0x0

    .line 176
    iput-object v4, p0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    .line 177
    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    .line 179
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/z7;->h:J

    .line 180
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->i:I

    .line 181
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->j:I

    .line 182
    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    .line 183
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->l:I

    .line 184
    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    .line 185
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->n:I

    .line 186
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->o:I

    .line 187
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->p:I

    .line 188
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->q:I

    .line 189
    sget-object v1, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v1, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    const/4 v1, 0x1

    .line 190
    iput v1, p0, Lio/appmetrica/analytics/impl/z7;->s:I

    .line 191
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/z7;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->s:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->q:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->p:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->o:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->n:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->l:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->j:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->i:I

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/z7;->h:J

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/z7;->d:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/z7;->a:I

    goto/16 :goto_0

    :goto_1
    :sswitch_13
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
        0x2a -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x5a -> :sswitch_8
        0x60 -> :sswitch_7
        0x6a -> :sswitch_6
        0x70 -> :sswitch_5
        0x78 -> :sswitch_4
        0x80 -> :sswitch_3
        0x88 -> :sswitch_2
        0x92 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->a:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v5, p0, Lio/appmetrica/analytics/impl/z7;->d:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v1, v5, v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    if-eqz v1, :cond_4

    const/4 v5, 0x5

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v5, p0, Lio/appmetrica/analytics/impl/z7;->h:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v1, v5, v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->i:I

    if-eq v1, v3, :cond_8

    const/16 v5, 0x9

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->j:I

    if-eq v1, v3, :cond_9

    const/16 v5, 0xa

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->l:I

    if-eq v1, v3, :cond_b

    const/16 v5, 0xc

    invoke-static {v5, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    const/16 v4, 0xd

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->n:I

    if-eq v1, v3, :cond_d

    const/16 v4, 0xe

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->o:I

    if-eq v1, v3, :cond_e

    const/16 v4, 0xf

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->p:I

    if-eq v1, v3, :cond_f

    const/16 v4, 0x10

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lio/appmetrica/analytics/impl/z7;->q:I

    if-eq v1, v3, :cond_10

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    sget-object v3, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    const/16 v3, 0x12

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget p0, p0, Lio/appmetrica/analytics/impl/z7;->s:I

    if-eq p0, v2, :cond_12

    const/16 v1, 0x13

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_12
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/z7;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8

    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->a:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/z7;->d:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    if-eqz v0, :cond_4

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/z7;->h:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->i:I

    if-eq v0, v2, :cond_8

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->j:I

    if-eq v0, v2, :cond_9

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->l:I

    if-eq v0, v2, :cond_b

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->n:I

    if-eq v0, v2, :cond_d

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->o:I

    if-eq v0, v2, :cond_e

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->p:I

    if-eq v0, v2, :cond_f

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->q:I

    if-eq v0, v2, :cond_10

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    sget-object v2, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z7;->r:[B

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_11
    iget v0, p0, Lio/appmetrica/analytics/impl/z7;->s:I

    if-eq v0, v1, :cond_12

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_12
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
