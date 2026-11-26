.class public final Lyads/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/gn;

.field public c:I

.field public d:Lyads/zs2;

.field public e:Lyads/in;

.field public f:J

.field public g:[Lyads/hz;

.field public h:J

.field public i:Lyads/hz;

.field public j:I

.field public k:J

.field public l:J

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/os4;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/hn;->a:Lyads/os4;

    new-instance v0, Lyads/gn;

    invoke-direct {v0}, Lyads/gn;-><init>()V

    iput-object v0, p0, Lyads/hn;->b:Lyads/gn;

    new-instance v0, Lyads/bm2;

    invoke-direct {v0}, Lyads/bm2;-><init>()V

    iput-object v0, p0, Lyads/hn;->d:Lyads/zs2;

    const/4 v0, 0x0

    new-array v0, v0, [Lyads/hz;

    iput-object v0, p0, Lyads/hn;->g:[Lyads/hz;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/hn;->k:J

    iput-wide v0, p0, Lyads/hn;->l:J

    const/4 v0, -0x1

    iput v0, p0, Lyads/hn;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/hn;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lyads/hn;->h:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Lyads/wk0;

    iget-wide v9, v6, Lyads/wk0;->d:J

    cmp-long v11, v2, v9

    if-ltz v11, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v9

    cmp-long v11, v2, v11

    if-lez v11, :cond_1

    :cond_0
    move-object/from16 v6, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v9

    long-to-int v2, v2

    invoke-virtual {v6, v2}, Lyads/wk0;->a(I)V

    goto :goto_1

    :goto_0
    iput-wide v2, v6, Lyads/qx4;->a:J

    move v2, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v8

    :goto_2
    iput-wide v4, v0, Lyads/hn;->h:J

    if-eqz v2, :cond_3

    return v7

    :cond_3
    iget v2, v0, Lyads/hn;->c:I

    const/4 v6, 0x4

    const/4 v9, 0x6

    const v10, 0x69766f6d

    const v11, 0x6c726468

    const v14, 0x5453494c

    move-wide/from16 v17, v4

    const/16 v4, 0x8

    const/16 v5, 0x10

    const-wide/16 v19, 0x8

    const/16 v15, 0xc

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lxp;->g()V

    return v8

    :pswitch_0
    move-object v2, v1

    check-cast v2, Lyads/wk0;

    iget-wide v5, v2, Lyads/wk0;->d:J

    iget-wide v11, v0, Lyads/hn;->l:J

    cmp-long v9, v5, v11

    if-ltz v9, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    iget-object v9, v0, Lyads/hn;->i:Lyads/hz;

    if-eqz v9, :cond_9

    iget v2, v9, Lyads/hz;->g:I

    iget-object v4, v9, Lyads/hz;->a:Lyads/k06;

    invoke-interface {v4, v1, v2, v8}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v9, Lyads/hz;->g:I

    if-nez v2, :cond_5

    move v1, v7

    goto :goto_3

    :cond_5
    move v1, v8

    :goto_3
    if-eqz v1, :cond_8

    iget v2, v9, Lyads/hz;->f:I

    if-lez v2, :cond_7

    iget-object v10, v9, Lyads/hz;->a:Lyads/k06;

    iget v2, v9, Lyads/hz;->h:I

    iget-wide v4, v9, Lyads/hz;->d:J

    int-to-long v11, v2

    mul-long/2addr v4, v11

    iget v6, v9, Lyads/hz;->e:I

    int-to-long v11, v6

    div-long v11, v4, v11

    iget-object v4, v9, Lyads/hz;->l:[I

    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_6

    move v13, v7

    goto :goto_4

    :cond_6
    move v13, v8

    :goto_4
    iget v14, v9, Lyads/hz;->f:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_7
    iget v2, v9, Lyads/hz;->h:I

    add-int/2addr v2, v7

    iput v2, v9, Lyads/hz;->h:I

    :cond_8
    if-eqz v1, :cond_12

    iput-object v3, v0, Lyads/hn;->i:Lyads/hz;

    goto/16 :goto_7

    :cond_9
    const-wide/16 v11, 0x1

    and-long/2addr v5, v11

    cmp-long v1, v5, v11

    if-nez v1, :cond_a

    invoke-virtual {v2, v7}, Lyads/wk0;->a(I)V

    :cond_a
    iget-object v1, v0, Lyads/hn;->a:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v2, v1, v8, v15, v8}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v1, v8}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->c()I

    move-result v1

    iget-object v5, v0, Lyads/hn;->a:Lyads/os4;

    if-ne v1, v14, :cond_c

    invoke-virtual {v5, v4}, Lyads/os4;->e(I)V

    iget-object v0, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v0

    if-ne v0, v10, :cond_b

    move v4, v15

    :cond_b
    invoke-virtual {v2, v4}, Lyads/wk0;->a(I)V

    iput v8, v2, Lyads/wk0;->f:I

    goto :goto_7

    :cond_c
    invoke-virtual {v5}, Lyads/os4;->c()I

    move-result v5

    const v6, 0x4b4e554a    # 1.352225E7f

    if-ne v1, v6, :cond_d

    iget-wide v1, v2, Lyads/wk0;->d:J

    int-to-long v3, v5

    add-long/2addr v1, v3

    add-long v1, v1, v19

    iput-wide v1, v0, Lyads/hn;->h:J

    return v8

    :cond_d
    invoke-virtual {v2, v4}, Lyads/wk0;->a(I)V

    iput v8, v2, Lyads/wk0;->f:I

    iget-object v4, v0, Lyads/hn;->g:[Lyads/hz;

    array-length v6, v4

    move v7, v8

    :goto_5
    if-ge v7, v6, :cond_10

    aget-object v9, v4, v7

    iget v10, v9, Lyads/hz;->b:I

    if-eq v10, v1, :cond_f

    iget v10, v9, Lyads/hz;->c:I

    if-ne v10, v1, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    move-object v3, v9

    :cond_10
    if-nez v3, :cond_11

    iget-wide v1, v2, Lyads/wk0;->d:J

    int-to-long v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/hn;->h:J

    return v8

    :cond_11
    iput v5, v3, Lyads/hz;->f:I

    iput v5, v3, Lyads/hz;->g:I

    iput-object v3, v0, Lyads/hn;->i:Lyads/hz;

    :cond_12
    :goto_7
    return v8

    :pswitch_1
    new-instance v2, Lyads/os4;

    iget v4, v0, Lyads/hn;->m:I

    invoke-direct {v2, v4}, Lyads/os4;-><init>(I)V

    iget-object v4, v2, Lyads/os4;->a:[B

    iget v6, v0, Lyads/hn;->m:I

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v4, v8, v6, v8}, Lyads/wk0;->a([BIIZ)Z

    iget v1, v2, Lyads/os4;->c:I

    iget v4, v2, Lyads/os4;->b:I

    sub-int/2addr v1, v4

    if-ge v1, v5, :cond_13

    const-wide/16 v12, 0x0

    goto :goto_9

    :cond_13
    add-int/lit8 v1, v4, 0x8

    invoke-virtual {v2, v1}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v1

    int-to-long v10, v1

    iget-wide v14, v0, Lyads/hn;->k:J

    cmp-long v1, v10, v14

    if-lez v1, :cond_14

    const-wide/16 v12, 0x0

    goto :goto_8

    :cond_14
    add-long v12, v14, v19

    :goto_8
    invoke-virtual {v2, v4}, Lyads/os4;->e(I)V

    :goto_9
    iget v1, v2, Lyads/os4;->c:I

    iget v4, v2, Lyads/os4;->b:I

    sub-int/2addr v1, v4

    if-lt v1, v5, :cond_1a

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v1

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v4

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v10, v12

    invoke-virtual {v2}, Lyads/os4;->c()I

    iget-object v6, v0, Lyads/hn;->g:[Lyads/hz;

    array-length v14, v6

    move v15, v8

    :goto_a
    if-ge v15, v14, :cond_16

    aget-object v3, v6, v15

    move/from16 v21, v8

    iget v8, v3, Lyads/hz;->b:I

    if-eq v8, v1, :cond_17

    iget v8, v3, Lyads/hz;->c:I

    if-ne v8, v1, :cond_15

    goto :goto_b

    :cond_15
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v21

    const/4 v3, 0x0

    goto :goto_a

    :cond_16
    move/from16 v21, v8

    const/4 v3, 0x0

    :cond_17
    :goto_b
    if-nez v3, :cond_18

    goto :goto_c

    :cond_18
    and-int/lit8 v1, v4, 0x10

    if-ne v1, v5, :cond_19

    invoke-virtual {v3, v10, v11}, Lyads/hz;->a(J)V

    :cond_19
    iget v1, v3, Lyads/hz;->i:I

    add-int/2addr v1, v7

    iput v1, v3, Lyads/hz;->i:I

    :goto_c
    move/from16 v8, v21

    const/4 v3, 0x0

    goto :goto_9

    :cond_1a
    move/from16 v21, v8

    iget-object v1, v0, Lyads/hn;->g:[Lyads/hz;

    array-length v2, v1

    move/from16 v3, v21

    :goto_d
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lyads/hz;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    iput-boolean v7, v0, Lyads/hn;->n:Z

    iget-object v1, v0, Lyads/hn;->d:Lyads/zs2;

    new-instance v2, Lyads/fn;

    iget-wide v3, v0, Lyads/hn;->f:J

    invoke-direct {v2, v0, v3, v4}, Lyads/fn;-><init>(Lyads/hn;J)V

    invoke-interface {v1, v2}, Lyads/zs2;->a(Lyads/sh5;)V

    iput v9, v0, Lyads/hn;->c:I

    iget-wide v1, v0, Lyads/hn;->k:J

    iput-wide v1, v0, Lyads/hn;->h:J

    return v21

    :pswitch_2
    move/from16 v21, v8

    iget-object v2, v0, Lyads/hn;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    move/from16 v3, v21

    invoke-virtual {v1, v2, v3, v4, v3}, Lyads/wk0;->a([BIIZ)Z

    iget-object v2, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    iget-object v2, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v2

    iget-object v3, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->c()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_1c

    const/4 v1, 0x5

    iput v1, v0, Lyads/hn;->c:I

    iput v3, v0, Lyads/hn;->m:I

    :goto_e
    const/4 v3, 0x0

    goto :goto_f

    :cond_1c
    iget-wide v1, v1, Lyads/wk0;->d:J

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/hn;->h:J

    goto :goto_e

    :goto_f
    return v3

    :pswitch_3
    move v3, v8

    iget-wide v7, v0, Lyads/hn;->k:J

    cmp-long v4, v7, v17

    if-eqz v4, :cond_1d

    move-object v4, v1

    check-cast v4, Lyads/wk0;

    iget-wide v12, v4, Lyads/wk0;->d:J

    cmp-long v4, v12, v7

    if-eqz v4, :cond_1d

    iput-wide v7, v0, Lyads/hn;->h:J

    return v3

    :cond_1d
    iget-object v4, v0, Lyads/hn;->a:Lyads/os4;

    iget-object v4, v4, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v4, v3, v15, v3}, Lyads/wk0;->b([BIIZ)Z

    iput v3, v1, Lyads/wk0;->f:I

    iget-object v4, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v4, v3}, Lyads/os4;->e(I)V

    iget-object v4, v0, Lyads/hn;->b:Lyads/gn;

    iget-object v7, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v7}, Lyads/os4;->c()I

    move-result v8

    iput v8, v4, Lyads/gn;->a:I

    invoke-virtual {v7}, Lyads/os4;->c()I

    move-result v7

    iput v7, v4, Lyads/gn;->b:I

    iput v3, v4, Lyads/gn;->c:I

    iget-object v4, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v4}, Lyads/os4;->c()I

    move-result v4

    iget-object v7, v0, Lyads/hn;->b:Lyads/gn;

    iget v8, v7, Lyads/gn;->a:I

    const v11, 0x46464952

    if-ne v8, v11, :cond_1e

    invoke-virtual {v1, v15}, Lyads/wk0;->a(I)V

    return v3

    :cond_1e
    if-ne v8, v14, :cond_1f

    if-eq v4, v10, :cond_20

    :cond_1f
    const/4 v3, 0x0

    goto :goto_10

    :cond_20
    iget-wide v3, v1, Lyads/wk0;->d:J

    iput-wide v3, v0, Lyads/hn;->k:J

    iget v7, v7, Lyads/gn;->b:I

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-long v3, v3, v19

    iput-wide v3, v0, Lyads/hn;->l:J

    iget-boolean v3, v0, Lyads/hn;->n:Z

    if-nez v3, :cond_22

    iget-object v3, v0, Lyads/hn;->e:Lyads/in;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Lyads/in;->b:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_21

    iput v6, v0, Lyads/hn;->c:I

    iget-wide v1, v0, Lyads/hn;->l:J

    iput-wide v1, v0, Lyads/hn;->h:J

    const/16 v21, 0x0

    return v21

    :cond_21
    iget-object v3, v0, Lyads/hn;->d:Lyads/zs2;

    new-instance v4, Lyads/rh5;

    iget-wide v5, v0, Lyads/hn;->f:J

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v3, v4}, Lyads/zs2;->a(Lyads/sh5;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lyads/hn;->n:Z

    :cond_22
    iget-wide v1, v1, Lyads/wk0;->d:J

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/hn;->h:J

    iput v9, v0, Lyads/hn;->c:I

    const/4 v3, 0x0

    return v3

    :goto_10
    iget-wide v1, v1, Lyads/wk0;->d:J

    iget v4, v7, Lyads/gn;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-long v1, v1, v19

    iput-wide v1, v0, Lyads/hn;->h:J

    return v3

    :pswitch_4
    move v3, v8

    iget v4, v0, Lyads/hn;->j:I

    sub-int/2addr v4, v6

    new-instance v5, Lyads/os4;

    invoke-direct {v5, v4}, Lyads/os4;-><init>(I)V

    iget-object v6, v5, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v6, v3, v4, v3}, Lyads/wk0;->a([BIIZ)Z

    invoke-static {v11, v5}, Lyads/rt3;->a(ILyads/os4;)Lyads/rt3;

    move-result-object v1

    iget v3, v1, Lyads/rt3;->b:I

    if-ne v3, v11, :cond_2d

    const-class v3, Lyads/in;

    invoke-virtual {v1, v3}, Lyads/rt3;->a(Ljava/lang/Class;)Lyads/en;

    move-result-object v3

    check-cast v3, Lyads/in;

    if-eqz v3, :cond_2c

    iput-object v3, v0, Lyads/hn;->e:Lyads/in;

    iget v4, v3, Lyads/in;->c:I

    int-to-long v4, v4

    iget v3, v3, Lyads/in;->a:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lyads/hn;->f:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lyads/rt3;->a:Lyads/k55;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object v1

    const/4 v6, 0x0

    :cond_23
    :goto_11
    invoke-virtual {v1}, Lyads/g;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v1}, Lyads/g;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/en;

    invoke-interface {v4}, Lyads/en;->getType()I

    move-result v5

    const v7, 0x6c727473

    if-ne v5, v7, :cond_23

    check-cast v4, Lyads/rt3;

    add-int/lit8 v12, v6, 0x1

    const-class v5, Lyads/jn;

    invoke-virtual {v4, v5}, Lyads/rt3;->a(Ljava/lang/Class;)Lyads/en;

    move-result-object v5

    check-cast v5, Lyads/jn;

    const-class v7, Lyads/zr5;

    invoke-virtual {v4, v7}, Lyads/rt3;->a(Ljava/lang/Class;)Lyads/en;

    move-result-object v7

    check-cast v7, Lyads/zr5;

    const-string v8, "AviExtractor"

    if-nez v5, :cond_25

    const-string v4, "Missing Stream Header"

    invoke-static {v8, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_12
    const/4 v5, 0x0

    goto :goto_13

    :cond_25
    if-nez v7, :cond_26

    const-string v4, "Missing Stream Format"

    invoke-static {v8, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_26
    iget v8, v5, Lyads/jn;->d:I

    int-to-long v8, v8

    iget v10, v5, Lyads/jn;->b:I

    int-to-long v10, v10

    const-wide/32 v13, 0xf4240

    mul-long v24, v10, v13

    iget v10, v5, Lyads/jn;->c:I

    int-to-long v10, v10

    move-wide/from16 v22, v8

    move-wide/from16 v26, v10

    invoke-static/range {v22 .. v27}, Lyads/u56;->a(JJJ)J

    move-result-wide v8

    iget-object v7, v7, Lyads/zr5;->a:Lyads/vz2;

    new-instance v10, Lyads/uz2;

    invoke-direct {v10, v7}, Lyads/uz2;-><init>(Lyads/vz2;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lyads/uz2;->a:Ljava/lang/String;

    iget v11, v5, Lyads/jn;->e:I

    if-eqz v11, :cond_27

    iput v11, v10, Lyads/uz2;->l:I

    :cond_27
    const-class v11, Lyads/cs5;

    invoke-virtual {v4, v11}, Lyads/rt3;->a(Ljava/lang/Class;)Lyads/en;

    move-result-object v4

    check-cast v4, Lyads/cs5;

    if-eqz v4, :cond_28

    iget-object v4, v4, Lyads/cs5;->a:Ljava/lang/String;

    iput-object v4, v10, Lyads/uz2;->b:Ljava/lang/String;

    :cond_28
    iget-object v4, v7, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v4}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v7

    const/4 v2, 0x1

    if-eq v7, v2, :cond_29

    const/4 v4, 0x2

    if-ne v7, v4, :cond_24

    :cond_29
    iget-object v4, v0, Lyads/hn;->d:Lyads/zs2;

    invoke-interface {v4, v6, v7}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v11

    new-instance v4, Lyads/vz2;

    invoke-direct {v4, v10}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v11, v4}, Lyads/k06;->a(Lyads/vz2;)V

    new-instance v4, Lyads/hz;

    iget v10, v5, Lyads/jn;->d:I

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lyads/hz;-><init>(IIJILyads/k06;)V

    iput-wide v8, v0, Lyads/hn;->f:J

    :goto_13
    if-eqz v5, :cond_2a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    move v6, v12

    goto/16 :goto_11

    :cond_2b
    const/4 v4, 0x0

    new-array v1, v4, [Lyads/hz;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyads/hz;

    iput-object v1, v0, Lyads/hn;->g:[Lyads/hz;

    iget-object v1, v0, Lyads/hn;->d:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    const/4 v1, 0x3

    iput v1, v0, Lyads/hn;->c:I

    return v4

    :cond_2c
    const/4 v4, 0x0

    const-string v0, "AviHeader not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v4

    :cond_2d
    const/4 v4, 0x0

    const-string v0, "Unexpected header list type "

    iget v1, v1, Lyads/rt3;->b:I

    invoke-static {v1, v0}, Lu4;->c(ILjava/lang/String;)V

    return v4

    :pswitch_5
    move v4, v8

    iget-object v2, v0, Lyads/hn;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v2, v4, v15, v4}, Lyads/wk0;->a([BIIZ)Z

    iget-object v1, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v1, v4}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/hn;->b:Lyads/gn;

    iget-object v2, v0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v3

    iput v3, v1, Lyads/gn;->a:I

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v3

    iput v3, v1, Lyads/gn;->b:I

    iput v4, v1, Lyads/gn;->c:I

    iget v3, v1, Lyads/gn;->a:I

    if-ne v3, v14, :cond_2f

    invoke-virtual {v2}, Lyads/os4;->c()I

    move-result v2

    iput v2, v1, Lyads/gn;->c:I

    iget-object v1, v0, Lyads/hn;->b:Lyads/gn;

    iget v2, v1, Lyads/gn;->c:I

    if-ne v2, v11, :cond_2e

    iget v1, v1, Lyads/gn;->b:I

    iput v1, v0, Lyads/hn;->j:I

    const/4 v1, 0x2

    iput v1, v0, Lyads/hn;->c:I

    return v4

    :cond_2e
    iget-object v0, v0, Lyads/hn;->b:Lyads/gn;

    iget v0, v0, Lyads/gn;->c:I

    const-string v1, "hdrl expected, found: "

    invoke-static {v0, v1}, Lu4;->c(ILjava/lang/String;)V

    return v4

    :cond_2f
    const-string v0, "LIST expected, found: "

    iget v1, v1, Lyads/gn;->a:I

    invoke-static {v1, v0}, Lu4;->c(ILjava/lang/String;)V

    return v4

    :pswitch_6
    move v4, v8

    invoke-virtual/range {p0 .. p1}, Lyads/hn;->a(Lyads/xs2;)Z

    move-result v3

    if-eqz v3, :cond_30

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v15}, Lyads/wk0;->a(I)V

    const/4 v2, 0x1

    iput v2, v0, Lyads/hn;->c:I

    return v4

    :cond_30
    const-string v0, "AVI Header List not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    .line 996
    iput-wide p3, p0, Lyads/hn;->h:J

    const/4 p3, 0x0

    .line 997
    iput-object p3, p0, Lyads/hn;->i:Lyads/hz;

    .line 998
    iget-object p3, p0, Lyads/hn;->g:[Lyads/hz;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    .line 999
    iget v3, v2, Lyads/hz;->j:I

    if-nez v3, :cond_0

    .line 1000
    iput v0, v2, Lyads/hz;->h:I

    goto :goto_1

    .line 1001
    :cond_0
    iget-object v3, v2, Lyads/hz;->k:[J

    const/4 v4, 0x1

    .line 1002
    invoke-static {v3, p1, p2, v4}, Lyads/u56;->b([JJZ)I

    move-result v3

    .line 1003
    iget-object v4, v2, Lyads/hz;->l:[I

    aget v3, v4, v3

    iput v3, v2, Lyads/hz;->h:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 1004
    iget-object p1, p0, Lyads/hn;->g:[Lyads/hz;

    array-length p1, p1

    if-nez p1, :cond_2

    .line 1005
    iput v0, p0, Lyads/hn;->c:I

    return-void

    :cond_2
    const/4 p1, 0x3

    .line 1006
    iput p1, p0, Lyads/hn;->c:I

    return-void

    :cond_3
    const/4 p1, 0x6

    .line 1007
    iput p1, p0, Lyads/hn;->c:I

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 2

    const/4 v0, 0x0

    .line 1008
    iput v0, p0, Lyads/hn;->c:I

    .line 1009
    iput-object p1, p0, Lyads/hn;->d:Lyads/zs2;

    const-wide/16 v0, -0x1

    .line 1010
    iput-wide v0, p0, Lyads/hn;->h:J

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 3

    .line 986
    iget-object v0, p0, Lyads/hn;->a:Lyads/os4;

    .line 987
    iget-object v0, v0, Lyads/os4;->a:[B

    const/16 v1, 0xc

    .line 988
    check-cast p1, Lyads/wk0;

    const/4 v2, 0x0

    .line 989
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 990
    iget-object p1, p0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {p1, v2}, Lyads/os4;->e(I)V

    .line 991
    iget-object p1, p0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {p1}, Lyads/os4;->c()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    .line 992
    :cond_0
    iget-object p1, p0, Lyads/hn;->a:Lyads/os4;

    .line 993
    iget v0, p1, Lyads/os4;->b:I

    add-int/lit8 v0, v0, 0x4

    .line 994
    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    .line 995
    iget-object p0, p0, Lyads/hn;->a:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->c()I

    move-result p0

    const p1, 0x20495641

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final release()V
    .locals 0

    return-void
.end method
