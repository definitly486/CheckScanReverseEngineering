.class public final Lio/appmetrica/analytics/billing/impl/x;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static volatile q:[Lio/appmetrica/analytics/billing/impl/x;


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:Lio/appmetrica/analytics/billing/impl/s;

.field public f:J

.field public g:Z

.field public h:I

.field public i:I

.field public j:Lio/appmetrica/analytics/billing/impl/w;

.field public k:Lio/appmetrica/analytics/billing/impl/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/billing/impl/x;->a()Lio/appmetrica/analytics/billing/impl/x;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/billing/impl/x;
    .locals 1

    .line 144
    new-instance v0, Lio/appmetrica/analytics/billing/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/x;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/billing/impl/x;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/x;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/billing/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/x;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billing/impl/x;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/x;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/billing/impl/x;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/billing/impl/x;->q:[Lio/appmetrica/analytics/billing/impl/x;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/billing/impl/x;->q:[Lio/appmetrica/analytics/billing/impl/x;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/billing/impl/x;

    sput-object v1, Lio/appmetrica/analytics/billing/impl/x;->q:[Lio/appmetrica/analytics/billing/impl/x;

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
    sget-object v0, Lio/appmetrica/analytics/billing/impl/x;->q:[Lio/appmetrica/analytics/billing/impl/x;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/billing/impl/x;
    .locals 4

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lio/appmetrica/analytics/billing/impl/x;->a:I

    .line 133
    sget-object v1, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->b:[B

    .line 134
    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    .line 135
    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->e:Lio/appmetrica/analytics/billing/impl/s;

    const-wide/16 v2, 0x0

    .line 137
    iput-wide v2, p0, Lio/appmetrica/analytics/billing/impl/x;->f:J

    const/4 v2, 0x0

    .line 138
    iput-boolean v2, p0, Lio/appmetrica/analytics/billing/impl/x;->g:Z

    .line 139
    iput v2, p0, Lio/appmetrica/analytics/billing/impl/x;->h:I

    .line 140
    iput v0, p0, Lio/appmetrica/analytics/billing/impl/x;->i:I

    .line 141
    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->j:Lio/appmetrica/analytics/billing/impl/w;

    .line 142
    iput-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->k:Lio/appmetrica/analytics/billing/impl/v;

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/x;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_0
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->k:Lio/appmetrica/analytics/billing/impl/v;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/billing/impl/v;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/v;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->k:Lio/appmetrica/analytics/billing/impl/v;

    :cond_1
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->j:Lio/appmetrica/analytics/billing/impl/w;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/billing/impl/w;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/w;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->j:Lio/appmetrica/analytics/billing/impl/w;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iput v0, p0, Lio/appmetrica/analytics/billing/impl/x;->i:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iput v0, p0, Lio/appmetrica/analytics/billing/impl/x;->h:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/x;->g:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/billing/impl/x;->f:J

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->e:Lio/appmetrica/analytics/billing/impl/s;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/billing/impl/s;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/s;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->e:Lio/appmetrica/analytics/billing/impl/s;

    :cond_5
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->b:[B

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/billing/impl/x;->a:I

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x48 -> :sswitch_3
        0x50 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public final computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lio/appmetrica/analytics/billing/impl/x;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/billing/impl/x;->b:[B

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    sget-object v3, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->e:Lio/appmetrica/analytics/billing/impl/s;

    if-eqz v0, :cond_3

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-wide v3, p0, Lio/appmetrica/analytics/billing/impl/x;->f:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-static {v0, v3, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/x;->g:Z

    if-eqz v0, :cond_5

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lio/appmetrica/analytics/billing/impl/x;->h:I

    if-eqz v0, :cond_6

    const/16 v3, 0x9

    invoke-static {v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lio/appmetrica/analytics/billing/impl/x;->i:I

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->j:Lio/appmetrica/analytics/billing/impl/w;

    if-eqz v0, :cond_8

    const/16 v2, 0xb

    invoke-static {v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/x;->k:Lio/appmetrica/analytics/billing/impl/v;

    if-eqz p0, :cond_9

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_9
    return v1
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/x;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/x;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    iget v0, p0, Lio/appmetrica/analytics/billing/impl/x;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->b:[B

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    sget-object v2, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->c:[B

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->d:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->e:Lio/appmetrica/analytics/billing/impl/s;

    if-eqz v0, :cond_3

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_3
    iget-wide v2, p0, Lio/appmetrica/analytics/billing/impl/x;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/x;->g:Z

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget v0, p0, Lio/appmetrica/analytics/billing/impl/x;->h:I

    if-eqz v0, :cond_6

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lio/appmetrica/analytics/billing/impl/x;->i:I

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->j:Lio/appmetrica/analytics/billing/impl/w;

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/x;->k:Lio/appmetrica/analytics/billing/impl/v;

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_9
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
