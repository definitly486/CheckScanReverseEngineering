.class public final Lio/appmetrica/analytics/impl/F8;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field public static volatile o:[Lio/appmetrica/analytics/impl/F8;


# instance fields
.field public a:I

.field public b:Lio/appmetrica/analytics/impl/E8;

.field public c:Lio/appmetrica/analytics/impl/C8;

.field public d:Lio/appmetrica/analytics/impl/D8;

.field public e:Lio/appmetrica/analytics/impl/o8;

.field public f:Lio/appmetrica/analytics/impl/u8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F8;->a()Lio/appmetrica/analytics/impl/F8;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/F8;
    .locals 1

    .line 131
    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/F8;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/F8;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/F8;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/F8;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/F8;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/F8;->o:[Lio/appmetrica/analytics/impl/F8;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/F8;->o:[Lio/appmetrica/analytics/impl/F8;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/F8;

    sput-object v1, Lio/appmetrica/analytics/impl/F8;->o:[Lio/appmetrica/analytics/impl/F8;

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
    sget-object v0, Lio/appmetrica/analytics/impl/F8;->o:[Lio/appmetrica/analytics/impl/F8;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/F8;
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lio/appmetrica/analytics/impl/F8;->a:I

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    .line 126
    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    .line 127
    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    .line 128
    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    .line 129
    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/F8;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/impl/u8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/u8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    :cond_2
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    if-nez v0, :cond_4

    new-instance v0, Lio/appmetrica/analytics/impl/o8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/o8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    :cond_4
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/impl/D8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/D8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    :cond_6
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    if-nez v0, :cond_8

    new-instance v0, Lio/appmetrica/analytics/impl/C8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    :cond_8
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    if-nez v0, :cond_a

    new-instance v0, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    :cond_a
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lio/appmetrica/analytics/impl/F8;->a:I

    goto :goto_0

    :cond_c
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lio/appmetrica/analytics/impl/F8;->a:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_5
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F8;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/F8;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget v0, p0, Lio/appmetrica/analytics/impl/F8;->a:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_5
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
