.class public abstract Lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lu1;->a:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Lu1;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x17

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lpp9;->d:Lpp9;

    new-instance p2, Ln4a;

    invoke-direct {p2, p1}, Ln4a;-><init>(Lpp9;)V

    iput-object p2, p0, Lu1;->b:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu1;->a:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lu1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public c()Z
    .locals 3

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvf4;

    invoke-virtual {p0}, Lvf4;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract f()Lnl3;
.end method

.method public g(Landroid/net/Uri;)Lz08;
    .locals 2

    new-instance v0, Lgd0;

    invoke-direct {v0, p0}, Lgd0;-><init>(Ljava/lang/Object;)V

    new-instance v1, Loz7;

    invoke-direct {v1, v0}, Loz7;-><init>(Lw08;)V

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Lzl9;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lu1;->g(Landroid/net/Uri;)Lz08;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lhd0;

    invoke-direct {p0, p1}, Lhd0;-><init>(Ljava/lang/Object;)V

    new-instance p1, Loz7;

    invoke-direct {p1, p0}, Loz7;-><init>(Lw08;)V

    move-object p0, p1

    :goto_0
    new-instance p1, Lrm3$j;

    invoke-direct {p1, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lz08;

    invoke-direct {p0, v1, p1}, Lz08;-><init>(Lmz7;Lrm3$j;)V

    return-object p0
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public j()Ltu3$a;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lu1;->k()V

    iget-object v1, v0, Lu1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x21

    const/16 v4, 0x10

    if-lez v2, :cond_0

    move-object v2, v0

    check-cast v2, Lmg5$a;

    iget v5, v2, Lmg5$a;->e:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v2, Lmg5$a;->e:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    const/16 v6, 0x18

    const/16 v7, 0x20

    const/16 v8, 0x28

    const/16 v9, 0x30

    const/16 v10, 0x8

    const-wide/16 v11, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "Should never get here."

    invoke-static {v0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v11, v5

    shl-long/2addr v11, v9

    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v13, v5

    shl-long v8, v13, v8

    xor-long/2addr v11, v8

    :pswitch_2
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v8, v5

    shl-long v7, v8, v7

    xor-long/2addr v11, v7

    :pswitch_3
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v7, v5

    shl-long v5, v7, v6

    xor-long/2addr v11, v5

    :pswitch_4
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v4

    xor-long/2addr v11, v5

    :pswitch_5
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    xor-long/2addr v11, v5

    :pswitch_6
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    xor-long/2addr v11, v5

    :pswitch_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    goto/16 :goto_6

    :pswitch_8
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v13, v5

    shl-long/2addr v13, v9

    goto :goto_0

    :pswitch_9
    move-wide v13, v11

    :goto_0
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    move v15, v6

    move v9, v7

    int-to-long v6, v5

    shl-long v5, v6, v8

    xor-long/2addr v5, v13

    goto :goto_1

    :pswitch_a
    move v15, v6

    move v9, v7

    move-wide v5, v11

    :goto_1
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    goto :goto_2

    :pswitch_b
    move v15, v6

    move-wide v5, v11

    :goto_2
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v15

    xor-long/2addr v5, v7

    goto :goto_3

    :pswitch_c
    move-wide v5, v11

    :goto_3
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v4

    xor-long/2addr v5, v7

    goto :goto_4

    :pswitch_d
    move-wide v5, v11

    :goto_4
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v10

    xor-long/2addr v5, v7

    goto :goto_5

    :pswitch_e
    move-wide v5, v11

    :goto_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    xor-long/2addr v5, v7

    :goto_6
    iget-wide v7, v2, Lmg5$a;->c:J

    const-wide v9, -0x783c846eeebdac2bL

    mul-long/2addr v5, v9

    const/16 v13, 0x1f

    invoke-static {v5, v6, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const-wide v13, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v5, v13

    xor-long/2addr v5, v7

    iput-wide v5, v2, Lmg5$a;->c:J

    iget-wide v5, v2, Lmg5$a;->d:J

    mul-long/2addr v11, v13

    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    iput-wide v5, v2, Lmg5$a;->d:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    check-cast v0, Lmg5$a;

    iget-wide v1, v0, Lmg5$a;->c:J

    iget v5, v0, Lmg5$a;->e:I

    int-to-long v5, v5

    xor-long/2addr v1, v5

    iget-wide v7, v0, Lmg5$a;->d:J

    xor-long/2addr v5, v7

    add-long/2addr v1, v5

    add-long/2addr v5, v1

    ushr-long v7, v1, v3

    xor-long/2addr v1, v7

    const-wide v7, -0xae502812aa7333L

    mul-long/2addr v1, v7

    ushr-long v9, v1, v3

    xor-long/2addr v1, v9

    const-wide v9, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v1, v9

    ushr-long v11, v1, v3

    xor-long/2addr v1, v11

    ushr-long v11, v5, v3

    xor-long/2addr v5, v11

    mul-long/2addr v5, v7

    ushr-long v7, v5, v3

    xor-long/2addr v5, v7

    mul-long/2addr v5, v9

    ushr-long v7, v5, v3

    xor-long/2addr v5, v7

    add-long/2addr v1, v5

    iput-wide v1, v0, Lmg5$a;->c:J

    add-long/2addr v5, v1

    iput-wide v5, v0, Lmg5$a;->d:J

    new-array v1, v4, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v0, Lmg5$a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v0, Lmg5$a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-instance v1, Ltu3$a;

    invoke-direct {v1, v0}, Ltu3$a;-><init>([B)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lu1;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public l(Lia6;)V
    .locals 2

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract m(Ljava/nio/ByteBuffer;)V
.end method

.method public n([B)Lu1;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lu1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-gt v0, v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lu1;->k()V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/16 v3, 0x10

    rsub-int/lit8 v0, v0, 0x10

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lu1;->k()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v0, v3, :cond_3

    invoke-virtual {p0, p1}, Lu1;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public o(Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lu1;->h()V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lu1;->i()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lu1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
