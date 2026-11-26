.class public final Lio/appmetrica/analytics/idsync/impl/o;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile c:[Lio/appmetrica/analytics/idsync/impl/o;


# instance fields
.field public a:J

.field public b:[Lio/appmetrica/analytics/idsync/impl/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/idsync/impl/o;->a()Lio/appmetrica/analytics/idsync/impl/o;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/idsync/impl/o;
    .locals 1

    .line 85
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/o;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/o;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/o;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/o;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/o;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/o;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/impl/o;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/o;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/idsync/impl/o;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/idsync/impl/o;->c:[Lio/appmetrica/analytics/idsync/impl/o;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/idsync/impl/o;->c:[Lio/appmetrica/analytics/idsync/impl/o;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/idsync/impl/o;

    sput-object v1, Lio/appmetrica/analytics/idsync/impl/o;->c:[Lio/appmetrica/analytics/idsync/impl/o;

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
    sget-object v0, Lio/appmetrica/analytics/idsync/impl/o;->c:[Lio/appmetrica/analytics/idsync/impl/o;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/idsync/impl/o;
    .locals 2

    const-wide/16 v0, 0x2710

    .line 82
    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    .line 83
    invoke-static {}, Lio/appmetrica/analytics/idsync/impl/n;->b()[Lio/appmetrica/analytics/idsync/impl/n;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/o;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/idsync/impl/n;

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {v1}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    goto :goto_0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v2, v0

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/o;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/idsync/impl/o;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
