.class public final Lyads/cy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:[B

.field public final b:Lyads/os4;

.field public final c:Z

.field public final d:Lyads/dy2;

.field public e:Lyads/zs2;

.field public f:Lyads/k06;

.field public g:I

.field public h:Lyads/h84;

.field public i:Lyads/ky2;

.field public j:I

.field public k:I

.field public l:Lyads/by2;

.field public m:I

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/cy2;->a:[B

    new-instance v0, Lyads/os4;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/os4;-><init>([BI)V

    iput-object v0, p0, Lyads/cy2;->b:Lyads/os4;

    iput-boolean v2, p0, Lyads/cy2;->c:Z

    new-instance v0, Lyads/dy2;

    invoke-direct {v0}, Lyads/dy2;-><init>()V

    iput-object v0, p0, Lyads/cy2;->d:Lyads/dy2;

    iput v2, p0, Lyads/cy2;->g:I

    return-void
.end method

.method public static a()[Lyads/ws2;
    .locals 3

    .line 1099
    new-instance v0, Lyads/cy2;

    .line 1100
    invoke-direct {v0}, Lyads/cy2;-><init>()V

    const/4 v1, 0x1

    .line 1101
    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lyads/cy2;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2a

    const/4 v5, 0x2

    if-eq v1, v3, :cond_29

    const/16 v6, 0x18

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eq v1, v5, :cond_27

    const/4 v11, 0x7

    if-eq v1, v9, :cond_1b

    const/4 v6, 0x5

    const-wide/32 v15, 0xf4240

    const-wide/16 v13, 0x0

    const-wide/16 v17, -0x1

    if-eq v1, v10, :cond_16

    if-ne v1, v6, :cond_15

    iget-object v1, v0, Lyads/cy2;->f:Lyads/k06;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lyads/cy2;->l:Lyads/by2;

    if-eqz v1, :cond_0

    iget-object v6, v1, Lyads/qt;->c:Lyads/mt;

    if-eqz v6, :cond_0

    move-object/from16 v0, p1

    check-cast v0, Lyads/wk0;

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lyads/qt;->a(Lyads/wk0;Lyads/qx4;)I

    move-result v0

    return v0

    :cond_0
    iget-wide v6, v0, Lyads/cy2;->n:J

    cmp-long v1, v6, v17

    const/4 v6, -0x1

    if-nez v1, :cond_7

    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    move-object/from16 v7, p1

    check-cast v7, Lyads/wk0;

    iput v4, v7, Lyads/wk0;->f:I

    invoke-virtual {v7, v3, v4}, Lyads/wk0;->a(IZ)Z

    new-array v8, v3, [B

    invoke-virtual {v7, v8, v4, v3, v4}, Lyads/wk0;->b([BIIZ)Z

    aget-byte v8, v8, v4

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    invoke-virtual {v7, v5, v4}, Lyads/wk0;->a(IZ)Z

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x6

    :goto_1
    new-instance v5, Lyads/os4;

    invoke-direct {v5, v11}, Lyads/os4;-><init>(I)V

    iget-object v9, v5, Lyads/os4;->a:[B

    move v10, v4

    :goto_2
    if-ge v10, v11, :cond_4

    sub-int v12, v11, v10

    invoke-virtual {v7, v9, v10, v12}, Lyads/wk0;->d([BII)I

    move-result v12

    if-ne v12, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v10, v12

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v5, v10}, Lyads/os4;->d(I)V

    iput v4, v7, Lyads/wk0;->f:I

    :try_start_0
    invoke-virtual {v5}, Lyads/os4;->q()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :goto_4
    move-wide v13, v5

    goto :goto_5

    :cond_5
    iget v1, v1, Lyads/ky2;->b:I

    int-to-long v7, v1

    mul-long/2addr v5, v7

    goto :goto_4

    :goto_5
    move v1, v3

    goto :goto_6

    :catch_0
    move v1, v4

    :goto_6
    if-eqz v1, :cond_6

    iput-wide v13, v0, Lyads/cy2;->n:J

    goto/16 :goto_e

    :cond_6
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v2, v2, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_7
    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    iget v2, v1, Lyads/os4;->c:I

    const v5, 0x8000

    if-ge v2, v5, :cond_a

    iget-object v1, v1, Lyads/os4;->a:[B

    sub-int/2addr v5, v2

    move-object/from16 v7, p1

    check-cast v7, Lyads/wk0;

    invoke-virtual {v7, v1, v2, v5}, Lyads/wk0;->c([BII)I

    move-result v1

    if-ne v1, v6, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    iget-object v5, v0, Lyads/cy2;->b:Lyads/os4;

    if-nez v3, :cond_9

    add-int/2addr v2, v1

    invoke-virtual {v5, v2}, Lyads/os4;->d(I)V

    goto :goto_8

    :cond_9
    iget v1, v5, Lyads/os4;->c:I

    iget v2, v5, Lyads/os4;->b:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_b

    iget-wide v1, v0, Lyads/cy2;->n:J

    mul-long/2addr v1, v15

    iget-object v3, v0, Lyads/cy2;->i:Lyads/ky2;

    sget v4, Lyads/u56;->a:I

    iget v3, v3, Lyads/ky2;->e:I

    int-to-long v3, v3

    div-long v8, v1, v3

    iget-object v7, v0, Lyads/cy2;->f:Lyads/k06;

    iget v11, v0, Lyads/cy2;->m:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v7 .. v13}, Lyads/k06;->a(JIIILyads/j06;)V

    return v6

    :cond_a
    move v3, v4

    :cond_b
    :goto_8
    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    iget v2, v1, Lyads/os4;->b:I

    iget v5, v0, Lyads/cy2;->m:I

    iget v6, v0, Lyads/cy2;->j:I

    if-ge v5, v6, :cond_c

    sub-int/2addr v6, v5

    iget v5, v1, Lyads/os4;->c:I

    sub-int/2addr v5, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v1, Lyads/os4;->b:I

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Lyads/os4;->e(I)V

    :cond_c
    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    iget-object v5, v0, Lyads/cy2;->i:Lyads/ky2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lyads/os4;->b:I

    :goto_9
    iget v6, v1, Lyads/os4;->c:I

    sub-int/2addr v6, v8

    if-gt v5, v6, :cond_e

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    iget-object v6, v0, Lyads/cy2;->i:Lyads/ky2;

    iget v7, v0, Lyads/cy2;->k:I

    iget-object v9, v0, Lyads/cy2;->d:Lyads/dy2;

    invoke-static {v1, v6, v7, v9}, Lyads/ey2;->a(Lyads/os4;Lyads/ky2;ILyads/dy2;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/cy2;->d:Lyads/dy2;

    iget-wide v5, v1, Lyads/dy2;->a:J

    goto :goto_d

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    if-eqz v3, :cond_12

    :goto_a
    iget v3, v1, Lyads/os4;->c:I

    iget v6, v0, Lyads/cy2;->j:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_11

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    :try_start_1
    iget-object v3, v0, Lyads/cy2;->i:Lyads/ky2;

    iget v6, v0, Lyads/cy2;->k:I

    iget-object v7, v0, Lyads/cy2;->d:Lyads/dy2;

    invoke-static {v1, v3, v6, v7}, Lyads/ey2;->a(Lyads/os4;Lyads/ky2;ILyads/dy2;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move v3, v4

    :goto_b
    iget v6, v1, Lyads/os4;->b:I

    iget v7, v1, Lyads/os4;->c:I

    if-le v6, v7, :cond_f

    move v3, v4

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/cy2;->d:Lyads/dy2;

    iget-wide v5, v1, Lyads/dy2;->a:J

    goto :goto_d

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    goto :goto_c

    :cond_12
    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    :goto_c
    move-wide/from16 v5, v17

    :goto_d
    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    iget v3, v1, Lyads/os4;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/cy2;->f:Lyads/k06;

    iget-object v2, v0, Lyads/cy2;->b:Lyads/os4;

    invoke-interface {v1, v3, v2}, Lyads/k06;->a(ILyads/os4;)V

    iget v1, v0, Lyads/cy2;->m:I

    add-int/2addr v1, v3

    iput v1, v0, Lyads/cy2;->m:I

    cmp-long v2, v5, v17

    if-eqz v2, :cond_13

    iget-wide v2, v0, Lyads/cy2;->n:J

    mul-long/2addr v2, v15

    iget-object v7, v0, Lyads/cy2;->i:Lyads/ky2;

    sget v9, Lyads/u56;->a:I

    iget v7, v7, Lyads/ky2;->e:I

    int-to-long v9, v7

    div-long v20, v2, v9

    iget-object v2, v0, Lyads/cy2;->f:Lyads/k06;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x1

    move/from16 v23, v1

    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v25}, Lyads/k06;->a(JIIILyads/j06;)V

    iput v4, v0, Lyads/cy2;->m:I

    iput-wide v5, v0, Lyads/cy2;->n:J

    :cond_13
    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int/2addr v2, v3

    if-ge v2, v8, :cond_14

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-static {v1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lyads/cy2;->b:Lyads/os4;

    invoke-virtual {v1, v4}, Lyads/os4;->e(I)V

    iget-object v0, v0, Lyads/cy2;->b:Lyads/os4;

    invoke-virtual {v0, v2}, Lyads/os4;->d(I)V

    :cond_14
    :goto_e
    return v4

    :cond_15
    invoke-static {}, Lud;->g()V

    return v4

    :cond_16
    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iput v4, v1, Lyads/wk0;->f:I

    new-array v8, v5, [B

    invoke-virtual {v1, v8, v4, v5, v4}, Lyads/wk0;->b([BIIZ)Z

    aget-byte v5, v8, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v7

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    shr-int/lit8 v5, v3, 0x2

    const/16 v7, 0x3ffe

    if-ne v5, v7, :cond_1a

    iput v4, v1, Lyads/wk0;->f:I

    iput v3, v0, Lyads/cy2;->k:I

    iget-object v2, v0, Lyads/cy2;->e:Lyads/zs2;

    sget v3, Lyads/u56;->a:I

    iget-wide v7, v1, Lyads/wk0;->d:J

    iget-wide v9, v1, Lyads/wk0;->c:J

    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    iget-object v3, v1, Lyads/ky2;->k:Lyads/jy2;

    if-eqz v3, :cond_17

    new-instance v3, Lyads/iy2;

    invoke-direct {v3, v1, v7, v8}, Lyads/iy2;-><init>(Lyads/ky2;J)V

    goto :goto_10

    :cond_17
    cmp-long v3, v9, v17

    if-eqz v3, :cond_18

    iget-wide v11, v1, Lyads/ky2;->j:J

    cmp-long v3, v11, v13

    if-lez v3, :cond_18

    new-instance v19, Lyads/by2;

    iget v3, v0, Lyads/cy2;->k:I

    move-object/from16 v20, v1

    move/from16 v21, v3

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-direct/range {v19 .. v25}, Lyads/by2;-><init>(Lyads/ky2;IJJ)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lyads/cy2;->l:Lyads/by2;

    iget-object v3, v1, Lyads/qt;->a:Lyads/kt;

    goto :goto_10

    :cond_18
    new-instance v3, Lyads/rh5;

    iget-wide v7, v1, Lyads/ky2;->j:J

    cmp-long v5, v7, v13

    if-nez v5, :cond_19

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_f

    :cond_19
    mul-long/2addr v7, v15

    iget v1, v1, Lyads/ky2;->e:I

    int-to-long v9, v1

    div-long/2addr v7, v9

    :goto_f
    invoke-direct {v3, v7, v8, v13, v14}, Lyads/rh5;-><init>(JJ)V

    :goto_10
    invoke-interface {v2, v3}, Lyads/zs2;->a(Lyads/sh5;)V

    iput v6, v0, Lyads/cy2;->g:I

    return v4

    :cond_1a
    iput v4, v1, Lyads/wk0;->f:I

    const-string v0, "First frame does not start with sync code."

    invoke-static {v0, v2}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v4

    :cond_1b
    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    move v2, v4

    :goto_11
    if-nez v2, :cond_26

    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    iput v4, v2, Lyads/wk0;->f:I

    new-instance v3, Lyads/ns4;

    new-array v5, v10, [B

    invoke-direct {v3, v5}, Lyads/ns4;-><init>([B)V

    iget-object v5, v3, Lyads/ns4;->a:[B

    invoke-virtual {v2, v5, v4, v10, v4}, Lyads/wk0;->b([BIIZ)Z

    invoke-virtual {v3}, Lyads/ns4;->e()Z

    move-result v5

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v7

    invoke-virtual {v3, v6}, Lyads/ns4;->a(I)I

    move-result v3

    add-int/2addr v3, v10

    if-nez v7, :cond_1c

    const/16 v1, 0x26

    new-array v3, v1, [B

    invoke-virtual {v2, v3, v4, v1, v4}, Lyads/wk0;->a([BIIZ)Z

    new-instance v1, Lyads/ky2;

    invoke-direct {v1, v3, v10}, Lyads/ky2;-><init>([BI)V

    move/from16 v25, v6

    goto/16 :goto_17

    :cond_1c
    if-eqz v1, :cond_25

    if-ne v7, v9, :cond_1d

    new-instance v7, Lyads/os4;

    invoke-direct {v7, v3}, Lyads/os4;-><init>(I)V

    iget-object v8, v7, Lyads/os4;->a:[B

    invoke-virtual {v2, v8, v4, v3, v4}, Lyads/wk0;->a([BIIZ)Z

    invoke-static {v7}, Lyads/fy2;->a(Lyads/os4;)Lyads/jy2;

    move-result-object v23

    new-instance v13, Lyads/ky2;

    iget v14, v1, Lyads/ky2;->a:I

    iget v15, v1, Lyads/ky2;->b:I

    iget v2, v1, Lyads/ky2;->c:I

    iget v3, v1, Lyads/ky2;->d:I

    iget v7, v1, Lyads/ky2;->e:I

    iget v8, v1, Lyads/ky2;->g:I

    move/from16 v25, v6

    iget v6, v1, Lyads/ky2;->h:I

    iget-wide v11, v1, Lyads/ky2;->j:J

    iget-object v1, v1, Lyads/ky2;->l:Lyads/h84;

    move-object/from16 v24, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v21, v11

    invoke-direct/range {v13 .. v24}, Lyads/ky2;-><init>(IIIIIIIJLyads/jy2;Lyads/h84;)V

    goto/16 :goto_15

    :cond_1d
    move/from16 v25, v6

    if-ne v7, v10, :cond_21

    new-instance v6, Lyads/os4;

    invoke-direct {v6, v3}, Lyads/os4;-><init>(I)V

    iget-object v7, v6, Lyads/os4;->a:[B

    invoke-virtual {v2, v7, v4, v3, v4}, Lyads/wk0;->a([BIIZ)Z

    iget v2, v6, Lyads/os4;->b:I

    add-int/2addr v2, v10

    invoke-virtual {v6, v2}, Lyads/os4;->e(I)V

    invoke-static {v6, v4, v4}, Lyads/dj6;->a(Lyads/os4;ZZ)Lyads/aj6;

    move-result-object v2

    iget-object v2, v2, Lyads/aj6;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lyads/dj6;->a(Ljava/util/List;)Lyads/h84;

    move-result-object v2

    iget-object v3, v1, Lyads/ky2;->l:Lyads/h84;

    if-nez v3, :cond_1e

    :goto_12
    move-object/from16 v22, v2

    goto :goto_14

    :cond_1e
    if-nez v2, :cond_1f

    goto :goto_13

    :cond_1f
    iget-object v2, v2, Lyads/h84;->b:[Lyads/g84;

    array-length v6, v2

    if-nez v6, :cond_20

    :goto_13
    move-object v2, v3

    goto :goto_12

    :cond_20
    new-instance v6, Lyads/h84;

    iget-object v3, v3, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v3, v2}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lyads/g84;

    invoke-direct {v6, v2}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object v2, v6

    goto :goto_12

    :goto_14
    new-instance v11, Lyads/ky2;

    iget v12, v1, Lyads/ky2;->a:I

    iget v13, v1, Lyads/ky2;->b:I

    iget v14, v1, Lyads/ky2;->c:I

    iget v15, v1, Lyads/ky2;->d:I

    iget v2, v1, Lyads/ky2;->e:I

    iget v3, v1, Lyads/ky2;->g:I

    iget v6, v1, Lyads/ky2;->h:I

    iget-wide v7, v1, Lyads/ky2;->j:J

    iget-object v1, v1, Lyads/ky2;->k:Lyads/jy2;

    move-object/from16 v21, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-direct/range {v11 .. v22}, Lyads/ky2;-><init>(IIIIIIIJLyads/jy2;Lyads/h84;)V

    move-object v13, v11

    :goto_15
    move-object v1, v13

    goto/16 :goto_17

    :cond_21
    const/4 v6, 0x6

    if-ne v7, v6, :cond_24

    new-instance v6, Lyads/os4;

    invoke-direct {v6, v3}, Lyads/os4;-><init>(I)V

    iget-object v7, v6, Lyads/os4;->a:[B

    invoke-virtual {v2, v7, v4, v3, v4}, Lyads/wk0;->a([BIIZ)Z

    iget v2, v6, Lyads/os4;->b:I

    add-int/2addr v2, v10

    invoke-virtual {v6, v2}, Lyads/os4;->e(I)V

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v12

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v2

    sget-object v3, Lyads/az;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v2, v3}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v2

    sget-object v3, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v2, v3}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v15

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v16

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v17

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v18

    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v6, v3, v4, v2}, Lyads/os4;->a([BII)V

    new-instance v11, Lyads/zu4;

    move-object/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lyads/zu4;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    new-instance v3, Lyads/h84;

    invoke-direct {v3, v2}, Lyads/h84;-><init>(Ljava/util/List;)V

    iget-object v2, v1, Lyads/ky2;->l:Lyads/h84;

    if-nez v2, :cond_22

    move-object/from16 v22, v3

    goto :goto_16

    :cond_22
    iget-object v3, v3, Lyads/h84;->b:[Lyads/g84;

    array-length v6, v3

    if-nez v6, :cond_23

    move-object/from16 v22, v2

    goto :goto_16

    :cond_23
    new-instance v6, Lyads/h84;

    iget-object v2, v2, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v2, v3}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lyads/g84;

    invoke-direct {v6, v2}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object/from16 v22, v6

    :goto_16
    new-instance v11, Lyads/ky2;

    iget v12, v1, Lyads/ky2;->a:I

    iget v13, v1, Lyads/ky2;->b:I

    iget v14, v1, Lyads/ky2;->c:I

    iget v15, v1, Lyads/ky2;->d:I

    iget v2, v1, Lyads/ky2;->e:I

    iget v3, v1, Lyads/ky2;->g:I

    iget v6, v1, Lyads/ky2;->h:I

    iget-wide v7, v1, Lyads/ky2;->j:J

    iget-object v1, v1, Lyads/ky2;->k:Lyads/jy2;

    move-object/from16 v21, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-direct/range {v11 .. v22}, Lyads/ky2;-><init>(IIIIIIIJLyads/jy2;Lyads/h84;)V

    move-object v1, v11

    goto :goto_17

    :cond_24
    invoke-virtual {v2, v3}, Lyads/wk0;->a(I)V

    :goto_17
    sget v2, Lyads/u56;->a:I

    iput-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    move v2, v5

    move/from16 v6, v25

    const/4 v11, 0x7

    goto/16 :goto_11

    :cond_25
    invoke-static {}, Lmi2;->b()V

    return v4

    :cond_26
    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lyads/cy2;->i:Lyads/ky2;

    iget v1, v1, Lyads/ky2;->c:I

    const/4 v6, 0x6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/cy2;->j:I

    iget-object v1, v0, Lyads/cy2;->f:Lyads/k06;

    sget v2, Lyads/u56;->a:I

    iget-object v2, v0, Lyads/cy2;->i:Lyads/ky2;

    iget-object v3, v0, Lyads/cy2;->a:[B

    iget-object v5, v0, Lyads/cy2;->h:Lyads/h84;

    invoke-virtual {v2, v3, v5}, Lyads/ky2;->a([BLyads/h84;)Lyads/vz2;

    move-result-object v2

    invoke-interface {v1, v2}, Lyads/k06;->a(Lyads/vz2;)V

    iput v10, v0, Lyads/cy2;->g:I

    return v4

    :cond_27
    move/from16 v25, v6

    new-array v1, v10, [B

    move-object/from16 v6, p1

    check-cast v6, Lyads/wk0;

    invoke-virtual {v6, v1, v4, v10, v4}, Lyads/wk0;->a([BIIZ)Z

    aget-byte v6, v1, v4

    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    shl-long v10, v10, v25

    aget-byte v3, v1, v3

    int-to-long v14, v3

    and-long/2addr v14, v12

    shl-long/2addr v14, v8

    or-long/2addr v10, v14

    aget-byte v3, v1, v5

    int-to-long v5, v3

    and-long/2addr v5, v12

    shl-long/2addr v5, v7

    or-long/2addr v5, v10

    aget-byte v1, v1, v9

    int-to-long v7, v1

    and-long/2addr v7, v12

    or-long/2addr v5, v7

    const-wide/32 v7, 0x664c6143

    cmp-long v1, v5, v7

    if-nez v1, :cond_28

    iput v9, v0, Lyads/cy2;->g:I

    return v4

    :cond_28
    const-string v0, "Failed to read FLAC stream marker."

    invoke-static {v0, v2}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v4

    :cond_29
    iget-object v1, v0, Lyads/cy2;->a:[B

    array-length v2, v1

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v3, v1, v4, v2, v4}, Lyads/wk0;->b([BIIZ)Z

    iput v4, v3, Lyads/wk0;->f:I

    iput v5, v0, Lyads/cy2;->g:I

    return v4

    :cond_2a
    iget-boolean v1, v0, Lyads/cy2;->c:Z

    move-object/from16 v5, p1

    check-cast v5, Lyads/wk0;

    iput v4, v5, Lyads/wk0;->f:I

    iget-wide v6, v5, Lyads/wk0;->d:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    if-nez v1, :cond_2b

    move-object v1, v2

    goto :goto_18

    :cond_2b
    sget-object v1, Lyads/mb3;->b:Lyads/kb3;

    :goto_18
    new-instance v8, Lyads/ob3;

    invoke-direct {v8}, Lyads/ob3;-><init>()V

    invoke-virtual {v8, v5, v1}, Lyads/ob3;->a(Lyads/wk0;Lyads/kb3;)Lyads/h84;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v8, v1, Lyads/h84;->b:[Lyads/g84;

    array-length v8, v8

    if-nez v8, :cond_2c

    goto :goto_19

    :cond_2c
    move-object v2, v1

    :cond_2d
    :goto_19
    iget-wide v8, v5, Lyads/wk0;->d:J

    iget v1, v5, Lyads/wk0;->f:I

    int-to-long v10, v1

    add-long/2addr v8, v10

    sub-long/2addr v8, v6

    long-to-int v1, v8

    invoke-virtual {v5, v1}, Lyads/wk0;->a(I)V

    iput-object v2, v0, Lyads/cy2;->h:Lyads/h84;

    iput v3, v0, Lyads/cy2;->g:I

    return v4
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1102
    iput p2, p0, Lyads/cy2;->g:I

    goto :goto_0

    .line 1103
    :cond_0
    iget-object p1, p0, Lyads/cy2;->l:Lyads/by2;

    if-eqz p1, :cond_1

    .line 1104
    invoke-virtual {p1, p3, p4}, Lyads/qt;->a(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    .line 1105
    :goto_1
    iput-wide v0, p0, Lyads/cy2;->n:J

    .line 1106
    iput p2, p0, Lyads/cy2;->m:I

    .line 1107
    iget-object p0, p0, Lyads/cy2;->b:Lyads/os4;

    invoke-virtual {p0, p2}, Lyads/os4;->c(I)V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 2

    .line 1096
    iput-object p1, p0, Lyads/cy2;->e:Lyads/zs2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1097
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/cy2;->f:Lyads/k06;

    .line 1098
    invoke-interface {p1}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 8

    .line 1089
    check-cast p1, Lyads/wk0;

    .line 1090
    sget-object p0, Lyads/mb3;->b:Lyads/kb3;

    .line 1091
    new-instance v0, Lyads/ob3;

    invoke-direct {v0}, Lyads/ob3;-><init>()V

    invoke-virtual {v0, p1, p0}, Lyads/ob3;->a(Lyads/wk0;Lyads/kb3;)Lyads/h84;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1092
    iget-object p0, p0, Lyads/h84;->b:[Lyads/g84;

    array-length p0, p0

    :cond_0
    const/4 p0, 0x4

    .line 1093
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 1094
    invoke-virtual {p1, v0, v1, p0, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 1095
    aget-byte p0, v0, v1

    int-to-long p0, p0

    const-wide/16 v2, 0xff

    and-long/2addr p0, v2

    const/16 v4, 0x18

    shl-long/2addr p0, v4

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr p0, v5

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr p0, v5

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v2, v5

    or-long/2addr p0, v2

    const-wide/32 v2, 0x664c6143

    cmp-long p0, p0, v2

    if-nez p0, :cond_1

    return v4

    :cond_1
    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
