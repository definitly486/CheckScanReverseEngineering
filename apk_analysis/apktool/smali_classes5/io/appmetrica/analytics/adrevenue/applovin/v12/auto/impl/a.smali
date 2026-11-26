.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile b:[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 1

    .line 27
    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->b:[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->b:[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    sput-object v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->b:[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

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
    sget-object v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->b:[Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 2

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-boolean p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-boolean v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
