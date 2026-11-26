.class public final Lio/appmetrica/analytics/screenshot/impl/z;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile d:[Lio/appmetrica/analytics/screenshot/impl/z;


# instance fields
.field public a:Lio/appmetrica/analytics/screenshot/impl/w;

.field public b:Lio/appmetrica/analytics/screenshot/impl/y;

.field public c:Lio/appmetrica/analytics/screenshot/impl/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/z;->a()Lio/appmetrica/analytics/screenshot/impl/z;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 1

    .line 75
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/z;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/z;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/z;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/z;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/z;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/screenshot/impl/z;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/z;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/z;->d:[Lio/appmetrica/analytics/screenshot/impl/z;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/screenshot/impl/z;->d:[Lio/appmetrica/analytics/screenshot/impl/z;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/screenshot/impl/z;

    sput-object v1, Lio/appmetrica/analytics/screenshot/impl/z;->d:[Lio/appmetrica/analytics/screenshot/impl/z;

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
    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/z;->d:[Lio/appmetrica/analytics/screenshot/impl/z;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    .line 72
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    .line 73
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    if-nez v0, :cond_4

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    :cond_4
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    :cond_6
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/z;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/z;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->a:Lio/appmetrica/analytics/screenshot/impl/w;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->b:Lio/appmetrica/analytics/screenshot/impl/y;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/z;->c:Lio/appmetrica/analytics/screenshot/impl/x;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_2
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
