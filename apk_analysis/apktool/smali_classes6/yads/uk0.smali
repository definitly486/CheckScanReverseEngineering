.class public final Lyads/uk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Lyads/o76;

.field public d:Lyads/kx3;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/uk0;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lyads/uk0;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lyads/o76;

    invoke-direct {v0}, Lyads/o76;-><init>()V

    iput-object v0, p0, Lyads/uk0;->c:Lyads/o76;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 2342
    iput v0, p0, Lyads/uk0;->e:I

    .line 2343
    iget-object v1, p0, Lyads/uk0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 2344
    iget-object p0, p0, Lyads/uk0;->c:Lyads/o76;

    .line 2345
    iput v0, p0, Lyads/o76;->b:I

    .line 2346
    iput v0, p0, Lyads/o76;->c:I

    return-void
.end method

.method public final a(Lyads/wk0;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/uk0;->d:Lyads/kx3;

    const/4 v3, 0x0

    if-eqz v2, :cond_72

    :goto_0
    iget-object v2, v0, Lyads/uk0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/tk0;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lyads/wk0;->d:J

    iget-wide v7, v2, Lyads/tk0;->b:J

    cmp-long v2, v5, v7

    if-ltz v2, :cond_0

    iget-object v1, v0, Lyads/uk0;->d:Lyads/kx3;

    iget-object v0, v0, Lyads/uk0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tk0;

    iget v0, v0, Lyads/tk0;->a:I

    iget-object v1, v1, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v1, v0}, Lyads/mx3;->b(I)V

    return v4

    :cond_0
    iget v2, v0, Lyads/uk0;->e:I

    const v5, 0x1c53bb6b

    const v6, 0x1f43b675

    const-wide/16 v9, 0x0

    const/16 v11, 0x8

    const/4 v12, -0x1

    const/4 v13, 0x4

    if-nez v2, :cond_7

    iget-object v2, v0, Lyads/uk0;->c:Lyads/o76;

    invoke-virtual {v2, v1, v4, v3, v13}, Lyads/o76;->a(Lyads/wk0;ZZI)J

    move-result-wide v14

    const-wide/16 v16, -0x2

    cmp-long v2, v14, v16

    if-nez v2, :cond_5

    iput v3, v1, Lyads/wk0;->f:I

    :goto_1
    iget-object v2, v0, Lyads/uk0;->a:[B

    invoke-virtual {v1, v2, v3, v13, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v2, v0, Lyads/uk0;->a:[B

    aget-byte v2, v2, v3

    move v14, v3

    :cond_1
    sget-object v15, Lyads/o76;->d:[J

    if-ge v14, v11, :cond_2

    aget-wide v16, v15, v14

    const-wide/16 v18, -0x1

    int-to-long v7, v2

    and-long v7, v16, v7

    cmp-long v7, v7, v9

    add-int/lit8 v14, v14, 0x1

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_2
    const-wide/16 v18, -0x1

    move v14, v12

    :goto_2
    if-eq v14, v12, :cond_4

    if-gt v14, v13, :cond_4

    iget-object v2, v0, Lyads/uk0;->a:[B

    invoke-static {v2, v14, v3}, Lyads/o76;->a([BIZ)J

    move-result-wide v7

    long-to-int v2, v7

    iget-object v7, v0, Lyads/uk0;->d:Lyads/kx3;

    iget-object v7, v7, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x1549a966

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    const v7, 0x1654ae6b

    if-ne v2, v7, :cond_4

    :cond_3
    invoke-virtual {v1, v14}, Lyads/wk0;->a(I)V

    int-to-long v14, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Lyads/wk0;->a(I)V

    goto :goto_1

    :cond_5
    const-wide/16 v18, -0x1

    :goto_3
    cmp-long v2, v14, v18

    if-nez v2, :cond_6

    return v3

    :cond_6
    long-to-int v2, v14

    iput v2, v0, Lyads/uk0;->f:I

    iput v4, v0, Lyads/uk0;->e:I

    move v2, v4

    goto :goto_4

    :cond_7
    const-wide/16 v18, -0x1

    :goto_4
    const/4 v7, 0x2

    if-ne v2, v4, :cond_8

    iget-object v2, v0, Lyads/uk0;->c:Lyads/o76;

    invoke-virtual {v2, v1, v3, v4, v11}, Lyads/o76;->a(Lyads/wk0;ZZI)J

    move-result-wide v14

    iput-wide v14, v0, Lyads/uk0;->g:J

    iput v7, v0, Lyads/uk0;->e:I

    :cond_8
    iget-object v2, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v8, v0, Lyads/uk0;->f:I

    iget-object v2, v2, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    const/4 v14, 0x3

    sparse-switch v8, :sswitch_data_0

    move v8, v3

    goto :goto_5

    :sswitch_0
    move v8, v2

    goto :goto_5

    :sswitch_1
    move v8, v13

    goto :goto_5

    :sswitch_2
    move v8, v4

    goto :goto_5

    :sswitch_3
    move v8, v14

    goto :goto_5

    :sswitch_4
    move v8, v7

    :goto_5
    if-eqz v8, :cond_71

    const/4 v15, 0x0

    if-eq v8, v4, :cond_62

    const-wide/16 v16, 0x8

    const-string v6, " not supported"

    const-wide/16 v18, 0x1

    move-wide/from16 v20, v9

    const/16 v9, 0xff

    if-eq v8, v7, :cond_41

    const-wide/32 v22, 0x7fffffff

    if-eq v8, v14, :cond_37

    if-eq v8, v13, :cond_10

    if-ne v8, v2, :cond_f

    iget-wide v5, v0, Lyads/uk0;->g:J

    const-wide/16 v7, 0x4

    cmp-long v2, v5, v7

    if-eqz v2, :cond_a

    cmp-long v2, v5, v16

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    iget-wide v0, v0, Lyads/uk0;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyads/xs4;

    invoke-direct {v1, v0, v15, v4, v4}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v1

    :cond_a
    :goto_6
    iget-object v2, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v7, v0, Lyads/uk0;->f:I

    long-to-int v5, v5

    iget-object v6, v0, Lyads/uk0;->a:[B

    invoke-virtual {v1, v6, v3, v5, v3}, Lyads/wk0;->a([BIIZ)Z

    move v1, v3

    move-wide/from16 v14, v20

    :goto_7
    if-ge v1, v5, :cond_b

    shl-long/2addr v14, v11

    iget-object v6, v0, Lyads/uk0;->a:[B

    aget-byte v6, v6, v1

    and-int/2addr v6, v9

    int-to-long v9, v6

    or-long/2addr v14, v9

    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0xff

    goto :goto_7

    :cond_b
    if-ne v5, v13, :cond_c

    long-to-int v1, v14

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v5, v1

    goto :goto_8

    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    :goto_8
    iget-object v1, v2, Lyads/kx3;->a:Lyads/mx3;

    const/16 v2, 0xb5

    if-eq v7, v2, :cond_e

    const/16 v2, 0x4489

    if-eq v7, v2, :cond_d

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->u:F

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->t:F

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->s:F

    goto :goto_9

    :pswitch_3
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->M:F

    goto :goto_9

    :pswitch_4
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->L:F

    goto :goto_9

    :pswitch_5
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->K:F

    goto :goto_9

    :pswitch_6
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->J:F

    goto :goto_9

    :pswitch_7
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->I:F

    goto :goto_9

    :pswitch_8
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->H:F

    goto :goto_9

    :pswitch_9
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->G:F

    goto :goto_9

    :pswitch_a
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->F:F

    goto :goto_9

    :pswitch_b
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->E:F

    goto :goto_9

    :pswitch_c
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-float v2, v5

    iput v2, v1, Lyads/lx3;->D:F

    goto :goto_9

    :cond_d
    double-to-long v5, v5

    iput-wide v5, v1, Lyads/mx3;->s:J

    goto :goto_9

    :cond_e
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    double-to-int v2, v5

    iput v2, v1, Lyads/lx3;->Q:I

    :goto_9
    iput v3, v0, Lyads/uk0;->e:I

    return v4

    :cond_f
    const-string v0, "Invalid element type "

    invoke-static {v8, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3

    :cond_10
    iget-object v2, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v6, v0, Lyads/uk0;->f:I

    iget-wide v8, v0, Lyads/uk0;->g:J

    long-to-int v8, v8

    iget-object v2, v2, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xa1

    const/16 v10, 0xa3

    if-eq v6, v9, :cond_1c

    if-eq v6, v10, :cond_1c

    const/16 v5, 0xa5

    if-eq v6, v5, :cond_19

    const/16 v5, 0x41ed

    if-eq v6, v5, :cond_16

    const/16 v5, 0x4255

    if-eq v6, v5, :cond_15

    const/16 v5, 0x47e2

    if-eq v6, v5, :cond_14

    const/16 v5, 0x53ab

    if-eq v6, v5, :cond_13

    const/16 v5, 0x63a2

    if-eq v6, v5, :cond_12

    const/16 v5, 0x7672

    if-ne v6, v5, :cond_11

    invoke-virtual {v2, v6}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    new-array v5, v8, [B

    iput-object v5, v2, Lyads/lx3;->v:[B

    invoke-virtual {v1, v5, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    :goto_a
    move v7, v4

    goto/16 :goto_1d

    :cond_11
    const-string v0, "Unexpected id: "

    invoke-static {v6, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3

    :cond_12
    invoke-virtual {v2, v6}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    new-array v5, v8, [B

    iput-object v5, v2, Lyads/lx3;->k:[B

    invoke-virtual {v1, v5, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    goto :goto_a

    :cond_13
    iget-object v5, v2, Lyads/mx3;->i:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v5, v2, Lyads/mx3;->i:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    rsub-int/lit8 v6, v8, 0x4

    invoke-virtual {v1, v5, v6, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    iget-object v1, v2, Lyads/mx3;->i:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, v2, Lyads/mx3;->i:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->l()J

    move-result-wide v5

    long-to-int v1, v5

    iput v1, v2, Lyads/mx3;->w:I

    goto :goto_a

    :cond_14
    new-array v5, v8, [B

    invoke-virtual {v1, v5, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    invoke-virtual {v2, v6}, Lyads/mx3;->a(I)V

    iget-object v1, v2, Lyads/mx3;->u:Lyads/lx3;

    new-instance v2, Lyads/j06;

    invoke-direct {v2, v4, v3, v3, v5}, Lyads/j06;-><init>(III[B)V

    iput-object v2, v1, Lyads/lx3;->j:Lyads/j06;

    goto :goto_a

    :cond_15
    invoke-virtual {v2, v6}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    new-array v5, v8, [B

    iput-object v5, v2, Lyads/lx3;->i:[B

    invoke-virtual {v1, v5, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    goto :goto_a

    :cond_16
    invoke-virtual {v2, v6}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    iget v5, v2, Lyads/lx3;->g:I

    const v6, 0x64767643

    if-eq v5, v6, :cond_18

    const v6, 0x64766343

    if-ne v5, v6, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v1, v8}, Lyads/wk0;->a(I)V

    goto :goto_a

    :cond_18
    :goto_b
    new-array v5, v8, [B

    iput-object v5, v2, Lyads/lx3;->N:[B

    invoke-virtual {v1, v5, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    goto :goto_a

    :cond_19
    iget v5, v2, Lyads/mx3;->G:I

    if-eq v5, v7, :cond_1a

    goto :goto_a

    :cond_1a
    iget-object v5, v2, Lyads/mx3;->c:Landroid/util/SparseArray;

    iget v6, v2, Lyads/mx3;->M:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/lx3;

    iget v6, v2, Lyads/mx3;->P:I

    if-ne v6, v13, :cond_1b

    iget-object v5, v5, Lyads/lx3;->b:Ljava/lang/String;

    const-string v6, "V_VP9"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v2, Lyads/mx3;->n:Lyads/os4;

    invoke-virtual {v5, v8}, Lyads/os4;->c(I)V

    iget-object v2, v2, Lyads/mx3;->n:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    invoke-virtual {v1, v2, v3, v8, v3}, Lyads/wk0;->a([BIIZ)Z

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {v1, v8}, Lyads/wk0;->a(I)V

    goto/16 :goto_a

    :cond_1c
    iget v9, v2, Lyads/mx3;->G:I

    if-nez v9, :cond_1d

    iget-object v9, v2, Lyads/mx3;->b:Lyads/o76;

    move v12, v6

    const/16 v24, 0x6

    invoke-virtual {v9, v1, v3, v4, v11}, Lyads/o76;->a(Lyads/wk0;ZZI)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v2, Lyads/mx3;->M:I

    iget-object v5, v2, Lyads/mx3;->b:Lyads/o76;

    iget v5, v5, Lyads/o76;->c:I

    iput v5, v2, Lyads/mx3;->N:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v2, Lyads/mx3;->I:J

    iput v4, v2, Lyads/mx3;->G:I

    iget-object v5, v2, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v5, v3}, Lyads/os4;->c(I)V

    goto :goto_c

    :cond_1d
    move v12, v6

    const/16 v24, 0x6

    :goto_c
    iget-object v5, v2, Lyads/mx3;->c:Landroid/util/SparseArray;

    iget v6, v2, Lyads/mx3;->M:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/lx3;

    if-nez v5, :cond_1e

    iget v5, v2, Lyads/mx3;->N:I

    sub-int/2addr v8, v5

    invoke-virtual {v1, v8}, Lyads/wk0;->a(I)V

    iput v3, v2, Lyads/mx3;->G:I

    goto/16 :goto_a

    :cond_1e
    iget-object v6, v5, Lyads/lx3;->X:Lyads/k06;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, Lyads/mx3;->G:I

    if-ne v6, v4, :cond_33

    invoke-virtual {v2, v1, v14}, Lyads/mx3;->a(Lyads/wk0;I)V

    iget-object v6, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v6, v6, Lyads/os4;->a:[B

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0x6

    shr-int/2addr v6, v4

    if-nez v6, :cond_21

    iput v4, v2, Lyads/mx3;->K:I

    iget-object v6, v2, Lyads/mx3;->L:[I

    if-nez v6, :cond_1f

    new-array v6, v4, [I

    goto :goto_d

    :cond_1f
    array-length v9, v6

    if-lt v9, v4, :cond_20

    goto :goto_d

    :cond_20
    array-length v6, v6

    mul-int/2addr v6, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    :goto_d
    iput-object v6, v2, Lyads/mx3;->L:[I

    iget v9, v2, Lyads/mx3;->N:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v14

    aput v8, v6, v3

    :goto_e
    move/from16 v32, v3

    move/from16 v31, v4

    move/from16 v26, v11

    move/from16 v27, v12

    goto/16 :goto_17

    :cond_21
    invoke-virtual {v2, v1, v13}, Lyads/mx3;->a(Lyads/wk0;I)V

    iget-object v9, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v9, v9, Lyads/os4;->a:[B

    aget-byte v9, v9, v14

    move/from16 v25, v13

    const/16 v13, 0xff

    and-int/2addr v9, v13

    add-int/2addr v9, v4

    iput v9, v2, Lyads/mx3;->K:I

    iget-object v13, v2, Lyads/mx3;->L:[I

    if-nez v13, :cond_22

    new-array v13, v9, [I

    goto :goto_f

    :cond_22
    array-length v10, v13

    if-lt v10, v9, :cond_23

    goto :goto_f

    :cond_23
    array-length v10, v13

    mul-int/2addr v10, v7

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v13, v9, [I

    :goto_f
    iput-object v13, v2, Lyads/mx3;->L:[I

    if-ne v6, v7, :cond_24

    iget v6, v2, Lyads/mx3;->N:I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x4

    iget v6, v2, Lyads/mx3;->K:I

    div-int/2addr v8, v6

    invoke-static {v13, v3, v6, v8}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_e

    :cond_24
    if-ne v6, v4, :cond_27

    move v6, v3

    move v9, v6

    move/from16 v13, v25

    :goto_10
    iget v10, v2, Lyads/mx3;->K:I

    sub-int/2addr v10, v4

    iget-object v14, v2, Lyads/mx3;->L:[I

    if-ge v6, v10, :cond_26

    aput v3, v14, v6

    :goto_11
    add-int/lit8 v10, v13, 0x1

    invoke-virtual {v2, v1, v10}, Lyads/mx3;->a(Lyads/wk0;I)V

    iget-object v14, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v14, v14, Lyads/os4;->a:[B

    aget-byte v13, v14, v13

    const/16 v14, 0xff

    and-int/2addr v13, v14

    iget-object v15, v2, Lyads/mx3;->L:[I

    aget v17, v15, v6

    add-int v17, v17, v13

    aput v17, v15, v6

    if-eq v13, v14, :cond_25

    add-int v9, v9, v17

    add-int/lit8 v6, v6, 0x1

    move v13, v10

    goto :goto_10

    :cond_25
    move v13, v10

    goto :goto_11

    :cond_26
    iget v6, v2, Lyads/mx3;->N:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v13

    sub-int/2addr v8, v9

    aput v8, v14, v10

    goto :goto_e

    :cond_27
    if-ne v6, v14, :cond_32

    move v6, v3

    move v9, v6

    move/from16 v13, v25

    :goto_12
    iget v10, v2, Lyads/mx3;->K:I

    sub-int/2addr v10, v4

    iget-object v14, v2, Lyads/mx3;->L:[I

    if-ge v6, v10, :cond_2f

    aput v3, v14, v6

    add-int/lit8 v10, v13, 0x1

    invoke-virtual {v2, v1, v10}, Lyads/mx3;->a(Lyads/wk0;I)V

    iget-object v14, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v14, v14, Lyads/os4;->a:[B

    aget-byte v14, v14, v13

    if-eqz v14, :cond_2e

    move v14, v3

    :goto_13
    if-ge v14, v11, :cond_2b

    rsub-int/lit8 v17, v14, 0x7

    move/from16 v26, v11

    shl-int v11, v4, v17

    move/from16 v31, v4

    iget-object v4, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v4, v4, Lyads/os4;->a:[B

    aget-byte v4, v4, v13

    and-int/2addr v4, v11

    if-eqz v4, :cond_2a

    add-int v4, v10, v14

    invoke-virtual {v2, v1, v4}, Lyads/mx3;->a(Lyads/wk0;I)V

    move/from16 v32, v3

    iget-object v3, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    aget-byte v3, v3, v13

    const/16 v13, 0xff

    and-int/2addr v3, v13

    not-int v11, v11

    and-int/2addr v3, v11

    move/from16 v17, v8

    int-to-long v7, v3

    :goto_14
    if-ge v10, v4, :cond_28

    shl-long v7, v7, v26

    iget-object v3, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v3, v3, v10

    const/16 v10, 0xff

    and-int/2addr v3, v10

    move/from16 v27, v12

    int-to-long v11, v3

    or-long/2addr v7, v11

    move v10, v13

    move/from16 v12, v27

    goto :goto_14

    :cond_28
    move/from16 v27, v12

    if-lez v6, :cond_29

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    shl-long v10, v18, v14

    sub-long v10, v10, v18

    sub-long/2addr v7, v10

    :cond_29
    move v13, v4

    goto :goto_15

    :cond_2a
    move/from16 v32, v3

    move/from16 v17, v8

    move/from16 v27, v12

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v26

    move/from16 v4, v31

    const/4 v7, 0x2

    goto :goto_13

    :cond_2b
    move/from16 v32, v3

    move/from16 v31, v4

    move/from16 v17, v8

    move/from16 v26, v11

    move/from16 v27, v12

    move v13, v10

    move-wide/from16 v7, v20

    :goto_15
    const-wide/32 v3, -0x80000000

    cmp-long v3, v7, v3

    if-ltz v3, :cond_2d

    cmp-long v3, v7, v22

    if-gtz v3, :cond_2d

    long-to-int v3, v7

    iget-object v4, v2, Lyads/mx3;->L:[I

    if-nez v6, :cond_2c

    goto :goto_16

    :cond_2c
    add-int/lit8 v7, v6, -0x1

    aget v7, v4, v7

    add-int/2addr v3, v7

    :goto_16
    aput v3, v4, v6

    add-int/2addr v9, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v17

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v4, v31

    move/from16 v3, v32

    const/4 v7, 0x2

    goto/16 :goto_12

    :cond_2d
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v32

    :cond_2e
    move/from16 v32, v3

    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v32

    :cond_2f
    move/from16 v32, v3

    move/from16 v31, v4

    move/from16 v17, v8

    move/from16 v26, v11

    move/from16 v27, v12

    iget v3, v2, Lyads/mx3;->N:I

    sub-int v8, v17, v3

    sub-int/2addr v8, v13

    sub-int/2addr v8, v9

    aput v8, v14, v10

    :goto_17
    iget-object v3, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    aget-byte v4, v3, v32

    shl-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v31

    const/16 v13, 0xff

    and-int/2addr v3, v13

    or-int/2addr v3, v4

    iget-wide v6, v2, Lyads/mx3;->B:J

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lyads/mx3;->a(J)J

    move-result-wide v3

    add-long/2addr v3, v6

    iput-wide v3, v2, Lyads/mx3;->H:J

    iget v3, v5, Lyads/lx3;->d:I

    const/4 v11, 0x2

    move/from16 v12, v27

    if-eq v3, v11, :cond_31

    const/16 v3, 0xa3

    if-ne v12, v3, :cond_30

    iget-object v3, v2, Lyads/mx3;->g:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    aget-byte v3, v3, v11

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_30

    goto :goto_18

    :cond_30
    move/from16 v3, v32

    goto :goto_19

    :cond_31
    :goto_18
    move/from16 v3, v31

    :goto_19
    iput v3, v2, Lyads/mx3;->O:I

    iput v11, v2, Lyads/mx3;->G:I

    move/from16 v3, v32

    iput v3, v2, Lyads/mx3;->J:I

    const/16 v4, 0xa3

    goto :goto_1a

    :cond_32
    const-string v0, "Unexpected lacing value: "

    invoke-static {v6, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3

    :cond_33
    move/from16 v31, v4

    move v4, v10

    :goto_1a
    if-ne v12, v4, :cond_35

    :goto_1b
    iget v4, v2, Lyads/mx3;->J:I

    iget v6, v2, Lyads/mx3;->K:I

    if-ge v4, v6, :cond_34

    iget-object v6, v2, Lyads/mx3;->L:[I

    aget v4, v6, v4

    invoke-virtual {v2, v1, v5, v4, v3}, Lyads/mx3;->a(Lyads/wk0;Lyads/lx3;IZ)I

    move-result v29

    iget-wide v3, v2, Lyads/mx3;->H:J

    iget v6, v2, Lyads/mx3;->J:I

    iget v7, v5, Lyads/lx3;->e:I

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v26, v3, v6

    iget v3, v2, Lyads/mx3;->O:I

    const/16 v30, 0x0

    move-object/from16 v24, v2

    move/from16 v28, v3

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v30}, Lyads/mx3;->a(Lyads/lx3;JIII)V

    iget v3, v2, Lyads/mx3;->J:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lyads/mx3;->J:I

    const/4 v3, 0x0

    goto :goto_1b

    :cond_34
    iput v3, v2, Lyads/mx3;->G:I

    move/from16 v7, v31

    goto :goto_1d

    :cond_35
    :goto_1c
    iget v3, v2, Lyads/mx3;->J:I

    iget v4, v2, Lyads/mx3;->K:I

    if-ge v3, v4, :cond_36

    iget-object v4, v2, Lyads/mx3;->L:[I

    aget v6, v4, v3

    move/from16 v7, v31

    invoke-virtual {v2, v1, v5, v6, v7}, Lyads/mx3;->a(Lyads/wk0;Lyads/lx3;IZ)I

    move-result v6

    aput v6, v4, v3

    iget v3, v2, Lyads/mx3;->J:I

    add-int/2addr v3, v7

    iput v3, v2, Lyads/mx3;->J:I

    goto :goto_1c

    :cond_36
    move/from16 v7, v31

    const/4 v3, 0x0

    :goto_1d
    iput v3, v0, Lyads/uk0;->e:I

    return v7

    :cond_37
    iget-wide v2, v0, Lyads/uk0;->g:J

    cmp-long v4, v2, v22

    if-gtz v4, :cond_40

    iget-object v4, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v5, v0, Lyads/uk0;->f:I

    long-to-int v2, v2

    if-nez v2, :cond_38

    const-string v1, ""

    goto :goto_1f

    :cond_38
    new-array v3, v2, [B

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v2, v7}, Lyads/wk0;->a([BIIZ)Z

    :goto_1e
    if-lez v2, :cond_39

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, v3, v1

    if-nez v1, :cond_39

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_39
    new-instance v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_1f
    iget-object v2, v4, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x86

    if-eq v5, v3, :cond_3f

    const/16 v3, 0x4282

    if-eq v5, v3, :cond_3d

    const/16 v3, 0x536e

    if-eq v5, v3, :cond_3c

    const v3, 0x22b59c

    if-eq v5, v3, :cond_3b

    :cond_3a
    :goto_20
    const/4 v3, 0x0

    goto :goto_21

    :cond_3b
    invoke-virtual {v2, v5}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    iput-object v1, v2, Lyads/lx3;->W:Ljava/lang/String;

    goto :goto_20

    :cond_3c
    invoke-virtual {v2, v5}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    iput-object v1, v2, Lyads/lx3;->a:Ljava/lang/String;

    goto :goto_20

    :cond_3d
    const-string v2, "webm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "matroska"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_20

    :cond_3e
    const-string v0, "DocType "

    invoke-static {v0, v1, v6}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    return v3

    :cond_3f
    const/4 v3, 0x0

    invoke-virtual {v2, v5}, Lyads/mx3;->a(I)V

    iget-object v2, v2, Lyads/mx3;->u:Lyads/lx3;

    iput-object v1, v2, Lyads/lx3;->b:Ljava/lang/String;

    :goto_21
    iput v3, v0, Lyads/uk0;->e:I

    const/4 v7, 0x1

    return v7

    :cond_40
    const/4 v7, 0x1

    iget-wide v0, v0, Lyads/uk0;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String element size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyads/xs4;

    invoke-direct {v1, v0, v15, v7, v7}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v1

    :cond_41
    move/from16 v26, v11

    move/from16 v25, v13

    const/16 v24, 0x6

    iget-wide v3, v0, Lyads/uk0;->g:J

    cmp-long v5, v3, v16

    if-gtz v5, :cond_61

    iget-object v5, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v7, v0, Lyads/uk0;->f:I

    long-to-int v3, v3

    iget-object v4, v0, Lyads/uk0;->a:[B

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v3, v8}, Lyads/wk0;->a([BIIZ)Z

    move-wide/from16 v8, v20

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v3, :cond_42

    shl-long v8, v8, v26

    iget-object v4, v0, Lyads/uk0;->a:[B

    aget-byte v4, v4, v1

    const/16 v13, 0xff

    and-int/2addr v4, v13

    int-to-long v13, v4

    or-long/2addr v8, v13

    add-int/lit8 v1, v1, 0x1

    const/4 v14, 0x3

    goto :goto_22

    :cond_42
    iget-object v1, v5, Lyads/kx3;->a:Lyads/mx3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x5031

    if-eq v7, v3, :cond_5f

    const/16 v3, 0x5032

    if-eq v7, v3, :cond_5d

    const-string v3, " must be in a Cues"

    const-string v4, "Element "

    sparse-switch v7, :sswitch_data_1

    const/4 v3, 0x7

    packed-switch v7, :pswitch_data_2

    :cond_43
    :goto_23
    const/4 v3, 0x0

    goto/16 :goto_29

    :pswitch_d
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->C:I

    goto :goto_23

    :pswitch_e
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->B:I

    goto :goto_23

    :pswitch_f
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    const/4 v7, 0x1

    iput-boolean v7, v1, Lyads/lx3;->x:Z

    long-to-int v4, v8

    if-eq v4, v7, :cond_46

    const/16 v5, 0x9

    if-eq v4, v5, :cond_45

    move/from16 v5, v25

    if-eq v4, v5, :cond_44

    if-eq v4, v2, :cond_44

    move/from16 v2, v24

    if-eq v4, v2, :cond_44

    if-eq v4, v3, :cond_44

    move v7, v12

    goto :goto_24

    :cond_44
    const/4 v7, 0x2

    goto :goto_24

    :cond_45
    const/4 v7, 0x6

    goto :goto_24

    :cond_46
    const/4 v7, 0x1

    :goto_24
    if-eq v7, v12, :cond_43

    iput v7, v1, Lyads/lx3;->y:I

    goto :goto_23

    :pswitch_10
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    long-to-int v2, v8

    const/4 v7, 0x1

    if-eq v2, v7, :cond_49

    const/16 v4, 0x10

    if-eq v2, v4, :cond_48

    const/16 v4, 0x12

    if-eq v2, v4, :cond_47

    const/4 v4, 0x6

    if-eq v2, v4, :cond_49

    if-eq v2, v3, :cond_49

    move v14, v12

    goto :goto_25

    :cond_47
    move v14, v3

    goto :goto_25

    :cond_48
    const/4 v4, 0x6

    move v14, v4

    goto :goto_25

    :cond_49
    const/4 v14, 0x3

    :goto_25
    if-eq v14, v12, :cond_43

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v14, v1, Lyads/lx3;->z:I

    goto :goto_23

    :pswitch_11
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    long-to-int v2, v8

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4b

    const/4 v11, 0x2

    if-eq v2, v11, :cond_4a

    goto :goto_23

    :cond_4a
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v7, v1, Lyads/lx3;->A:I

    goto :goto_23

    :cond_4b
    const/4 v11, 0x2

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v11, v1, Lyads/lx3;->A:I

    goto :goto_23

    :sswitch_5
    iput-wide v8, v1, Lyads/mx3;->r:J

    goto :goto_23

    :sswitch_6
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->e:I

    goto/16 :goto_23

    :sswitch_7
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    long-to-int v2, v8

    if-eqz v2, :cond_4f

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4e

    const/4 v11, 0x2

    if-eq v2, v11, :cond_4d

    const/4 v10, 0x3

    if-eq v2, v10, :cond_4c

    goto/16 :goto_23

    :cond_4c
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v10, v1, Lyads/lx3;->r:I

    goto/16 :goto_23

    :cond_4d
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v11, v1, Lyads/lx3;->r:I

    goto/16 :goto_23

    :cond_4e
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v7, v1, Lyads/lx3;->r:I

    goto/16 :goto_23

    :cond_4f
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    const/4 v3, 0x0

    iput v3, v1, Lyads/lx3;->r:I

    goto/16 :goto_29

    :sswitch_8
    iput-wide v8, v1, Lyads/mx3;->R:J

    goto/16 :goto_23

    :sswitch_9
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->P:I

    goto/16 :goto_23

    :sswitch_a
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput-wide v8, v1, Lyads/lx3;->S:J

    goto/16 :goto_23

    :sswitch_b
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput-wide v8, v1, Lyads/lx3;->R:J

    goto/16 :goto_23

    :sswitch_c
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->f:I

    goto/16 :goto_23

    :sswitch_d
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    cmp-long v2, v8, v18

    if-nez v2, :cond_50

    const/4 v2, 0x1

    goto :goto_26

    :cond_50
    const/4 v2, 0x0

    :goto_26
    iput-boolean v2, v1, Lyads/lx3;->U:Z

    goto/16 :goto_23

    :sswitch_e
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->p:I

    goto/16 :goto_23

    :sswitch_f
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->q:I

    goto/16 :goto_23

    :sswitch_10
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->o:I

    goto/16 :goto_23

    :sswitch_11
    long-to-int v2, v8

    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    if-eqz v2, :cond_54

    const/4 v7, 0x1

    if-eq v2, v7, :cond_53

    const/4 v10, 0x3

    if-eq v2, v10, :cond_52

    const/16 v3, 0xf

    if-eq v2, v3, :cond_51

    goto/16 :goto_23

    :cond_51
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v10, v1, Lyads/lx3;->w:I

    goto/16 :goto_23

    :cond_52
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    iput v7, v1, Lyads/lx3;->w:I

    goto/16 :goto_23

    :cond_53
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    const/4 v11, 0x2

    iput v11, v1, Lyads/lx3;->w:I

    goto/16 :goto_23

    :cond_54
    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    const/4 v3, 0x0

    iput v3, v1, Lyads/lx3;->w:I

    goto/16 :goto_29

    :sswitch_12
    iget-wide v2, v1, Lyads/mx3;->q:J

    add-long/2addr v8, v2

    iput-wide v8, v1, Lyads/mx3;->x:J

    goto/16 :goto_23

    :sswitch_13
    cmp-long v1, v8, v18

    if-nez v1, :cond_55

    goto/16 :goto_23

    :cond_55
    const-string v0, "AESSettingsCipherMode "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v32, 0x0

    return v32

    :sswitch_14
    const/16 v32, 0x0

    const-wide/16 v1, 0x5

    cmp-long v1, v8, v1

    if-nez v1, :cond_56

    :goto_27
    move/from16 v3, v32

    goto/16 :goto_29

    :cond_56
    const-string v0, "ContentEncAlgo "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v32

    :sswitch_15
    const/16 v32, 0x0

    cmp-long v1, v8, v18

    if-nez v1, :cond_57

    goto :goto_27

    :cond_57
    const-string v0, "EBMLReadVersion "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v32

    :sswitch_16
    cmp-long v1, v8, v18

    if-ltz v1, :cond_58

    const-wide/16 v1, 0x2

    cmp-long v1, v8, v1

    if-gtz v1, :cond_58

    goto/16 :goto_23

    :cond_58
    const-string v0, "DocTypeReadVersion "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v32, 0x0

    return v32

    :sswitch_17
    const/16 v32, 0x0

    const-wide/16 v1, 0x3

    cmp-long v1, v8, v1

    if-nez v1, :cond_59

    goto :goto_27

    :cond_59
    const-string v0, "ContentCompAlgo "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v32

    :sswitch_18
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->g:I

    goto/16 :goto_23

    :sswitch_19
    const/4 v2, 0x1

    iput-boolean v2, v1, Lyads/mx3;->Q:Z

    goto/16 :goto_23

    :sswitch_1a
    const/4 v2, 0x1

    iget-boolean v5, v1, Lyads/mx3;->E:Z

    if-nez v5, :cond_43

    iget-object v5, v1, Lyads/mx3;->C:Lyads/vv3;

    if-eqz v5, :cond_5a

    iget-object v5, v1, Lyads/mx3;->D:Lyads/vv3;

    if-eqz v5, :cond_5a

    invoke-virtual {v5, v8, v9}, Lyads/vv3;->a(J)V

    iput-boolean v2, v1, Lyads/mx3;->E:Z

    goto/16 :goto_23

    :cond_5a
    invoke-static {v7, v4, v3}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v32, 0x0

    return v32

    :sswitch_1b
    long-to-int v2, v8

    iput v2, v1, Lyads/mx3;->P:I

    goto/16 :goto_23

    :sswitch_1c
    invoke-virtual {v1, v8, v9}, Lyads/mx3;->a(J)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/mx3;->B:J

    goto/16 :goto_23

    :sswitch_1d
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->c:I

    goto/16 :goto_23

    :sswitch_1e
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->n:I

    goto/16 :goto_23

    :sswitch_1f
    iget-object v2, v1, Lyads/mx3;->C:Lyads/vv3;

    if-eqz v2, :cond_5b

    iget-object v5, v1, Lyads/mx3;->D:Lyads/vv3;

    if-eqz v5, :cond_5b

    invoke-virtual {v1, v8, v9}, Lyads/mx3;->a(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lyads/vv3;->a(J)V

    goto/16 :goto_23

    :cond_5b
    invoke-static {v7, v4, v3}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v32, 0x0

    return v32

    :sswitch_20
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->m:I

    goto/16 :goto_23

    :sswitch_21
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->O:I

    goto/16 :goto_23

    :sswitch_22
    invoke-virtual {v1, v8, v9}, Lyads/mx3;->a(J)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/mx3;->I:J

    goto/16 :goto_23

    :sswitch_23
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    cmp-long v2, v8, v18

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_28

    :cond_5c
    const/4 v2, 0x0

    :goto_28
    iput-boolean v2, v1, Lyads/lx3;->V:Z

    goto/16 :goto_23

    :sswitch_24
    invoke-virtual {v1, v7}, Lyads/mx3;->a(I)V

    iget-object v1, v1, Lyads/mx3;->u:Lyads/lx3;

    long-to-int v2, v8

    iput v2, v1, Lyads/lx3;->d:I

    goto/16 :goto_23

    :cond_5d
    cmp-long v1, v8, v18

    if-nez v1, :cond_5e

    goto/16 :goto_23

    :cond_5e
    const-string v0, "ContentEncodingScope "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    return v3

    :cond_5f
    const/4 v3, 0x0

    cmp-long v1, v8, v20

    if-nez v1, :cond_60

    :goto_29
    iput v3, v0, Lyads/uk0;->e:I

    :goto_2a
    const/16 v31, 0x1

    return v31

    :cond_60
    const-string v0, "ContentEncodingOrder "

    invoke-static {v8, v9, v0, v6}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3

    :cond_61
    iget-wide v0, v0, Lyads/uk0;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid integer size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyads/xs4;

    const/4 v7, 0x1

    invoke-direct {v1, v0, v15, v7, v7}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v1

    :cond_62
    move-wide/from16 v20, v9

    iget-wide v1, v1, Lyads/wk0;->d:J

    iget-wide v3, v0, Lyads/uk0;->g:J

    add-long/2addr v3, v1

    iget-object v7, v0, Lyads/uk0;->b:Ljava/util/ArrayDeque;

    new-instance v8, Lyads/tk0;

    iget v9, v0, Lyads/uk0;->f:I

    invoke-direct {v8, v9, v3, v4}, Lyads/tk0;-><init>(IJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/uk0;->d:Lyads/kx3;

    iget v4, v0, Lyads/uk0;->f:I

    iget-wide v7, v0, Lyads/uk0;->g:J

    iget-object v3, v3, Lyads/kx3;->a:Lyads/mx3;

    iget-object v9, v3, Lyads/mx3;->b0:Lyads/zs2;

    if-eqz v9, :cond_70

    const/16 v10, 0xa0

    if-eq v4, v10, :cond_6f

    const/16 v10, 0xae

    if-eq v4, v10, :cond_6e

    const/16 v10, 0xbb

    if-eq v4, v10, :cond_6d

    const/16 v10, 0x4dbb

    if-eq v4, v10, :cond_6c

    const/16 v10, 0x5035

    if-eq v4, v10, :cond_6b

    const/16 v10, 0x55d0

    if-eq v4, v10, :cond_6a

    const v10, 0x18538067

    if-eq v4, v10, :cond_67

    if-eq v4, v5, :cond_66

    if-eq v4, v6, :cond_64

    :cond_63
    :goto_2b
    const/4 v7, 0x0

    goto/16 :goto_2d

    :cond_64
    iget-boolean v1, v3, Lyads/mx3;->v:Z

    if-nez v1, :cond_63

    iget-boolean v1, v3, Lyads/mx3;->d:Z

    if-eqz v1, :cond_65

    iget-wide v1, v3, Lyads/mx3;->z:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_65

    const/4 v7, 0x1

    iput-boolean v7, v3, Lyads/mx3;->y:Z

    goto :goto_2b

    :cond_65
    const/4 v7, 0x1

    new-instance v1, Lyads/rh5;

    iget-wide v4, v3, Lyads/mx3;->t:J

    move-wide/from16 v10, v20

    invoke-direct {v1, v4, v5, v10, v11}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v9, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v7, v3, Lyads/mx3;->v:Z

    goto :goto_2b

    :cond_66
    new-instance v1, Lyads/vv3;

    invoke-direct {v1}, Lyads/vv3;-><init>()V

    iput-object v1, v3, Lyads/mx3;->C:Lyads/vv3;

    new-instance v1, Lyads/vv3;

    invoke-direct {v1}, Lyads/vv3;-><init>()V

    iput-object v1, v3, Lyads/mx3;->D:Lyads/vv3;

    goto :goto_2b

    :cond_67
    iget-wide v4, v3, Lyads/mx3;->q:J

    cmp-long v6, v4, v18

    if-eqz v6, :cond_69

    cmp-long v4, v4, v1

    if-nez v4, :cond_68

    goto :goto_2c

    :cond_68
    const-string v0, "Multiple Segment elements not supported"

    invoke-static {v0, v15}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v32, 0x0

    return v32

    :cond_69
    :goto_2c
    iput-wide v1, v3, Lyads/mx3;->q:J

    iput-wide v7, v3, Lyads/mx3;->p:J

    goto :goto_2b

    :cond_6a
    invoke-virtual {v3, v4}, Lyads/mx3;->a(I)V

    iget-object v1, v3, Lyads/mx3;->u:Lyads/lx3;

    const/4 v7, 0x1

    iput-boolean v7, v1, Lyads/lx3;->x:Z

    goto :goto_2b

    :cond_6b
    const/4 v7, 0x1

    invoke-virtual {v3, v4}, Lyads/mx3;->a(I)V

    iget-object v1, v3, Lyads/mx3;->u:Lyads/lx3;

    iput-boolean v7, v1, Lyads/lx3;->h:Z

    goto :goto_2b

    :cond_6c
    iput v12, v3, Lyads/mx3;->w:I

    move-wide/from16 v1, v18

    iput-wide v1, v3, Lyads/mx3;->x:J

    goto :goto_2b

    :cond_6d
    const/4 v7, 0x0

    iput-boolean v7, v3, Lyads/mx3;->E:Z

    goto :goto_2d

    :cond_6e
    const/4 v7, 0x0

    new-instance v1, Lyads/lx3;

    invoke-direct {v1}, Lyads/lx3;-><init>()V

    iput-object v1, v3, Lyads/mx3;->u:Lyads/lx3;

    goto :goto_2d

    :cond_6f
    const/4 v7, 0x0

    iput-boolean v7, v3, Lyads/mx3;->Q:Z

    const-wide/16 v10, 0x0

    iput-wide v10, v3, Lyads/mx3;->R:J

    :goto_2d
    iput v7, v0, Lyads/uk0;->e:I

    goto/16 :goto_2a

    :cond_70
    const/4 v7, 0x0

    invoke-static {}, Lud;->g()V

    return v7

    :cond_71
    move v7, v3

    iget-wide v2, v0, Lyads/uk0;->g:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lyads/wk0;->a(I)V

    iput v7, v0, Lyads/uk0;->e:I

    move v3, v7

    goto/16 :goto_0

    :cond_72
    move v7, v3

    invoke-static {}, Lud;->g()V

    return v7

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_24
        0x88 -> :sswitch_23
        0x9b -> :sswitch_22
        0x9f -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_1f
        0xba -> :sswitch_1e
        0xd7 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xee -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xfb -> :sswitch_19
        0x41e7 -> :sswitch_18
        0x4254 -> :sswitch_17
        0x4285 -> :sswitch_16
        0x42f7 -> :sswitch_15
        0x47e1 -> :sswitch_14
        0x47e8 -> :sswitch_13
        0x53ac -> :sswitch_12
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_10
        0x54b2 -> :sswitch_f
        0x54ba -> :sswitch_e
        0x55aa -> :sswitch_d
        0x55ee -> :sswitch_c
        0x56aa -> :sswitch_b
        0x56bb -> :sswitch_a
        0x6264 -> :sswitch_9
        0x75a2 -> :sswitch_8
        0x7671 -> :sswitch_7
        0x23e383 -> :sswitch_6
        0x2ad7b1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55b9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
