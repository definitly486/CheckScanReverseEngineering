.class public final Lio/appmetrica/analytics/billing/impl/v;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile d:[Lio/appmetrica/analytics/billing/impl/v;


# instance fields
.field public a:Z

.field public b:Lio/appmetrica/analytics/billing/impl/u;

.field public c:Lio/appmetrica/analytics/billing/impl/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/billing/impl/v;->a()Lio/appmetrica/analytics/billing/impl/v;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/billing/impl/v;
    .locals 1

    .line 67
    new-instance v0, Lio/appmetrica/analytics/billing/impl/v;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/v;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/billing/impl/v;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/v;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/billing/impl/v;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/v;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billing/impl/v;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/v;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/billing/impl/v;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/billing/impl/v;->d:[Lio/appmetrica/analytics/billing/impl/v;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/billing/impl/v;->d:[Lio/appmetrica/analytics/billing/impl/v;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/billing/impl/v;

    sput-object v1, Lio/appmetrica/analytics/billing/impl/v;->d:[Lio/appmetrica/analytics/billing/impl/v;

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
    sget-object v0, Lio/appmetrica/analytics/billing/impl/v;->d:[Lio/appmetrica/analytics/billing/impl/v;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/billing/impl/v;
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/v;->a:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->b:Lio/appmetrica/analytics/billing/impl/u;

    .line 65
    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->c:Lio/appmetrica/analytics/billing/impl/t;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/v;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

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
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->c:Lio/appmetrica/analytics/billing/impl/t;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/billing/impl/t;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/t;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->c:Lio/appmetrica/analytics/billing/impl/t;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->b:Lio/appmetrica/analytics/billing/impl/u;

    if-nez v0, :cond_4

    new-instance v0, Lio/appmetrica/analytics/billing/impl/u;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/u;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->b:Lio/appmetrica/analytics/billing/impl/u;

    :cond_4
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/v;->a:Z

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lio/appmetrica/analytics/billing/impl/v;->a:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/billing/impl/v;->b:Lio/appmetrica/analytics/billing/impl/u;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/v;->c:Lio/appmetrica/analytics/billing/impl/t;

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

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/v;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/billing/impl/v;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-boolean v0, p0, Lio/appmetrica/analytics/billing/impl/v;->a:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->b:Lio/appmetrica/analytics/billing/impl/u;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/v;->c:Lio/appmetrica/analytics/billing/impl/t;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_2
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
