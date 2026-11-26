.class public final Lyads/wa4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;
.implements Lyads/sh5;


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/os4;

.field public final c:Lyads/os4;

.field public final d:Lyads/os4;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Lyads/yh5;

.field public final g:Ljava/util/ArrayList;

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:Lyads/os4;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Lyads/zs2;

.field public r:[Lyads/va4;

.field public s:[[J

.field public t:I

.field public u:J

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/wa4;->h:I

    new-instance v1, Lyads/yh5;

    invoke-direct {v1}, Lyads/yh5;-><init>()V

    iput-object v1, p0, Lyads/wa4;->f:Lyads/yh5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lyads/wa4;->g:Ljava/util/ArrayList;

    new-instance v1, Lyads/os4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lyads/os4;-><init>(I)V

    iput-object v1, p0, Lyads/wa4;->d:Lyads/os4;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    new-instance v1, Lyads/os4;

    sget-object v2, Lyads/qd4;->a:[B

    invoke-direct {v1, v2}, Lyads/os4;-><init>([B)V

    iput-object v1, p0, Lyads/wa4;->a:Lyads/os4;

    new-instance v1, Lyads/os4;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lyads/os4;-><init>(I)V

    iput-object v1, p0, Lyads/wa4;->b:Lyads/os4;

    new-instance v1, Lyads/os4;

    invoke-direct {v1}, Lyads/os4;-><init>()V

    iput-object v1, p0, Lyads/wa4;->c:Lyads/os4;

    const/4 v1, -0x1

    iput v1, p0, Lyads/wa4;->m:I

    sget-object v1, Lyads/zs2;->a:Lyads/ys2;

    iput-object v1, p0, Lyads/wa4;->q:Lyads/zs2;

    new-array v0, v0, [Lyads/va4;

    iput-object v0, p0, Lyads/wa4;->r:[Lyads/va4;

    return-void
.end method

.method public static synthetic a(Lyads/c06;)Lyads/c06;
    .locals 0

    .line 1825
    return-object p0
.end method

.method public static d()[Lyads/ws2;
    .locals 3

    new-instance v0, Lyads/wa4;

    invoke-direct {v0}, Lyads/wa4;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    :goto_0
    iget v3, v0, Lyads/wa4;->h:I

    const v4, 0x66747970

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_42

    const-wide/32 v14, 0x40000

    const-wide/16 v16, -0x1

    const/4 v6, 0x2

    if-eq v3, v12, :cond_36

    const-wide/16 v18, 0x8

    if-eq v3, v6, :cond_1e

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    iget-object v3, v0, Lyads/wa4;->f:Lyads/yh5;

    iget-object v14, v0, Lyads/wa4;->g:Ljava/util/ArrayList;

    iget v15, v3, Lyads/yh5;->b:I

    if-eqz v15, :cond_19

    if-eq v15, v12, :cond_17

    const/16 v5, 0x890

    const/16 v22, 0x8

    if-eq v15, v6, :cond_11

    if-ne v15, v4, :cond_10

    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v15

    invoke-interface {v1}, Lyads/xs2;->a()J

    move-result-wide v17

    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v25

    sub-long v17, v17, v25

    iget v6, v3, Lyads/yh5;->c:I

    int-to-long v8, v6

    sub-long v8, v17, v8

    long-to-int v6, v8

    new-array v8, v6, [B

    invoke-interface {v1, v8, v13, v6}, Lyads/xs2;->b([BII)V

    move v1, v13

    :goto_1
    iget-object v9, v3, Lyads/yh5;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_f

    iget-object v9, v3, Lyads/yh5;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/xh5;

    move/from16 v28, v13

    iget-wide v12, v9, Lyads/xh5;->a:J

    sub-long/2addr v12, v15

    long-to-int v12, v12

    if-ltz v12, :cond_e

    if-gt v12, v6, :cond_e

    add-int/lit8 v13, v12, 0x4

    if-ltz v13, :cond_d

    if-gt v13, v6, :cond_d

    add-int/lit8 v17, v12, 0x5

    aget-byte v13, v8, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v18, v12, 0x6

    aget-byte v4, v8, v17

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v13

    add-int/lit8 v13, v12, 0x7

    aget-byte v10, v8, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v4, v10

    add-int/lit8 v12, v12, 0x8

    aget-byte v10, v8, v13

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v4, v10

    sget-object v10, Lyads/az;->c:Ljava/nio/charset/Charset;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8, v12, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v12, v4

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_2
    const/4 v11, -0x1

    goto :goto_3

    :sswitch_0
    const-string v11, "Super_SlowMotion_BGM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x4

    goto :goto_3

    :sswitch_1
    const-string v11, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x3

    goto :goto_3

    :sswitch_2
    const-string v11, "Super_SlowMotion_Data"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    goto :goto_3

    :sswitch_3
    const-string v11, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    goto :goto_3

    :sswitch_4
    const-string v11, "SlowMotion_Data"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v11, v28

    :goto_3
    packed-switch v11, :pswitch_data_0

    const-string v0, "Invalid SEF name"

    invoke-static {v0, v7}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v28

    :pswitch_0
    const/16 v11, 0xb01

    goto :goto_4

    :pswitch_1
    const/16 v11, 0xb04

    goto :goto_4

    :pswitch_2
    const/16 v11, 0xb00

    goto :goto_4

    :pswitch_3
    const/16 v11, 0xb03

    goto :goto_4

    :pswitch_4
    move v11, v5

    :goto_4
    iget v9, v9, Lyads/xh5;->b:I

    add-int/lit8 v4, v4, 0x8

    sub-int/2addr v9, v4

    if-eq v11, v5, :cond_7

    const/16 v4, 0xb00

    if-eq v11, v4, :cond_c

    const/16 v4, 0xb01

    if-eq v11, v4, :cond_c

    const/16 v4, 0xb03

    if-eq v11, v4, :cond_c

    const/16 v4, 0xb04

    if-ne v11, v4, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-static {}, Lud;->g()V

    return v28

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8, v12, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    sget-object v9, Lyads/yh5;->e:Lyads/pp5;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lyads/pp5;->b:Lyads/op5;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lyads/np5;

    invoke-direct {v12, v10, v9, v11}, Lyads/np5;-><init>(Lyads/op5;Lyads/pp5;Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {v12}, Lyads/i;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v12}, Lyads/i;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move/from16 v10, v28

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_b

    sget-object v11, Lyads/yh5;->d:Lyads/pp5;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v11, Lyads/pp5;->b:Lyads/op5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lyads/np5;

    invoke-direct {v5, v13, v11, v12}, Lyads/np5;-><init>(Lyads/op5;Lyads/pp5;Ljava/lang/CharSequence;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {v5}, Lyads/i;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v5}, Lyads/i;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a

    move/from16 v11, v28

    :try_start_0
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    const/4 v11, 0x1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    const/4 v11, 0x2

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v27, 0x1

    add-int/lit8 v5, v5, -0x1

    shl-int v32, v27, v5

    new-instance v31, Lyads/pn5;

    invoke-direct/range {v31 .. v36}, Lyads/pn5;-><init>(IJJ)V

    move-object/from16 v5, v31

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0x890

    const/16 v28, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {v7, v0}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v28, 0x0

    return v28

    :cond_a
    new-instance v0, Lyads/xs4;

    const/4 v11, 0x1

    invoke-direct {v0, v7, v7, v11, v11}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_b
    new-instance v5, Lyads/qn5;

    invoke-direct {v5, v4}, Lyads/qn5;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_8
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x890

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lmi2;->b()V

    const/4 v11, 0x0

    return v11

    :cond_e
    move/from16 v11, v28

    invoke-static {}, Lmi2;->b()V

    return v11

    :cond_f
    move v11, v13

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lyads/qx4;->a:J

    :goto_9
    const-wide/16 v4, 0x0

    const/4 v11, 0x1

    const-wide/16 v23, 0x0

    goto/16 :goto_11

    :cond_10
    move v11, v13

    invoke-static {}, Lud;->g()V

    return v11

    :cond_11
    move v11, v13

    invoke-interface {v1}, Lyads/xs2;->a()J

    move-result-wide v4

    iget v6, v3, Lyads/yh5;->c:I

    add-int/lit8 v6, v6, -0x14

    new-instance v7, Lyads/os4;

    invoke-direct {v7, v6}, Lyads/os4;-><init>(I)V

    iget-object v8, v7, Lyads/os4;->a:[B

    invoke-interface {v1, v8, v11, v6}, Lyads/xs2;->b([BII)V

    const/4 v1, 0x0

    :goto_a
    div-int/lit8 v8, v6, 0xc

    if-ge v1, v8, :cond_15

    iget v8, v7, Lyads/os4;->b:I

    const/16 v25, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Lyads/os4;->e(I)V

    iget-object v8, v7, Lyads/os4;->a:[B

    iget v9, v7, Lyads/os4;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v7, Lyads/os4;->b:I

    aget-byte v11, v8, v9

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v9, 0x2

    iput v12, v7, Lyads/os4;->b:I

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v10, 0x890

    const/16 v11, 0xb00

    const/16 v12, 0xb01

    if-eq v8, v10, :cond_13

    if-eq v8, v11, :cond_13

    const/16 v13, 0xb03

    if-eq v8, v12, :cond_12

    const/16 v14, 0xb04

    if-eq v8, v13, :cond_14

    if-eq v8, v14, :cond_14

    add-int/lit8 v9, v9, 0xa

    invoke-virtual {v7, v9}, Lyads/os4;->e(I)V

    goto :goto_d

    :cond_12
    :goto_b
    const/16 v14, 0xb04

    goto :goto_c

    :cond_13
    const/16 v13, 0xb03

    goto :goto_b

    :cond_14
    :goto_c
    iget v8, v3, Lyads/yh5;->c:I

    int-to-long v8, v8

    sub-long v8, v4, v8

    invoke-virtual {v7}, Lyads/os4;->c()I

    move-result v15

    int-to-long v10, v15

    sub-long/2addr v8, v10

    invoke-virtual {v7}, Lyads/os4;->c()I

    move-result v10

    iget-object v11, v3, Lyads/yh5;->a:Ljava/util/ArrayList;

    new-instance v15, Lyads/xh5;

    invoke-direct {v15, v10, v8, v9}, Lyads/xh5;-><init>(IJ)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    iget-object v1, v3, Lyads/yh5;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lyads/qx4;->a:J

    goto/16 :goto_9

    :cond_16
    const/4 v12, 0x3

    iput v12, v3, Lyads/yh5;->b:I

    iget-object v1, v3, Lyads/yh5;->a:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xh5;

    iget-wide v3, v1, Lyads/xh5;->a:J

    iput-wide v3, v2, Lyads/qx4;->a:J

    move-wide/from16 v23, v3

    :goto_e
    const-wide/16 v4, 0x0

    const/4 v11, 0x1

    goto :goto_11

    :cond_17
    move v11, v13

    const/16 v22, 0x8

    new-instance v4, Lyads/os4;

    move/from16 v5, v22

    invoke-direct {v4, v5}, Lyads/os4;-><init>(I)V

    iget-object v6, v4, Lyads/os4;->a:[B

    invoke-interface {v1, v6, v11, v5}, Lyads/xs2;->b([BII)V

    invoke-virtual {v4}, Lyads/os4;->c()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Lyads/yh5;->c:I

    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_18

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lyads/qx4;->a:J

    goto/16 :goto_9

    :cond_18
    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v4

    iget v1, v3, Lyads/yh5;->c:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lyads/qx4;->a:J

    const/4 v11, 0x2

    iput v11, v3, Lyads/yh5;->b:I

    move-wide/from16 v23, v4

    goto :goto_e

    :cond_19
    invoke-interface {v1}, Lyads/xs2;->a()J

    move-result-wide v4

    cmp-long v1, v4, v16

    if-eqz v1, :cond_1b

    cmp-long v1, v4, v18

    if-gez v1, :cond_1a

    goto :goto_f

    :cond_1a
    sub-long v4, v4, v18

    goto :goto_10

    :cond_1b
    :goto_f
    const-wide/16 v4, 0x0

    :goto_10
    iput-wide v4, v2, Lyads/qx4;->a:J

    const/4 v11, 0x1

    iput v11, v3, Lyads/yh5;->b:I

    move-wide/from16 v23, v4

    const-wide/16 v4, 0x0

    :goto_11
    cmp-long v1, v23, v4

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    iput v1, v0, Lyads/wa4;->h:I

    iput v1, v0, Lyads/wa4;->k:I

    :cond_1c
    return v11

    :cond_1d
    move v1, v13

    invoke-static {}, Lud;->g()V

    return v1

    :cond_1e
    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v3

    iget v5, v0, Lyads/wa4;->m:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_29

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide v16, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    :goto_12
    iget-object v13, v0, Lyads/wa4;->r:[Lyads/va4;

    const-wide v33, 0x7fffffffffffffffL

    array-length v5, v13

    if-ge v12, v5, :cond_26

    aget-object v5, v13, v12

    iget v6, v5, Lyads/va4;->e:I

    iget-object v5, v5, Lyads/va4;->b:Lyads/l06;

    iget v13, v5, Lyads/l06;->b:I

    if-ne v6, v13, :cond_1f

    goto :goto_15

    :cond_1f
    iget-object v5, v5, Lyads/l06;->c:[J

    aget-wide v35, v5, v6

    iget-object v5, v0, Lyads/wa4;->s:[[J

    sget v13, Lyads/u56;->a:I

    aget-object v5, v5, v12

    aget-wide v37, v5, v6

    sub-long v35, v35, v3

    const-wide/16 v23, 0x0

    cmp-long v5, v35, v23

    if-ltz v5, :cond_21

    cmp-long v5, v35, v14

    if-ltz v5, :cond_20

    goto :goto_13

    :cond_20
    const/4 v5, 0x0

    goto :goto_14

    :cond_21
    :goto_13
    const/4 v5, 0x1

    :goto_14
    if-nez v5, :cond_22

    if-nez v11, :cond_23

    :cond_22
    if-ne v5, v11, :cond_24

    cmp-long v6, v35, v31

    if-gez v6, :cond_24

    :cond_23
    move v11, v5

    move v9, v12

    move-wide/from16 v31, v35

    move-wide/from16 v29, v37

    :cond_24
    cmp-long v6, v37, v16

    if-gez v6, :cond_25

    move v10, v5

    move v8, v12

    move-wide/from16 v16, v37

    :cond_25
    :goto_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_26
    cmp-long v5, v16, v33

    if-eqz v5, :cond_28

    if-eqz v10, :cond_28

    const-wide/32 v5, 0xa00000

    add-long v16, v16, v5

    cmp-long v5, v29, v16

    if-gez v5, :cond_27

    goto :goto_16

    :cond_27
    move v5, v8

    goto :goto_17

    :cond_28
    :goto_16
    move v5, v9

    :goto_17
    iput v5, v0, Lyads/wa4;->m:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_29

    return v6

    :cond_29
    iget-object v6, v0, Lyads/wa4;->r:[Lyads/va4;

    aget-object v5, v6, v5

    iget-object v6, v5, Lyads/va4;->c:Lyads/k06;

    iget v8, v5, Lyads/va4;->e:I

    iget-object v9, v5, Lyads/va4;->b:Lyads/l06;

    iget-object v10, v9, Lyads/l06;->c:[J

    aget-wide v11, v10, v8

    iget-object v9, v9, Lyads/l06;->d:[I

    aget v9, v9, v8

    iget-object v10, v5, Lyads/va4;->d:Lyads/j26;

    sub-long v3, v11, v3

    iget v13, v0, Lyads/wa4;->n:I

    move-wide/from16 v29, v14

    int-to-long v14, v13

    add-long/2addr v3, v14

    const-wide/16 v23, 0x0

    cmp-long v13, v3, v23

    if-ltz v13, :cond_2a

    cmp-long v13, v3, v29

    if-ltz v13, :cond_2b

    :cond_2a
    const/16 v27, 0x1

    goto/16 :goto_1c

    :cond_2b
    iget-object v2, v5, Lyads/va4;->a:Lyads/c06;

    iget v2, v2, Lyads/c06;->g:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_2c

    add-long v3, v3, v18

    add-int/lit8 v9, v9, -0x8

    :cond_2c
    long-to-int v2, v3

    invoke-interface {v1, v2}, Lyads/xs2;->a(I)V

    iget-object v2, v5, Lyads/va4;->a:Lyads/c06;

    iget v3, v2, Lyads/c06;->j:I

    if-eqz v3, :cond_30

    iget-object v2, v0, Lyads/wa4;->b:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    const/16 v28, 0x0

    aput-byte v28, v2, v28

    const/16 v27, 0x1

    aput-byte v28, v2, v27

    const/16 v25, 0x2

    aput-byte v28, v2, v25

    rsub-int/lit8 v4, v3, 0x4

    :goto_18
    iget v11, v0, Lyads/wa4;->o:I

    if-ge v11, v9, :cond_2f

    iget v11, v0, Lyads/wa4;->p:I

    if-nez v11, :cond_2e

    invoke-interface {v1, v2, v4, v3}, Lyads/xs2;->b([BII)V

    iget v11, v0, Lyads/wa4;->n:I

    add-int/2addr v11, v3

    iput v11, v0, Lyads/wa4;->n:I

    iget-object v11, v0, Lyads/wa4;->b:Lyads/os4;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lyads/os4;->e(I)V

    iget-object v11, v0, Lyads/wa4;->b:Lyads/os4;

    invoke-virtual {v11}, Lyads/os4;->a()I

    move-result v11

    if-ltz v11, :cond_2d

    iput v11, v0, Lyads/wa4;->p:I

    iget-object v11, v0, Lyads/wa4;->a:Lyads/os4;

    invoke-virtual {v11, v12}, Lyads/os4;->e(I)V

    iget-object v11, v0, Lyads/wa4;->a:Lyads/os4;

    const/4 v13, 0x4

    invoke-interface {v6, v13, v11}, Lyads/k06;->a(ILyads/os4;)V

    iget v11, v0, Lyads/wa4;->o:I

    add-int/2addr v11, v13

    iput v11, v0, Lyads/wa4;->o:I

    add-int/2addr v9, v4

    goto :goto_18

    :cond_2d
    const-string v0, "Invalid NAL length"

    invoke-static {v0, v7}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v12

    :cond_2e
    const/4 v12, 0x0

    invoke-interface {v6, v1, v11, v12}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v11

    iget v12, v0, Lyads/wa4;->n:I

    add-int/2addr v12, v11

    iput v12, v0, Lyads/wa4;->n:I

    iget v12, v0, Lyads/wa4;->o:I

    add-int/2addr v12, v11

    iput v12, v0, Lyads/wa4;->o:I

    iget v12, v0, Lyads/wa4;->p:I

    sub-int/2addr v12, v11

    iput v12, v0, Lyads/wa4;->p:I

    goto :goto_18

    :cond_2f
    move/from16 v33, v9

    goto :goto_1a

    :cond_30
    iget-object v2, v2, Lyads/c06;->f:Lyads/vz2;

    iget-object v2, v2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, v0, Lyads/wa4;->o:I

    if-nez v2, :cond_31

    iget-object v2, v0, Lyads/wa4;->c:Lyads/os4;

    invoke-static {v9, v2}, Lyads/j0;->a(ILyads/os4;)V

    iget-object v2, v0, Lyads/wa4;->c:Lyads/os4;

    const/4 v3, 0x7

    invoke-interface {v6, v3, v2}, Lyads/k06;->a(ILyads/os4;)V

    iget v2, v0, Lyads/wa4;->o:I

    add-int/2addr v2, v3

    iput v2, v0, Lyads/wa4;->o:I

    :cond_31
    add-int/lit8 v9, v9, 0x7

    goto :goto_19

    :cond_32
    if-eqz v10, :cond_33

    invoke-virtual {v10, v1}, Lyads/j26;->a(Lyads/xs2;)V

    :cond_33
    :goto_19
    iget v2, v0, Lyads/wa4;->o:I

    if-ge v2, v9, :cond_2f

    sub-int v2, v9, v2

    const/4 v11, 0x0

    invoke-interface {v6, v1, v2, v11}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v2

    iget v3, v0, Lyads/wa4;->n:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/wa4;->n:I

    iget v3, v0, Lyads/wa4;->o:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/wa4;->o:I

    iget v3, v0, Lyads/wa4;->p:I

    sub-int/2addr v3, v2

    iput v3, v0, Lyads/wa4;->p:I

    goto :goto_19

    :goto_1a
    iget-object v1, v5, Lyads/va4;->b:Lyads/l06;

    iget-object v2, v1, Lyads/l06;->f:[J

    aget-wide v30, v2, v8

    iget-object v1, v1, Lyads/l06;->g:[I

    aget v32, v1, v8

    if-eqz v10, :cond_34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v10

    move/from16 v34, v33

    move/from16 v33, v32

    move-wide/from16 v31, v30

    move-object/from16 v30, v6

    invoke-virtual/range {v29 .. v36}, Lyads/j26;->a(Lyads/k06;JIIILyads/j06;)V

    move-object/from16 v1, v29

    move-object/from16 v29, v30

    const/16 v27, 0x1

    add-int/lit8 v8, v8, 0x1

    iget-object v2, v5, Lyads/va4;->b:Lyads/l06;

    iget v2, v2, Lyads/l06;->b:I

    if-ne v8, v2, :cond_35

    iget v2, v1, Lyads/j26;->c:I

    if-lez v2, :cond_35

    iget-wide v2, v1, Lyads/j26;->d:J

    iget v4, v1, Lyads/j26;->e:I

    iget v6, v1, Lyads/j26;->f:I

    iget v7, v1, Lyads/j26;->g:I

    const/16 v35, 0x0

    move-wide/from16 v30, v2

    move/from16 v32, v4

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-interface/range {v29 .. v35}, Lyads/k06;->a(JIIILyads/j06;)V

    const/4 v11, 0x0

    iput v11, v1, Lyads/j26;->c:I

    goto :goto_1b

    :cond_34
    move-object/from16 v29, v6

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-interface/range {v29 .. v35}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_35
    :goto_1b
    iget v1, v5, Lyads/va4;->e:I

    const/16 v27, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lyads/va4;->e:I

    const/4 v6, -0x1

    iput v6, v0, Lyads/wa4;->m:I

    const/4 v11, 0x0

    iput v11, v0, Lyads/wa4;->n:I

    iput v11, v0, Lyads/wa4;->o:I

    iput v11, v0, Lyads/wa4;->p:I

    return v11

    :goto_1c
    iput-wide v11, v2, Lyads/qx4;->a:J

    return v27

    :cond_36
    move-wide/from16 v29, v14

    iget-wide v5, v0, Lyads/wa4;->j:J

    iget v3, v0, Lyads/wa4;->k:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lyads/wa4;->l:Lyads/os4;

    if-eqz v3, :cond_3f

    iget-object v9, v3, Lyads/os4;->a:[B

    iget v10, v0, Lyads/wa4;->k:I

    long-to-int v5, v5

    invoke-interface {v1, v9, v10, v5}, Lyads/xs2;->b([BII)V

    iget v5, v0, Lyads/wa4;->i:I

    if-ne v5, v4, :cond_3e

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_38

    if-eq v4, v5, :cond_37

    const/4 v4, 0x0

    goto :goto_1d

    :cond_37
    const/4 v4, 0x1

    goto :goto_1d

    :cond_38
    const/4 v4, 0x2

    :goto_1d
    if-eqz v4, :cond_39

    goto :goto_1f

    :cond_39
    iget v4, v3, Lyads/os4;->b:I

    const/16 v20, 0x4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    :cond_3a
    iget v4, v3, Lyads/os4;->c:I

    iget v9, v3, Lyads/os4;->b:I

    sub-int/2addr v4, v9

    if-lez v4, :cond_3d

    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v4

    if-eq v4, v6, :cond_3c

    if-eq v4, v5, :cond_3b

    const/4 v4, 0x0

    goto :goto_1e

    :cond_3b
    const/4 v4, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v4, 0x2

    :goto_1e
    if-eqz v4, :cond_3a

    goto :goto_1f

    :cond_3d
    const/4 v4, 0x0

    :goto_1f
    iput v4, v0, Lyads/wa4;->v:I

    goto :goto_20

    :cond_3e
    iget-object v4, v0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    iget-object v4, v0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/jl;

    new-instance v5, Lyads/kl;

    iget v6, v0, Lyads/wa4;->i:I

    invoke-direct {v5, v6, v3}, Lyads/kl;-><init>(ILyads/os4;)V

    iget-object v3, v4, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3f
    cmp-long v3, v5, v29

    if-gez v3, :cond_41

    long-to-int v3, v5

    invoke-interface {v1, v3}, Lyads/xs2;->a(I)V

    :cond_40
    :goto_20
    const/4 v13, 0x0

    goto :goto_21

    :cond_41
    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lyads/qx4;->a:J

    const/4 v13, 0x1

    :goto_21
    invoke-virtual {v0, v7, v8}, Lyads/wa4;->c(J)V

    if-eqz v13, :cond_0

    iget v3, v0, Lyads/wa4;->h:I

    const/4 v11, 0x2

    if-eq v3, v11, :cond_0

    const/4 v11, 0x1

    return v11

    :cond_42
    move v11, v12

    const-wide/16 v16, -0x1

    iget v3, v0, Lyads/wa4;->k:I

    if-nez v3, :cond_44

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    const/16 v5, 0x8

    const/4 v12, 0x0

    invoke-interface {v1, v3, v12, v5, v11}, Lyads/xs2;->a([BIIZ)Z

    move-result v3

    if-nez v3, :cond_43

    const/16 v21, -0x1

    return v21

    :cond_43
    iput v5, v0, Lyads/wa4;->k:I

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    invoke-virtual {v3, v12}, Lyads/os4;->e(I)V

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->l()J

    move-result-wide v5

    iput-wide v5, v0, Lyads/wa4;->j:J

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v3

    iput v3, v0, Lyads/wa4;->i:I

    :cond_44
    iget-wide v5, v0, Lyads/wa4;->j:J

    const-wide/16 v8, 0x1

    cmp-long v3, v5, v8

    if-nez v3, :cond_45

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    const/16 v5, 0x8

    invoke-interface {v1, v3, v5, v5}, Lyads/xs2;->b([BII)V

    iget v3, v0, Lyads/wa4;->k:I

    add-int/2addr v3, v5

    iput v3, v0, Lyads/wa4;->k:I

    iget-object v3, v0, Lyads/wa4;->d:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->o()J

    move-result-wide v5

    iput-wide v5, v0, Lyads/wa4;->j:J

    goto :goto_22

    :cond_45
    const-wide/16 v23, 0x0

    cmp-long v3, v5, v23

    if-nez v3, :cond_47

    invoke-interface {v1}, Lyads/xs2;->a()J

    move-result-wide v5

    cmp-long v3, v5, v16

    if-nez v3, :cond_46

    iget-object v3, v0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/jl;

    if-eqz v3, :cond_46

    iget-wide v5, v3, Lyads/jl;->b:J

    :cond_46
    cmp-long v3, v5, v16

    if-eqz v3, :cond_47

    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v8

    sub-long/2addr v5, v8

    iget v3, v0, Lyads/wa4;->k:I

    int-to-long v8, v3

    add-long/2addr v5, v8

    iput-wide v5, v0, Lyads/wa4;->j:J

    :cond_47
    :goto_22
    iget-wide v5, v0, Lyads/wa4;->j:J

    iget v3, v0, Lyads/wa4;->k:I

    int-to-long v8, v3

    cmp-long v8, v5, v8

    if-ltz v8, :cond_52

    iget v8, v0, Lyads/wa4;->i:I

    const v9, 0x6d6f6f76

    const v10, 0x68646c72    # 4.3148E24f

    const v11, 0x6d657461

    if-eq v8, v9, :cond_4e

    const v9, 0x7472616b

    if-eq v8, v9, :cond_4e

    const v9, 0x6d646961

    if-eq v8, v9, :cond_4e

    const v9, 0x6d696e66

    if-eq v8, v9, :cond_4e

    const v9, 0x7374626c

    if-eq v8, v9, :cond_4e

    const v9, 0x65647473

    if-eq v8, v9, :cond_4e

    if-ne v8, v11, :cond_48

    goto/16 :goto_24

    :cond_48
    const v9, 0x6d646864

    if-eq v8, v9, :cond_49

    const v9, 0x6d766864

    if-eq v8, v9, :cond_49

    if-eq v8, v10, :cond_49

    const v9, 0x73747364

    if-eq v8, v9, :cond_49

    const v9, 0x73747473

    if-eq v8, v9, :cond_49

    const v9, 0x73747373

    if-eq v8, v9, :cond_49

    const v9, 0x63747473

    if-eq v8, v9, :cond_49

    const v9, 0x656c7374

    if-eq v8, v9, :cond_49

    const v9, 0x73747363

    if-eq v8, v9, :cond_49

    const v9, 0x7374737a

    if-eq v8, v9, :cond_49

    const v9, 0x73747a32

    if-eq v8, v9, :cond_49

    const v9, 0x7374636f

    if-eq v8, v9, :cond_49

    const v9, 0x636f3634

    if-eq v8, v9, :cond_49

    const v9, 0x746b6864

    if-eq v8, v9, :cond_49

    if-eq v8, v4, :cond_49

    const v4, 0x75647461

    if-eq v8, v4, :cond_49

    const v4, 0x6b657973

    if-eq v8, v4, :cond_49

    const v4, 0x696c7374

    if-ne v8, v4, :cond_4a

    :cond_49
    const/16 v4, 0x8

    goto :goto_23

    :cond_4a
    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v3

    iget v5, v0, Lyads/wa4;->k:I

    int-to-long v5, v5

    sub-long v11, v3, v5

    iget v3, v0, Lyads/wa4;->i:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_4b

    new-instance v8, Lyads/ta4;

    add-long v15, v11, v5

    iget-wide v3, v0, Lyads/wa4;->j:J

    sub-long v17, v3, v5

    const-wide/16 v9, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v8 .. v18}, Lyads/ta4;-><init>(JJJJJ)V

    :cond_4b
    iput-object v7, v0, Lyads/wa4;->l:Lyads/os4;

    const/4 v11, 0x1

    iput v11, v0, Lyads/wa4;->h:I

    goto/16 :goto_0

    :goto_23
    if-ne v3, v4, :cond_4d

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_4c

    new-instance v3, Lyads/os4;

    long-to-int v5, v5

    invoke-direct {v3, v5}, Lyads/os4;-><init>(I)V

    iget-object v5, v0, Lyads/wa4;->d:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    iget-object v6, v3, Lyads/os4;->a:[B

    const/4 v11, 0x0

    invoke-static {v5, v11, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lyads/wa4;->l:Lyads/os4;

    const/4 v11, 0x1

    iput v11, v0, Lyads/wa4;->h:I

    goto/16 :goto_0

    :cond_4c
    const/4 v11, 0x0

    invoke-static {}, Lud;->g()V

    return v11

    :cond_4d
    const/4 v11, 0x0

    invoke-static {}, Lud;->g()V

    return v11

    :cond_4e
    :goto_24
    invoke-interface {v1}, Lyads/xs2;->f()J

    move-result-wide v3

    iget-wide v5, v0, Lyads/wa4;->j:J

    add-long/2addr v3, v5

    iget v7, v0, Lyads/wa4;->k:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_50

    iget v5, v0, Lyads/wa4;->i:I

    if-ne v5, v11, :cond_50

    iget-object v5, v0, Lyads/wa4;->c:Lyads/os4;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lyads/os4;->c(I)V

    iget-object v5, v0, Lyads/wa4;->c:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    const/4 v11, 0x0

    invoke-interface {v1, v5, v11, v6}, Lyads/xs2;->a([BII)V

    iget-object v5, v0, Lyads/wa4;->c:Lyads/os4;

    sget-object v6, Lyads/sl;->a:[B

    iget v6, v5, Lyads/os4;->b:I

    add-int/lit8 v7, v6, 0x4

    invoke-virtual {v5, v7}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v8

    if-eq v8, v10, :cond_4f

    move v6, v7

    :cond_4f
    invoke-virtual {v5, v6}, Lyads/os4;->e(I)V

    iget-object v5, v0, Lyads/wa4;->c:Lyads/os4;

    iget v5, v5, Lyads/os4;->b:I

    invoke-interface {v1, v5}, Lyads/xs2;->a(I)V

    invoke-interface {v1}, Lyads/xs2;->c()V

    :cond_50
    iget-object v5, v0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    new-instance v6, Lyads/jl;

    iget v7, v0, Lyads/wa4;->i:I

    invoke-direct {v6, v7, v3, v4}, Lyads/jl;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lyads/wa4;->j:J

    iget v7, v0, Lyads/wa4;->k:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_51

    invoke-virtual {v0, v3, v4}, Lyads/wa4;->c(J)V

    goto/16 :goto_0

    :cond_51
    const/4 v11, 0x0

    iput v11, v0, Lyads/wa4;->h:I

    iput v11, v0, Lyads/wa4;->k:I

    goto/16 :goto_0

    :cond_52
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JJ)V
    .locals 6

    .line 1802
    iget-object v0, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 1803
    iput v0, p0, Lyads/wa4;->k:I

    const/4 v1, -0x1

    .line 1804
    iput v1, p0, Lyads/wa4;->m:I

    .line 1805
    iput v0, p0, Lyads/wa4;->n:I

    .line 1806
    iput v0, p0, Lyads/wa4;->o:I

    .line 1807
    iput v0, p0, Lyads/wa4;->p:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 1808
    iget p1, p0, Lyads/wa4;->h:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 1809
    iput v0, p0, Lyads/wa4;->h:I

    .line 1810
    iput v0, p0, Lyads/wa4;->k:I

    return-void

    .line 1811
    :cond_0
    iget-object p1, p0, Lyads/wa4;->f:Lyads/yh5;

    .line 1812
    iget-object p2, p1, Lyads/yh5;->a:Ljava/util/ArrayList;

    .line 1813
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1814
    iput v0, p1, Lyads/yh5;->b:I

    .line 1815
    iget-object p0, p0, Lyads/wa4;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1816
    :cond_1
    iget-object p0, p0, Lyads/wa4;->r:[Lyads/va4;

    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_6

    aget-object v2, p0, p2

    .line 1817
    iget-object v3, v2, Lyads/va4;->b:Lyads/l06;

    .line 1818
    iget-object v4, v3, Lyads/l06;->f:[J

    invoke-static {v4, p3, p4, v0}, Lyads/u56;->b([JJZ)I

    move-result v4

    :goto_1
    if-ltz v4, :cond_3

    .line 1819
    iget-object v5, v3, Lyads/l06;->g:[I

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_2
    if-ne v4, v1, :cond_4

    .line 1820
    invoke-virtual {v3, p3, p4}, Lyads/l06;->a(J)I

    move-result v4

    .line 1821
    :cond_4
    iput v4, v2, Lyads/va4;->e:I

    .line 1822
    iget-object v2, v2, Lyads/va4;->d:Lyads/j26;

    if-eqz v2, :cond_5

    .line 1823
    iput-boolean v0, v2, Lyads/j26;->b:Z

    .line 1824
    iput v0, v2, Lyads/j26;->c:I

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final a(Lyads/jl;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1826
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    iget v2, v0, Lyads/wa4;->v:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    move v7, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1828
    :goto_0
    new-instance v2, Lyads/f23;

    invoke-direct {v2}, Lyads/f23;-><init>()V

    const v3, 0x75647461

    .line 1829
    invoke-virtual {v1, v3}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v3

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    const v8, 0x6d657461

    const/16 v13, 0x8

    if-eqz v3, :cond_31

    .line 1830
    sget-object v16, Lyads/sl;->a:[B

    .line 1831
    iget-object v3, v3, Lyads/kl;->b:Lyads/os4;

    .line 1832
    invoke-virtual {v3, v13}, Lyads/os4;->e(I)V

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_1
    const/16 v18, 0xc

    .line 1833
    iget v12, v3, Lyads/os4;->c:I

    iget v10, v3, Lyads/os4;->b:I

    sub-int/2addr v12, v10

    if-lt v12, v13, :cond_2f

    .line 1834
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v12

    move/from16 v20, v13

    .line 1835
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v13

    if-ne v13, v8, :cond_28

    .line 1836
    invoke-virtual {v3, v10}, Lyads/os4;->e(I)V

    add-int v13, v10, v12

    .line 1837
    iget v14, v3, Lyads/os4;->b:I

    add-int/lit8 v14, v14, 0x8

    .line 1838
    invoke-virtual {v3, v14}, Lyads/os4;->e(I)V

    .line 1839
    iget v14, v3, Lyads/os4;->b:I

    add-int/lit8 v8, v14, 0x4

    .line 1840
    invoke-virtual {v3, v8}, Lyads/os4;->e(I)V

    .line 1841
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v11

    if-eq v11, v6, :cond_1

    move v14, v8

    .line 1842
    :cond_1
    invoke-virtual {v3, v14}, Lyads/os4;->e(I)V

    .line 1843
    :goto_2
    iget v8, v3, Lyads/os4;->b:I

    if-ge v8, v13, :cond_27

    .line 1844
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v11

    .line 1845
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v14

    if-ne v14, v5, :cond_26

    .line 1846
    invoke-virtual {v3, v8}, Lyads/os4;->e(I)V

    add-int/2addr v8, v11

    .line 1847
    iget v11, v3, Lyads/os4;->b:I

    add-int/lit8 v11, v11, 0x8

    .line 1848
    invoke-virtual {v3, v11}, Lyads/os4;->e(I)V

    .line 1849
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    :goto_3
    iget v13, v3, Lyads/os4;->b:I

    if-ge v13, v8, :cond_24

    .line 1851
    const-string v14, "Skipped unknown metadata entry: "

    .line 1852
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v23

    add-int v13, v23, v13

    .line 1853
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v5

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v15, 0xa9

    const-string v4, "TCON"

    move/from16 v25, v7

    const-string v7, "MetadataUtil"

    if-eq v6, v15, :cond_2

    const/16 v15, 0xfd

    if-ne v6, v15, :cond_3

    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_3
    const v6, 0x676e7265

    if-ne v5, v6, :cond_7

    .line 1854
    :try_start_0
    iget v5, v3, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0x4

    .line 1855
    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    .line 1856
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v5

    const v6, 0x64617461

    if-ne v5, v6, :cond_4

    .line 1857
    iget v5, v3, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    .line 1858
    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v5

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 1859
    :cond_4
    const-string v5, "Failed to parse uint8 attribute value"

    invoke-static {v7, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    :goto_4
    if-lez v5, :cond_5

    .line 1860
    sget-object v6, Lyads/l84;->a:[Ljava/lang/String;

    const/16 v14, 0xc0

    if-gt v5, v14, :cond_5

    add-int/lit8 v5, v5, -0x1

    .line 1861
    aget-object v5, v6, v5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    .line 1862
    new-instance v6, Lyads/gw5;

    const/4 v15, 0x0

    invoke-direct {v6, v4, v15, v5}, Lyads/gw5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_6
    const/4 v15, 0x0

    .line 1863
    const-string v4, "Failed to parse standard genre code"

    invoke-static {v7, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v15

    goto/16 :goto_a

    :cond_7
    const/4 v15, 0x0

    const v4, 0x6469736b

    if-ne v5, v4, :cond_8

    .line 1864
    const-string v4, "TPOS"

    invoke-static {v5, v4, v3}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_8
    const v4, 0x74726b6e

    if-ne v5, v4, :cond_9

    .line 1865
    const-string v4, "TRCK"

    invoke-static {v5, v4, v3}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_9
    const v4, 0x746d706f

    if-ne v5, v4, :cond_a

    .line 1866
    const-string v4, "TBPM"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v4, v3, v7, v6}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;ZZ)Lyads/nb3;

    move-result-object v4

    :goto_6
    move-object v6, v4

    goto/16 :goto_a

    :cond_a
    const/4 v4, 0x1

    const v6, 0x6370696c

    if-ne v5, v6, :cond_b

    .line 1867
    const-string v6, "TCMP"

    invoke-static {v5, v6, v3, v4, v4}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;ZZ)Lyads/nb3;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_a

    :cond_b
    const v4, 0x636f7672

    if-ne v5, v4, :cond_c

    .line 1868
    invoke-static {v3}, Lyads/l84;->a(Lyads/os4;)Lyads/qf;

    move-result-object v6

    goto/16 :goto_a

    :cond_c
    const v4, 0x61415254

    if-ne v5, v4, :cond_d

    .line 1869
    const-string v4, "TPE2"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_d
    const v4, 0x736f6e6d

    if-ne v5, v4, :cond_e

    .line 1870
    const-string v4, "TSOT"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_e
    const v4, 0x736f616c

    if-ne v5, v4, :cond_f

    .line 1871
    const-string v4, "TSO2"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_f
    const v4, 0x736f6172

    if-ne v5, v4, :cond_10

    .line 1872
    const-string v4, "TSOA"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_10
    const v4, 0x736f6161

    if-ne v5, v4, :cond_11

    .line 1873
    const-string v4, "TSOP"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_11
    const v4, 0x736f636f

    if-ne v5, v4, :cond_12

    .line 1874
    const-string v4, "TSOC"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto :goto_6

    :cond_12
    const v4, 0x72746e67

    if-ne v5, v4, :cond_13

    .line 1875
    const-string v4, "ITUNESADVISORY"

    const/4 v6, 0x0

    invoke-static {v5, v4, v3, v6, v6}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;ZZ)Lyads/nb3;

    move-result-object v4

    goto :goto_6

    :cond_13
    const/4 v6, 0x0

    const v4, 0x70676170

    if-ne v5, v4, :cond_14

    .line 1876
    const-string v4, "ITUNESGAPLESS"

    const/4 v7, 0x1

    invoke-static {v5, v4, v3, v6, v7}, Lyads/l84;->a(ILjava/lang/String;Lyads/os4;ZZ)Lyads/nb3;

    move-result-object v4

    goto :goto_6

    :cond_14
    const v4, 0x736f736e

    if-ne v5, v4, :cond_15

    .line 1877
    const-string v4, "TVSHOWSORT"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_15
    const v4, 0x74767368

    if-ne v5, v4, :cond_16

    .line 1878
    const-string v4, "TVSHOW"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_16
    const v4, 0x2d2d2d2d

    if-ne v5, v4, :cond_20

    .line 1879
    invoke-static {v13, v3}, Lyads/l84;->b(ILyads/os4;)Lyads/bp3;

    move-result-object v6

    goto/16 :goto_a

    :goto_7
    const v6, 0xffffff

    and-int/2addr v6, v5

    const v15, 0x636d74

    if-ne v6, v15, :cond_17

    .line 1880
    invoke-static {v5, v3}, Lyads/l84;->a(ILyads/os4;)Lyads/b40;

    move-result-object v6

    goto/16 :goto_a

    :cond_17
    const v15, 0x6e616d

    if-eq v6, v15, :cond_22

    const v15, 0x74726b

    if-ne v6, v15, :cond_18

    goto/16 :goto_9

    :cond_18
    const v15, 0x636f6d

    if-eq v6, v15, :cond_21

    const v15, 0x777274

    if-ne v6, v15, :cond_19

    goto/16 :goto_8

    :cond_19
    const v15, 0x646179

    if-ne v6, v15, :cond_1a

    .line 1881
    const-string v4, "TDRC"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1a
    const v15, 0x415254

    if-ne v6, v15, :cond_1b

    .line 1882
    const-string v4, "TPE1"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1b
    const v15, 0x746f6f

    if-ne v6, v15, :cond_1c

    .line 1883
    const-string v4, "TSSE"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1c
    const v15, 0x616c62

    if-ne v6, v15, :cond_1d

    .line 1884
    const-string v4, "TALB"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1d
    const v15, 0x6c7972

    if-ne v6, v15, :cond_1e

    .line 1885
    const-string v4, "USLT"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1e
    const v15, 0x67656e

    if-ne v6, v15, :cond_1f

    .line 1886
    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    :cond_1f
    const v4, 0x677270

    if-ne v6, v4, :cond_20

    .line 1887
    const-string v4, "TIT1"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    .line 1888
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lyads/ll;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {v3, v13}, Lyads/os4;->e(I)V

    const/4 v6, 0x0

    goto :goto_b

    .line 1890
    :cond_21
    :goto_8
    :try_start_1
    const-string v4, "TCOM"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4

    goto/16 :goto_6

    .line 1891
    :cond_22
    :goto_9
    const-string v4, "TIT2"

    invoke-static {v5, v4, v3}, Lyads/l84;->b(ILjava/lang/String;Lyads/os4;)Lyads/gw5;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    .line 1892
    :goto_a
    invoke-virtual {v3, v13}, Lyads/os4;->e(I)V

    :goto_b
    if-eqz v6, :cond_23

    .line 1893
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    move/from16 v7, v25

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    goto/16 :goto_3

    .line 1894
    :goto_c
    invoke-virtual {v3, v13}, Lyads/os4;->e(I)V

    .line 1895
    throw v0

    :cond_24
    move/from16 v25, v7

    .line 1896
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_d

    :cond_25
    new-instance v14, Lyads/h84;

    invoke-direct {v14, v11}, Lyads/h84;-><init>(Ljava/util/List;)V

    goto/16 :goto_11

    :cond_26
    move/from16 v25, v7

    add-int/2addr v8, v11

    .line 1897
    invoke-virtual {v3, v8}, Lyads/os4;->e(I)V

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    goto/16 :goto_2

    :cond_27
    move/from16 v25, v7

    :goto_d
    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_28
    move/from16 v25, v7

    const v4, 0x736d7461

    if-ne v13, v4, :cond_2e

    .line 1898
    invoke-virtual {v3, v10}, Lyads/os4;->e(I)V

    add-int v4, v10, v12

    .line 1899
    iget v5, v3, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0xc

    .line 1900
    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    .line 1901
    :goto_e
    iget v5, v3, Lyads/os4;->b:I

    if-ge v5, v4, :cond_2d

    .line 1902
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v6

    .line 1903
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v7

    const v8, 0x73617574

    if-ne v7, v8, :cond_2c

    const/16 v4, 0xe

    if-ge v6, v4, :cond_29

    goto :goto_10

    .line 1904
    :cond_29
    iget v4, v3, Lyads/os4;->b:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    .line 1905
    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v4

    move/from16 v5, v18

    if-eq v4, v5, :cond_2a

    const/16 v6, 0xd

    if-eq v4, v6, :cond_2a

    goto :goto_10

    :cond_2a
    if-ne v4, v5, :cond_2b

    const/high16 v4, 0x43700000    # 240.0f

    goto :goto_f

    :cond_2b
    const/high16 v4, 0x42f00000    # 120.0f

    .line 1906
    :goto_f
    iget v5, v3, Lyads/os4;->b:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    .line 1907
    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v5

    .line 1908
    new-instance v6, Lyads/h84;

    new-instance v8, Lyads/eo5;

    invoke-direct {v8, v5, v4}, Lyads/eo5;-><init>(IF)V

    new-array v4, v7, [Lyads/g84;

    const/16 v19, 0x0

    aput-object v8, v4, v19

    invoke-direct {v6, v4}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object/from16 v17, v6

    goto :goto_11

    :cond_2c
    add-int/2addr v5, v6

    .line 1909
    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    const/16 v18, 0xc

    goto :goto_e

    :cond_2d
    :goto_10
    const/16 v17, 0x0

    :cond_2e
    :goto_11
    add-int/2addr v10, v12

    .line 1910
    invoke-virtual {v3, v10}, Lyads/os4;->e(I)V

    move/from16 v13, v20

    move/from16 v7, v25

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    const v8, 0x6d657461

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_2f
    move/from16 v25, v7

    move/from16 v20, v13

    move-object/from16 v15, v17

    .line 1911
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 1912
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lyads/h84;

    .line 1913
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lyads/h84;

    if-eqz v4, :cond_30

    .line 1914
    invoke-virtual {v2, v4}, Lyads/f23;->a(Lyads/h84;)V

    :cond_30
    move-object v10, v3

    move-object v11, v4

    const v3, 0x6d657461

    goto :goto_12

    :cond_31
    move/from16 v25, v7

    move/from16 v20, v13

    move v3, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1915
    :goto_12
    invoke-virtual {v1, v3}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1916
    sget-object v4, Lyads/sl;->a:[B

    const v4, 0x68646c72    # 4.3148E24f

    .line 1917
    invoke-virtual {v3, v4}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v4

    const v5, 0x6b657973

    .line 1918
    invoke-virtual {v3, v5}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v5

    const v6, 0x696c7374

    .line 1919
    invoke-virtual {v3, v6}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v3

    if-eqz v4, :cond_3a

    if-eqz v5, :cond_3a

    if-eqz v3, :cond_3a

    .line 1920
    iget-object v4, v4, Lyads/kl;->b:Lyads/os4;

    const/16 v6, 0x10

    .line 1921
    invoke-virtual {v4, v6}, Lyads/os4;->e(I)V

    .line 1922
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v4

    const v6, 0x6d647461

    if-eq v4, v6, :cond_32

    goto/16 :goto_19

    .line 1923
    :cond_32
    iget-object v4, v5, Lyads/kl;->b:Lyads/os4;

    const/16 v5, 0xc

    .line 1924
    invoke-virtual {v4, v5}, Lyads/os4;->e(I)V

    .line 1925
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v5

    .line 1926
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v5, :cond_33

    .line 1927
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v8

    .line 1928
    iget v12, v4, Lyads/os4;->b:I

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v4, v12}, Lyads/os4;->e(I)V

    add-int/lit8 v8, v8, -0x8

    .line 1929
    sget-object v12, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8, v12}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 1930
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 1931
    :cond_33
    iget-object v3, v3, Lyads/kl;->b:Lyads/os4;

    move/from16 v4, v20

    .line 1932
    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    .line 1933
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    :goto_14
    iget v8, v3, Lyads/os4;->c:I

    iget v12, v3, Lyads/os4;->b:I

    sub-int/2addr v8, v12

    if-le v8, v4, :cond_38

    .line 1935
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v8

    .line 1936
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v13

    const/16 v22, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_36

    if-ge v13, v5, :cond_36

    .line 1937
    aget-object v13, v6, v13

    add-int v14, v12, v8

    .line 1938
    :goto_15
    iget v15, v3, Lyads/os4;->b:I

    if-ge v15, v14, :cond_35

    .line 1939
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v17

    .line 1940
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v4

    const v1, 0x64617461

    if-ne v4, v1, :cond_34

    .line 1941
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v4

    .line 1942
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v14

    add-int/lit8 v15, v17, -0x10

    .line 1943
    new-array v1, v15, [B

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 1944
    invoke-virtual {v3, v1, v2, v15}, Lyads/os4;->a([BII)V

    .line 1945
    new-instance v2, Lyads/ux3;

    invoke-direct {v2, v14, v4, v13, v1}, Lyads/ux3;-><init>(IILjava/lang/String;[B)V

    goto :goto_16

    :cond_34
    move-object/from16 v18, v2

    add-int v15, v15, v17

    .line 1946
    invoke-virtual {v3, v15}, Lyads/os4;->e(I)V

    move-object/from16 v1, p1

    const/16 v4, 0x8

    goto :goto_15

    :cond_35
    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_37

    .line 1947
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    move-object/from16 v18, v2

    .line 1948
    const-string v1, "Skipped metadata with unknown key index: "

    const-string v2, "AtomParsers"

    invoke-static {v13, v1, v2}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_17
    add-int/2addr v12, v8

    .line 1949
    invoke-virtual {v3, v12}, Lyads/os4;->e(I)V

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    const/16 v4, 0x8

    goto :goto_14

    :cond_38
    move-object/from16 v18, v2

    .line 1950
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_18

    :cond_39
    new-instance v1, Lyads/h84;

    invoke-direct {v1, v7}, Lyads/h84;-><init>(Ljava/util/List;)V

    move-object v12, v1

    goto :goto_1a

    :goto_18
    const/4 v12, 0x0

    goto :goto_1a

    :cond_3a
    :goto_19
    move-object/from16 v18, v2

    goto :goto_18

    .line 1951
    :goto_1a
    new-instance v8, Lm2;

    const/16 v1, 0xa

    invoke-direct {v8, v1}, Lm2;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v7, v25

    .line 1952
    invoke-static/range {v1 .. v8}, Lyads/sl;->a(Lyads/jl;Lyads/f23;JLyads/ql2;ZZLyads/v13;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1953
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    :goto_1b
    if-ge v6, v3, :cond_4c

    .line 1954
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v4, v17

    check-cast v4, Lyads/l06;

    .line 1955
    iget v5, v4, Lyads/l06;->b:I

    if-nez v5, :cond_3b

    move-object/from16 p1, v1

    move-object/from16 v26, v2

    move/from16 v23, v3

    const/4 v2, -0x1

    goto/16 :goto_25

    .line 1956
    :cond_3b
    iget-object v5, v4, Lyads/l06;->a:Lyads/c06;

    const-wide/16 v17, 0x0

    .line 1957
    iget-wide v14, v5, Lyads/c06;->e:J

    cmp-long v23, v14, v20

    if-eqz v23, :cond_3c

    goto :goto_1c

    :cond_3c
    iget-wide v14, v4, Lyads/l06;->h:J

    .line 1958
    :goto_1c
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 p1, v1

    .line 1959
    new-instance v1, Lyads/va4;

    move/from16 v23, v3

    iget-object v3, v0, Lyads/wa4;->q:Lyads/zs2;

    move-wide/from16 v24, v7

    iget v7, v5, Lyads/c06;->b:I

    .line 1960
    invoke-interface {v3, v6, v7}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v3

    invoke-direct {v1, v5, v4, v3}, Lyads/va4;-><init>(Lyads/c06;Lyads/l06;Lyads/k06;)V

    .line 1961
    iget-object v3, v5, Lyads/c06;->f:Lyads/vz2;

    iget-object v3, v3, Lyads/vz2;->m:Ljava/lang/String;

    const-string v7, "audio/true-hd"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1962
    iget v7, v4, Lyads/l06;->e:I

    if-eqz v3, :cond_3d

    mul-int/lit8 v7, v7, 0x10

    goto :goto_1d

    :cond_3d
    add-int/lit8 v7, v7, 0x1e

    .line 1963
    :goto_1d
    iget-object v3, v5, Lyads/c06;->f:Lyads/vz2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1964
    new-instance v8, Lyads/uz2;

    invoke-direct {v8, v3}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 1965
    iput v7, v8, Lyads/uz2;->l:I

    .line 1966
    iget v3, v5, Lyads/c06;->b:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3e

    cmp-long v17, v14, v17

    if-lez v17, :cond_3e

    iget v4, v4, Lyads/l06;->b:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_3f

    int-to-float v4, v4

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    div-float/2addr v4, v14

    .line 1967
    iput v4, v8, Lyads/uz2;->r:F

    goto :goto_1e

    :cond_3e
    const/4 v7, 0x1

    :cond_3f
    :goto_1e
    if-ne v3, v7, :cond_40

    .line 1968
    iget v4, v2, Lyads/f23;->a:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_40

    iget v14, v2, Lyads/f23;->b:I

    if-eq v14, v7, :cond_40

    .line 1969
    iput v4, v8, Lyads/uz2;->A:I

    .line 1970
    iput v14, v8, Lyads/uz2;->B:I

    .line 1971
    :cond_40
    iget-object v4, v0, Lyads/wa4;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v4, 0x0

    goto :goto_1f

    :cond_41
    new-instance v4, Lyads/h84;

    iget-object v7, v0, Lyads/wa4;->g:Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Lyads/h84;-><init>(Ljava/util/List;)V

    :goto_1f
    filled-new-array {v10, v4}, [Lyads/h84;

    move-result-object v4

    .line 1972
    new-instance v7, Lyads/h84;

    const/4 v14, 0x0

    new-array v15, v14, [Lyads/g84;

    invoke-direct {v7, v15}, Lyads/h84;-><init>([Lyads/g84;)V

    const/4 v14, 0x1

    if-ne v3, v14, :cond_43

    if-eqz v11, :cond_42

    move-object/from16 v26, v2

    move-object v7, v11

    goto :goto_21

    :cond_42
    move-object/from16 v26, v2

    goto :goto_21

    :cond_43
    const/4 v14, 0x2

    if-ne v3, v14, :cond_42

    if-eqz v12, :cond_42

    const/4 v3, 0x0

    .line 1973
    :goto_20
    iget-object v14, v12, Lyads/h84;->b:[Lyads/g84;

    array-length v15, v14

    if-ge v3, v15, :cond_42

    .line 1974
    aget-object v14, v14, v3

    .line 1975
    instance-of v15, v14, Lyads/ux3;

    if-eqz v15, :cond_44

    .line 1976
    check-cast v14, Lyads/ux3;

    .line 1977
    iget-object v15, v14, Lyads/ux3;->b:Ljava/lang/String;

    move-object/from16 v26, v2

    const-string v2, "com.android.capture.fps"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1978
    new-instance v7, Lyads/h84;

    const/4 v2, 0x1

    new-array v3, v2, [Lyads/g84;

    const/16 v19, 0x0

    aput-object v14, v3, v19

    invoke-direct {v7, v3}, Lyads/h84;-><init>([Lyads/g84;)V

    goto :goto_21

    :cond_44
    move-object/from16 v26, v2

    :cond_45
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v26

    goto :goto_20

    :goto_21
    const/4 v2, 0x0

    :goto_22
    const/4 v14, 0x2

    if-ge v2, v14, :cond_48

    .line 1979
    aget-object v3, v4, v2

    if-nez v3, :cond_46

    goto :goto_23

    .line 1980
    :cond_46
    iget-object v3, v3, Lyads/h84;->b:[Lyads/g84;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1981
    array-length v14, v3

    if-nez v14, :cond_47

    goto :goto_23

    .line 1982
    :cond_47
    new-instance v14, Lyads/h84;

    iget-object v7, v7, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v7, v3}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lyads/g84;

    invoke-direct {v14, v3}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object v7, v14

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1983
    :cond_48
    iget-object v2, v7, Lyads/h84;->b:[Lyads/g84;

    array-length v2, v2

    if-lez v2, :cond_49

    .line 1984
    iput-object v7, v8, Lyads/uz2;->i:Lyads/h84;

    .line 1985
    :cond_49
    iget-object v2, v1, Lyads/va4;->c:Lyads/k06;

    .line 1986
    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v8}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 1987
    invoke-interface {v2, v3}, Lyads/k06;->a(Lyads/vz2;)V

    .line 1988
    iget v2, v5, Lyads/c06;->b:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_4a

    const/4 v2, -0x1

    if-ne v13, v2, :cond_4b

    .line 1989
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_24

    :cond_4a
    const/4 v2, -0x1

    .line 1990
    :cond_4b
    :goto_24
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v7, v24

    :goto_25
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v23

    move-object/from16 v2, v26

    goto/16 :goto_1b

    :cond_4c
    const/4 v2, -0x1

    const-wide/16 v17, 0x0

    .line 1991
    iput v13, v0, Lyads/wa4;->t:I

    .line 1992
    iput-wide v7, v0, Lyads/wa4;->u:J

    const/4 v6, 0x0

    .line 1993
    new-array v1, v6, [Lyads/va4;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyads/va4;

    iput-object v1, v0, Lyads/wa4;->r:[Lyads/va4;

    .line 1994
    array-length v3, v1

    new-array v3, v3, [[J

    .line 1995
    array-length v4, v1

    new-array v4, v4, [I

    .line 1996
    array-length v5, v1

    new-array v5, v5, [J

    .line 1997
    array-length v6, v1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    .line 1998
    :goto_26
    array-length v8, v1

    if-ge v7, v8, :cond_4d

    .line 1999
    aget-object v8, v1, v7

    iget-object v8, v8, Lyads/va4;->b:Lyads/l06;

    iget v8, v8, Lyads/l06;->b:I

    new-array v8, v8, [J

    aput-object v8, v3, v7

    .line 2000
    aget-object v8, v1, v7

    iget-object v8, v8, Lyads/va4;->b:Lyads/l06;

    iget-object v8, v8, Lyads/l06;->f:[J

    const/16 v19, 0x0

    aget-wide v9, v8, v19

    aput-wide v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_4d
    const/16 v19, 0x0

    move-wide/from16 v14, v17

    move/from16 v7, v19

    .line 2001
    :goto_27
    array-length v8, v1

    if-ge v7, v8, :cond_51

    const-wide v8, 0x7fffffffffffffffL

    move-wide v10, v8

    move/from16 v8, v19

    move v9, v2

    .line 2002
    :goto_28
    array-length v12, v1

    if-ge v8, v12, :cond_4f

    .line 2003
    aget-boolean v12, v6, v8

    if-nez v12, :cond_4e

    aget-wide v12, v5, v8

    cmp-long v16, v12, v10

    if-gtz v16, :cond_4e

    move v9, v8

    move-wide v10, v12

    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 2004
    :cond_4f
    aget v8, v4, v9

    .line 2005
    aget-object v10, v3, v9

    aput-wide v14, v10, v8

    .line 2006
    aget-object v11, v1, v9

    iget-object v11, v11, Lyads/va4;->b:Lyads/l06;

    iget-object v12, v11, Lyads/l06;->d:[I

    aget v12, v12, v8

    int-to-long v12, v12

    add-long/2addr v14, v12

    const/16 v22, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 2007
    aput v8, v4, v9

    .line 2008
    array-length v10, v10

    if-ge v8, v10, :cond_50

    .line 2009
    iget-object v10, v11, Lyads/l06;->f:[J

    aget-wide v11, v10, v8

    aput-wide v11, v5, v9

    goto :goto_27

    .line 2010
    :cond_50
    aput-boolean v22, v6, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 2011
    :cond_51
    iput-object v3, v0, Lyads/wa4;->s:[[J

    .line 2012
    iget-object v1, v0, Lyads/wa4;->q:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    .line 2013
    iget-object v1, v0, Lyads/wa4;->q:Lyads/zs2;

    invoke-interface {v1, v0}, Lyads/zs2;->a(Lyads/sh5;)V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lyads/wa4;->q:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 0

    const/4 p0, 0x0

    .line 1800
    invoke-static {p1, p0, p0}, Lyads/fo5;->a(Lyads/xs2;ZZ)Z

    move-result p0

    return p0
.end method

.method public final b(J)Lyads/qh5;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lyads/wa4;->r:[Lyads/va4;

    array-length v4, v3

    if-nez v4, :cond_0

    new-instance v0, Lyads/qh5;

    sget-object v1, Lyads/uh5;->c:Lyads/uh5;

    invoke-direct {v0, v1, v1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v0

    :cond_0
    iget v4, v0, Lyads/wa4;->t:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    if-eq v4, v8, :cond_6

    aget-object v3, v3, v4

    iget-object v3, v3, Lyads/va4;->b:Lyads/l06;

    iget-object v4, v3, Lyads/l06;->f:[J

    invoke-static {v4, v1, v2, v7}, Lyads/u56;->b([JJZ)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_2

    iget-object v11, v3, Lyads/l06;->g:[I

    aget v11, v11, v4

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_1
    if-ne v4, v8, :cond_3

    invoke-virtual {v3, v1, v2}, Lyads/l06;->a(J)I

    move-result v4

    :cond_3
    if-ne v4, v8, :cond_4

    new-instance v0, Lyads/qh5;

    sget-object v1, Lyads/uh5;->c:Lyads/uh5;

    invoke-direct {v0, v1, v1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v0

    :cond_4
    iget-object v11, v3, Lyads/l06;->f:[J

    aget-wide v12, v11, v4

    iget-object v11, v3, Lyads/l06;->c:[J

    aget-wide v14, v11, v4

    cmp-long v11, v12, v1

    if-gez v11, :cond_5

    iget v11, v3, Lyads/l06;->b:I

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_5

    invoke-virtual {v3, v1, v2}, Lyads/l06;->a(J)I

    move-result v1

    if-eq v1, v8, :cond_5

    if-eq v1, v4, :cond_5

    iget-object v2, v3, Lyads/l06;->f:[J

    aget-wide v9, v2, v1

    iget-object v2, v3, Lyads/l06;->c:[J

    aget-wide v1, v2, v1

    goto :goto_2

    :cond_5
    move-wide v1, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move-wide v3, v1

    move-wide v1, v12

    goto :goto_3

    :cond_6
    const-wide v14, 0x7fffffffffffffffL

    move-wide v3, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    move v11, v7

    :goto_4
    iget-object v12, v0, Lyads/wa4;->r:[Lyads/va4;

    array-length v13, v12

    if-ge v11, v13, :cond_11

    iget v13, v0, Lyads/wa4;->t:I

    if-eq v11, v13, :cond_10

    aget-object v12, v12, v11

    iget-object v12, v12, Lyads/va4;->b:Lyads/l06;

    iget-object v13, v12, Lyads/l06;->f:[J

    invoke-static {v13, v1, v2, v7}, Lyads/u56;->b([JJZ)I

    move-result v13

    :goto_5
    if-ltz v13, :cond_8

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v5, v12, Lyads/l06;->g:[I

    aget v5, v5, v13

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_8
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move v13, v8

    :goto_6
    if-ne v13, v8, :cond_9

    invoke-virtual {v12, v1, v2}, Lyads/l06;->a(J)I

    move-result v13

    :cond_9
    if-ne v13, v8, :cond_a

    goto :goto_7

    :cond_a
    iget-object v5, v12, Lyads/l06;->c:[J

    aget-wide v7, v5, v13

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_7
    cmp-long v5, v9, v16

    if-eqz v5, :cond_f

    iget-object v5, v12, Lyads/l06;->f:[J

    const/4 v6, 0x0

    invoke-static {v5, v9, v10, v6}, Lyads/u56;->b([JJZ)I

    move-result v5

    :goto_8
    if-ltz v5, :cond_c

    iget-object v7, v12, Lyads/l06;->g:[I

    aget v7, v7, v5

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    :goto_9
    const/4 v7, -0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_c
    const/4 v5, -0x1

    goto :goto_9

    :goto_a
    if-ne v5, v7, :cond_d

    invoke-virtual {v12, v9, v10}, Lyads/l06;->a(J)I

    move-result v5

    :cond_d
    if-ne v5, v7, :cond_e

    goto :goto_b

    :cond_e
    iget-object v8, v12, Lyads/l06;->c:[J

    aget-wide v12, v8, v5

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    const/4 v7, -0x1

    goto :goto_b

    :cond_10
    move v6, v7

    move v7, v8

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    move v7, v6

    goto :goto_4

    :cond_11
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lyads/uh5;

    invoke-direct {v0, v1, v2, v14, v15}, Lyads/uh5;-><init>(JJ)V

    cmp-long v1, v9, v16

    if-nez v1, :cond_12

    new-instance v1, Lyads/qh5;

    invoke-direct {v1, v0, v0}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v1

    :cond_12
    new-instance v1, Lyads/uh5;

    invoke-direct {v1, v9, v10, v3, v4}, Lyads/uh5;-><init>(JJ)V

    new-instance v2, Lyads/qh5;

    invoke-direct {v2, v0, v1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v2
.end method

.method public final b()Z
    .locals 0

    .line 275
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lyads/wa4;->u:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/jl;

    iget-wide v2, v0, Lyads/jl;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/jl;

    iget v2, v0, Lyads/ll;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lyads/wa4;->a(Lyads/jl;)V

    iget-object v0, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lyads/wa4;->h:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lyads/wa4;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/jl;

    iget-object v1, v1, Lyads/jl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget p1, p0, Lyads/wa4;->h:I

    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lyads/wa4;->h:I

    iput p1, p0, Lyads/wa4;->k:I

    :cond_3
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
