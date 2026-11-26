.class public final Lio/appmetrica/analytics/impl/Cm;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile c:[Lio/appmetrica/analytics/impl/Cm;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lio/appmetrica/analytics/impl/Bm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Cm;->a()Lio/appmetrica/analytics/impl/Cm;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/Cm;
    .locals 1

    .line 47
    new-instance v0, Lio/appmetrica/analytics/impl/Cm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Cm;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Cm;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Cm;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/Cm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Cm;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Cm;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/Cm;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Cm;->c:[Lio/appmetrica/analytics/impl/Cm;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Cm;->c:[Lio/appmetrica/analytics/impl/Cm;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/Cm;

    sput-object v1, Lio/appmetrica/analytics/impl/Cm;->c:[Lio/appmetrica/analytics/impl/Cm;

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
    sget-object v0, Lio/appmetrica/analytics/impl/Cm;->c:[Lio/appmetrica/analytics/impl/Cm;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Cm;
    .locals 1

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Cm;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/impl/Bm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Bm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cm;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
