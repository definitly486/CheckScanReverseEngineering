.class public final Lio/appmetrica/analytics/impl/s9;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8

.field public static final m:I = 0x9

.field public static final n:I = 0xa

.field public static final o:I = 0xb

.field public static final p:I = 0xc

.field public static volatile q:[Lio/appmetrica/analytics/impl/s9;


# instance fields
.field public a:J

.field public b:Lio/appmetrica/analytics/impl/r9;

.field public c:[Lio/appmetrica/analytics/impl/q9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/s9;->a()Lio/appmetrica/analytics/impl/s9;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/s9;
    .locals 1

    .line 105
    new-instance v0, Lio/appmetrica/analytics/impl/s9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s9;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/s9;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/s9;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/s9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s9;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/s9;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/s9;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/s9;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/s9;->q:[Lio/appmetrica/analytics/impl/s9;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/s9;->q:[Lio/appmetrica/analytics/impl/s9;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/s9;

    sput-object v1, Lio/appmetrica/analytics/impl/s9;->q:[Lio/appmetrica/analytics/impl/s9;

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
    sget-object v0, Lio/appmetrica/analytics/impl/s9;->q:[Lio/appmetrica/analytics/impl/s9;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/s9;
    .locals 2

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/s9;->a:J

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    .line 103
    invoke-static {}, Lio/appmetrica/analytics/impl/q9;->b()[Lio/appmetrica/analytics/impl/q9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/s9;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/q9;

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    new-instance v1, Lio/appmetrica/analytics/impl/q9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/q9;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/q9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/q9;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/impl/r9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/r9;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    :cond_6
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/s9;->a:J

    goto :goto_0

    :cond_8
    :goto_3
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/s9;->a:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/s9;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/s9;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/s9;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
