.class public final Lio/appmetrica/analytics/impl/Mm;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final D:I = -0x1

.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static volatile G:[Lio/appmetrica/analytics/impl/Mm;


# instance fields
.field public A:Lio/appmetrica/analytics/impl/Km;

.field public B:[Lio/appmetrica/analytics/impl/Im;

.field public C:Lio/appmetrica/analytics/impl/Gm;

.field public a:Ljava/lang/String;

.field public b:J

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[Lio/appmetrica/analytics/impl/Fm;

.field public i:Lio/appmetrica/analytics/impl/Hm;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:Lio/appmetrica/analytics/impl/Lm;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:Z

.field public v:Lio/appmetrica/analytics/impl/Jm;

.field public w:I

.field public x:I

.field public y:Lio/appmetrica/analytics/impl/Em;

.field public z:Lio/appmetrica/analytics/impl/Dm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Mm;->a()Lio/appmetrica/analytics/impl/Mm;

    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/Mm;
    .locals 1

    .line 582
    new-instance v0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Mm;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Mm;
    .locals 1

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Mm;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/Mm;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Mm;->G:[Lio/appmetrica/analytics/impl/Mm;

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Mm;->G:[Lio/appmetrica/analytics/impl/Mm;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/Mm;

    sput-object v1, Lio/appmetrica/analytics/impl/Mm;->G:[Lio/appmetrica/analytics/impl/Mm;

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
    sget-object v0, Lio/appmetrica/analytics/impl/Mm;->G:[Lio/appmetrica/analytics/impl/Mm;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Mm;
    .locals 6

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 553
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Mm;->b:J

    .line 554
    sget-object v3, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    .line 555
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    .line 556
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    .line 557
    iput-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    .line 558
    iput-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    .line 559
    invoke-static {}, Lio/appmetrica/analytics/impl/Fm;->b()[Lio/appmetrica/analytics/impl/Fm;

    move-result-object v4

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    const/4 v4, 0x0

    .line 560
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    .line 561
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    .line 563
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    const/4 v5, 0x0

    .line 564
    iput-boolean v5, p0, Lio/appmetrica/analytics/impl/Mm;->m:Z

    .line 565
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    .line 566
    iput-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    .line 567
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    .line 568
    iput-boolean v5, p0, Lio/appmetrica/analytics/impl/Mm;->q:Z

    .line 569
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    .line 570
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Mm;->s:J

    .line 571
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Mm;->t:J

    .line 572
    iput-boolean v5, p0, Lio/appmetrica/analytics/impl/Mm;->u:Z

    .line 573
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    const/16 v0, 0x258

    .line 574
    iput v0, p0, Lio/appmetrica/analytics/impl/Mm;->w:I

    const/4 v0, 0x1

    .line 575
    iput v0, p0, Lio/appmetrica/analytics/impl/Mm;->x:I

    .line 576
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    .line 577
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    .line 578
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    .line 579
    invoke-static {}, Lio/appmetrica/analytics/impl/Im;->b()[Lio/appmetrica/analytics/impl/Im;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    .line 580
    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    const/4 v0, -0x1

    .line 581
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Mm;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :sswitch_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/Gm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Gm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    :cond_1
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xfa

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    if-nez v2, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/Im;

    if-eqz v3, :cond_3

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    new-instance v1, Lio/appmetrica/analytics/impl/Im;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Im;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/Im;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Im;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/Km;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Km;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    :cond_5
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/impl/Dm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Dm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    :cond_6
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    if-nez v0, :cond_7

    new-instance v0, Lio/appmetrica/analytics/impl/Em;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Em;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    :cond_7
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/Mm;->x:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/Mm;->w:I

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    if-nez v0, :cond_8

    new-instance v0, Lio/appmetrica/analytics/impl/Jm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Jm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    :cond_8
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->u:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Mm;->t:J

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Mm;->s:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->q:Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    if-nez v0, :cond_9

    new-instance v0, Lio/appmetrica/analytics/impl/Lm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Lm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    :cond_9
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x7a

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    if-nez v2, :cond_a

    move v3, v1

    goto :goto_3

    :cond_a
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->m:Z

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    if-nez v0, :cond_d

    new-instance v0, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    :cond_d
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    if-nez v2, :cond_e

    move v3, v1

    goto :goto_5

    :cond_e
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    new-array v4, v0, [Lio/appmetrica/analytics/impl/Fm;

    if-eqz v3, :cond_f

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_10

    new-instance v1, Lio/appmetrica/analytics/impl/Fm;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Fm;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    new-instance v0, Lio/appmetrica/analytics/impl/Fm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Fm;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    if-nez v2, :cond_11

    move v3, v1

    goto :goto_7

    :cond_11
    array-length v3, v2

    :goto_7
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_13

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    if-nez v2, :cond_14

    move v3, v1

    goto :goto_9

    :cond_14
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_16

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    if-nez v2, :cond_17

    move v3, v1

    goto :goto_b

    :cond_17
    array-length v3, v2

    :goto_b
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_18

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_19

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Mm;->b:J

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    goto/16 :goto_0

    :goto_d
    :sswitch_1d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_1c
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_1a
        0x22 -> :sswitch_19
        0x2a -> :sswitch_18
        0x32 -> :sswitch_17
        0x3a -> :sswitch_16
        0x42 -> :sswitch_15
        0x4a -> :sswitch_14
        0x52 -> :sswitch_13
        0x5a -> :sswitch_12
        0x62 -> :sswitch_11
        0x68 -> :sswitch_10
        0x72 -> :sswitch_f
        0x7a -> :sswitch_e
        0x82 -> :sswitch_d
        0x88 -> :sswitch_c
        0xa2 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xb0 -> :sswitch_9
        0xb8 -> :sswitch_8
        0xc2 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xd0 -> :sswitch_5
        0xda -> :sswitch_4
        0xea -> :sswitch_3
        0xf2 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public final computeSerializedSize()I
    .locals 8

    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lio/appmetrica/analytics/impl/Mm;->b:J

    const/4 v1, 0x2

    invoke-static {v1, v3, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v3

    move v4, v0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    array-length v7, v6

    if-ge v0, v7, :cond_2

    aget-object v6, v6, v0

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v4

    add-int/2addr v1, v5

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v3

    move v4, v0

    move v5, v4

    :goto_1
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    array-length v7, v6

    if-ge v0, v7, :cond_7

    aget-object v6, v6, v0

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v1, v4

    add-int/2addr v1, v5

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v3

    move v4, v0

    move v5, v4

    :goto_2
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    array-length v7, v6

    if-ge v0, v7, :cond_a

    aget-object v6, v6, v0

    if-eqz v6, :cond_9

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v1, v4

    add-int/2addr v1, v5

    :cond_b
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v3

    :goto_3
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    array-length v5, v4

    if-ge v0, v5, :cond_d

    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    const/16 v5, 0x8

    invoke-static {v5, v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v4, v1

    move v1, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    if-eqz v0, :cond_e

    const/16 v4, 0x9

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->m:Z

    const/16 v4, 0xd

    invoke-static {v4, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    if-eqz v1, :cond_15

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_4
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_14

    aget-object v6, v6, v1

    if-eqz v6, :cond_13

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    add-int/2addr v0, v4

    add-int/2addr v0, v5

    :cond_15
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    if-eqz v1, :cond_16

    const/16 v4, 0x10

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Mm;->q:Z

    if-eqz v1, :cond_17

    const/16 v4, 0x11

    invoke-static {v4, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Mm;->s:J

    const/16 v4, 0x15

    invoke-static {v4, v1, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v1, v0

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/Mm;->t:J

    const/16 v0, 0x16

    invoke-static {v0, v4, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Mm;->u:Z

    if-eqz v1, :cond_19

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    if-eqz v1, :cond_1a

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget v1, p0, Lio/appmetrica/analytics/impl/Mm;->w:I

    const/16 v2, 0x19

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lio/appmetrica/analytics/impl/Mm;->x:I

    const/16 v2, 0x1a

    invoke-static {v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    if-eqz v1, :cond_1b

    const/16 v2, 0x1b

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    if-eqz v1, :cond_1c

    const/16 v2, 0x1d

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    if-eqz v1, :cond_1d

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    :goto_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    array-length v2, v1

    if-ge v3, v2, :cond_1f

    aget-object v1, v1, v3

    if-eqz v1, :cond_1e

    const/16 v2, 0x1f

    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1f
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    if-eqz p0, :cond_20

    const/16 v1, 0x20

    invoke-static {v1, p0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_20
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Mm;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Mm;->b:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v2

    :goto_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v2

    :goto_2
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_8

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v2

    :goto_3
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    array-length v4, v3

    if-ge v0, v4, :cond_a

    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    if-eqz v0, :cond_b

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->m:Z

    const/16 v3, 0xd

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v2

    :goto_4
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_11

    aget-object v3, v3, v0

    if-eqz v3, :cond_10

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    if-eqz v0, :cond_12

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_12
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->q:Z

    if-eqz v0, :cond_13

    const/16 v3, 0x11

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_14
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Mm;->s:J

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v0, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Mm;->t:J

    const/16 v3, 0x16

    invoke-virtual {p1, v3, v0, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Mm;->u:Z

    if-eqz v0, :cond_15

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    if-eqz v0, :cond_16

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_16
    iget v0, p0, Lio/appmetrica/analytics/impl/Mm;->w:I

    const/16 v1, 0x19

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lio/appmetrica/analytics/impl/Mm;->x:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    if-eqz v0, :cond_17

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    if-eqz v0, :cond_18

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_18
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    if-eqz v0, :cond_19

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-lez v0, :cond_1b

    :goto_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    array-length v1, v0

    if-ge v2, v1, :cond_1b

    aget-object v0, v0, v2

    if-eqz v0, :cond_1a

    const/16 v1, 0x1f

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1b
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    if-eqz v0, :cond_1c

    const/16 v1, 0x20

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    :cond_1c
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
