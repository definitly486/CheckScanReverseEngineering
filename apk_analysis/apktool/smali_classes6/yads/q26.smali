.class public final Lyads/q26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lyads/os4;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Lyads/vm0;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Lyads/n26;

.field public k:Lyads/m26;

.field public l:Lyads/zs2;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lyads/u26;

.field public r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    new-instance v0, Lyads/vx5;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lyads/vx5;-><init>(J)V

    new-instance v1, Lyads/vm0;

    invoke-direct {v1}, Lyads/vm0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/q26;->f:Lyads/vm0;

    const v1, 0x1b8a0

    iput v1, p0, Lyads/q26;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lyads/q26;->a:I

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/q26;->c:Ljava/util/List;

    new-instance v0, Lyads/os4;

    const/16 v1, 0x24b8

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/os4;-><init>([BI)V

    iput-object v0, p0, Lyads/q26;->d:Lyads/os4;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lyads/q26;->h:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lyads/q26;->i:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lyads/q26;->g:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lyads/q26;->e:Landroid/util/SparseIntArray;

    new-instance v3, Lyads/n26;

    invoke-direct {v3}, Lyads/n26;-><init>()V

    iput-object v3, p0, Lyads/q26;->j:Lyads/n26;

    sget-object v3, Lyads/zs2;->a:Lyads/ys2;

    iput-object v3, p0, Lyads/q26;->l:Lyads/zs2;

    const/4 v3, -0x1

    iput v3, p0, Lyads/q26;->s:I

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lyads/q26;->g:Landroid/util/SparseArray;

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/u26;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/ph5;

    new-instance v1, Lyads/o26;

    invoke-direct {v1, p0}, Lyads/o26;-><init>(Lyads/q26;)V

    invoke-direct {v0, v1}, Lyads/ph5;-><init>(Lyads/oh5;)V

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/q26;->q:Lyads/u26;

    return-void
.end method

.method public static a()[Lyads/ws2;
    .locals 3

    .line 747
    new-instance v0, Lyads/q26;

    .line 748
    invoke-direct {v0}, Lyads/q26;-><init>()V

    const/4 v1, 0x1

    .line 749
    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    iget-wide v7, v2, Lyads/wk0;->c:J

    iget-boolean v3, v0, Lyads/q26;->n:Z

    const-wide/16 v11, -0x1

    const/16 v13, 0x47

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    cmp-long v3, v7, v11

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_10

    iget v3, v0, Lyads/q26;->a:I

    if-eq v3, v14, :cond_10

    iget-object v3, v0, Lyads/q26;->j:Lyads/n26;

    move-wide/from16 v16, v11

    iget-boolean v11, v3, Lyads/n26;->c:Z

    if-nez v11, :cond_11

    iget v0, v0, Lyads/q26;->s:I

    if-gtz v0, :cond_0

    iget-object v0, v3, Lyads/n26;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v15, v3, Lyads/n26;->c:Z

    iput v4, v2, Lyads/wk0;->f:I

    goto/16 :goto_7

    :cond_0
    iget-boolean v11, v3, Lyads/n26;->e:Z

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v9, 0x1b8a0

    if-nez v11, :cond_7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-long v9, v5

    sub-long/2addr v7, v9

    iget-wide v9, v2, Lyads/wk0;->d:J

    cmp-long v6, v9, v7

    if-eqz v6, :cond_1

    iput-wide v7, v1, Lyads/qx4;->a:J

    return v15

    :cond_1
    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    invoke-virtual {v1, v5}, Lyads/os4;->c(I)V

    iput v4, v2, Lyads/wk0;->f:I

    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v2, v1, v4, v5, v4}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    iget v2, v1, Lyads/os4;->b:I

    iget v5, v1, Lyads/os4;->c:I

    add-int/lit16 v6, v5, -0xbc

    :goto_0
    if-lt v6, v2, :cond_6

    iget-object v7, v1, Lyads/os4;->a:[B

    const/4 v8, -0x4

    move v9, v4

    :goto_1
    const/4 v10, 0x4

    if-gt v8, v10, :cond_5

    mul-int/lit16 v10, v8, 0xbc

    add-int/2addr v10, v6

    if-lt v10, v2, :cond_3

    if-ge v10, v5, :cond_3

    aget-byte v10, v7, v10

    if-eq v10, v13, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v9, v15

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    invoke-static {v1, v6, v0}, Lyads/v26;->a(Lyads/os4;II)J

    move-result-wide v7

    cmp-long v9, v7, v18

    if-eqz v9, :cond_5

    move-wide v9, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_6
    move-wide/from16 v9, v18

    :goto_3
    iput-wide v9, v3, Lyads/n26;->g:J

    iput-boolean v15, v3, Lyads/n26;->e:Z

    return v4

    :cond_7
    iget-wide v11, v3, Lyads/n26;->g:J

    cmp-long v11, v11, v18

    if-nez v11, :cond_8

    iget-object v0, v3, Lyads/n26;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v15, v3, Lyads/n26;->c:Z

    iput v4, v2, Lyads/wk0;->f:I

    goto/16 :goto_7

    :cond_8
    iget-boolean v11, v3, Lyads/n26;->d:Z

    if-nez v11, :cond_d

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    iget-wide v8, v2, Lyads/wk0;->d:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_9

    iput-wide v5, v1, Lyads/qx4;->a:J

    return v15

    :cond_9
    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    invoke-virtual {v1, v7}, Lyads/os4;->c(I)V

    iput v4, v2, Lyads/wk0;->f:I

    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v2, v1, v4, v7, v4}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v3, Lyads/n26;->b:Lyads/os4;

    iget v2, v1, Lyads/os4;->b:I

    iget v5, v1, Lyads/os4;->c:I

    :goto_4
    if-ge v2, v5, :cond_c

    iget-object v6, v1, Lyads/os4;->a:[B

    aget-byte v6, v6, v2

    if-eq v6, v13, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v1, v2, v0}, Lyads/v26;->a(Lyads/os4;II)J

    move-result-wide v6

    cmp-long v8, v6, v18

    if-eqz v8, :cond_b

    move-wide v9, v6

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    move-wide/from16 v9, v18

    :goto_6
    iput-wide v9, v3, Lyads/n26;->f:J

    iput-boolean v15, v3, Lyads/n26;->d:Z

    return v4

    :cond_d
    iget-wide v0, v3, Lyads/n26;->f:J

    cmp-long v7, v0, v18

    if-nez v7, :cond_e

    iget-object v0, v3, Lyads/n26;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v15, v3, Lyads/n26;->c:Z

    iput v4, v2, Lyads/wk0;->f:I

    goto :goto_7

    :cond_e
    iget-object v7, v3, Lyads/n26;->a:Lyads/vx5;

    invoke-virtual {v7, v0, v1}, Lyads/vx5;->b(J)J

    move-result-wide v0

    iget-object v7, v3, Lyads/n26;->a:Lyads/vx5;

    iget-wide v8, v3, Lyads/n26;->g:J

    invoke-virtual {v7, v8, v9}, Lyads/vx5;->b(J)J

    move-result-wide v7

    sub-long/2addr v7, v0

    iput-wide v7, v3, Lyads/n26;->h:J

    cmp-long v0, v7, v5

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid duration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v3, Lyads/n26;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". Using TIME_UNSET instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TsDurationReader"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lyads/n26;->h:J

    :cond_f
    iget-object v0, v3, Lyads/n26;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v15, v3, Lyads/n26;->c:Z

    iput v4, v2, Lyads/wk0;->f:I

    :goto_7
    return v4

    :cond_10
    move-wide/from16 v16, v11

    :cond_11
    iget-boolean v3, v0, Lyads/q26;->o:Z

    if-nez v3, :cond_13

    iput-boolean v15, v0, Lyads/q26;->o:Z

    iget-object v3, v0, Lyads/q26;->j:Lyads/n26;

    move-wide v9, v5

    iget-wide v5, v3, Lyads/n26;->h:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v5, v18

    if-eqz v11, :cond_12

    new-instance v11, Lyads/m26;

    iget-object v3, v3, Lyads/n26;->a:Lyads/vx5;

    move-wide/from16 v18, v9

    iget v9, v0, Lyads/q26;->s:I

    iget v10, v0, Lyads/q26;->b:I

    move/from16 p1, v4

    move-object v4, v3

    move-object v3, v11

    move/from16 v11, p1

    move/from16 p1, v15

    move-wide/from16 v14, v18

    invoke-direct/range {v3 .. v10}, Lyads/m26;-><init>(Lyads/vx5;JJII)V

    iput-object v3, v0, Lyads/q26;->k:Lyads/m26;

    iget-object v4, v0, Lyads/q26;->l:Lyads/zs2;

    iget-object v3, v3, Lyads/qt;->a:Lyads/kt;

    invoke-interface {v4, v3}, Lyads/zs2;->a(Lyads/sh5;)V

    goto :goto_8

    :cond_12
    move v11, v4

    move/from16 p1, v15

    move-wide v14, v9

    iget-object v3, v0, Lyads/q26;->l:Lyads/zs2;

    new-instance v4, Lyads/rh5;

    invoke-direct {v4, v5, v6, v14, v15}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v3, v4}, Lyads/zs2;->a(Lyads/sh5;)V

    goto :goto_8

    :cond_13
    move v11, v4

    move/from16 p1, v15

    move-wide v14, v5

    :goto_8
    iget-boolean v3, v0, Lyads/q26;->p:Z

    if-eqz v3, :cond_14

    iput-boolean v11, v0, Lyads/q26;->p:Z

    invoke-virtual {v0, v14, v15, v14, v15}, Lyads/q26;->a(JJ)V

    iget-wide v3, v2, Lyads/wk0;->d:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_14

    iput-wide v14, v1, Lyads/qx4;->a:J

    return p1

    :cond_14
    iget-object v3, v0, Lyads/q26;->k:Lyads/m26;

    if-eqz v3, :cond_16

    iget-object v4, v3, Lyads/qt;->c:Lyads/mt;

    if-eqz v4, :cond_16

    invoke-virtual {v3, v2, v1}, Lyads/qt;->a(Lyads/wk0;Lyads/qx4;)I

    move-result v0

    return v0

    :cond_15
    move-wide/from16 v16, v11

    move/from16 p1, v15

    move v11, v4

    :cond_16
    iget-object v1, v0, Lyads/q26;->d:Lyads/os4;

    iget-object v3, v1, Lyads/os4;->a:[B

    iget v4, v1, Lyads/os4;->b:I

    rsub-int v5, v4, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_18

    iget v1, v1, Lyads/os4;->c:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_17

    invoke-static {v3, v4, v3, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    iget-object v4, v0, Lyads/q26;->d:Lyads/os4;

    iput-object v3, v4, Lyads/os4;->a:[B

    iput v1, v4, Lyads/os4;->c:I

    iput v11, v4, Lyads/os4;->b:I

    :cond_18
    :goto_9
    iget-object v1, v0, Lyads/q26;->d:Lyads/os4;

    iget v4, v1, Lyads/os4;->c:I

    iget v5, v1, Lyads/os4;->b:I

    sub-int v9, v4, v5

    if-ge v9, v6, :cond_1a

    rsub-int v1, v4, 0x24b8

    invoke-virtual {v2, v3, v4, v1}, Lyads/wk0;->c([BII)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_19

    return v5

    :cond_19
    iget-object v5, v0, Lyads/q26;->d:Lyads/os4;

    add-int/2addr v4, v1

    invoke-virtual {v5, v4}, Lyads/os4;->d(I)V

    goto :goto_9

    :cond_1a
    iget-object v1, v1, Lyads/os4;->a:[B

    move v2, v5

    :goto_a
    if-ge v2, v4, :cond_1b

    aget-byte v3, v1, v2

    if-eq v3, v13, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    iget-object v1, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    add-int/lit16 v1, v2, 0xbc

    const/4 v3, 0x0

    if-le v1, v4, :cond_1d

    iget v4, v0, Lyads/q26;->r:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    iput v2, v0, Lyads/q26;->r:I

    iget v4, v0, Lyads/q26;->a:I

    const/4 v12, 0x2

    if-ne v4, v12, :cond_1e

    const/16 v4, 0x178

    if-gt v2, v4, :cond_1c

    goto :goto_b

    :cond_1c
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-static {v0, v3}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v11

    :cond_1d
    iput v11, v0, Lyads/q26;->r:I

    :cond_1e
    :goto_b
    iget-object v2, v0, Lyads/q26;->d:Lyads/os4;

    iget v4, v2, Lyads/os4;->c:I

    if-le v1, v4, :cond_1f

    return v11

    :cond_1f
    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    const/high16 v5, 0x800000

    and-int/2addr v5, v2

    if-eqz v5, :cond_20

    iget-object v0, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    return v11

    :cond_20
    const/high16 v5, 0x400000

    and-int/2addr v5, v2

    if-eqz v5, :cond_21

    move/from16 v5, p1

    goto :goto_c

    :cond_21
    move v5, v11

    :goto_c
    const v6, 0x1fff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_22

    move/from16 v9, p1

    goto :goto_d

    :cond_22
    move v9, v11

    :goto_d
    and-int/lit8 v10, v2, 0x10

    if-eqz v10, :cond_23

    iget-object v3, v0, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/u26;

    :cond_23
    if-nez v3, :cond_24

    iget-object v0, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    return v11

    :cond_24
    iget v10, v0, Lyads/q26;->a:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_26

    and-int/lit8 v2, v2, 0xf

    iget-object v10, v0, Lyads/q26;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v10, v6, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget-object v13, v0, Lyads/q26;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, v2, :cond_25

    iget-object v0, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    return v11

    :cond_25
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0xf

    if-eq v2, v10, :cond_26

    invoke-interface {v3}, Lyads/u26;->a()V

    :cond_26
    if-eqz v9, :cond_28

    iget-object v2, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v2

    iget-object v9, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v9}, Lyads/os4;->k()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_27

    const/4 v9, 0x2

    goto :goto_e

    :cond_27
    move v9, v11

    :goto_e
    or-int/2addr v5, v9

    iget-object v9, v0, Lyads/q26;->d:Lyads/os4;

    add-int/lit8 v2, v2, -0x1

    iget v10, v9, Lyads/os4;->b:I

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Lyads/os4;->e(I)V

    :cond_28
    iget-boolean v2, v0, Lyads/q26;->n:Z

    iget v9, v0, Lyads/q26;->a:I

    const/4 v12, 0x2

    if-eq v9, v12, :cond_29

    if-nez v2, :cond_29

    iget-object v9, v0, Lyads/q26;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_2a

    :cond_29
    iget-object v6, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v6, v1}, Lyads/os4;->d(I)V

    iget-object v6, v0, Lyads/q26;->d:Lyads/os4;

    invoke-interface {v3, v5, v6}, Lyads/u26;->a(ILyads/os4;)V

    iget-object v3, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v3, v4}, Lyads/os4;->d(I)V

    :cond_2a
    iget v3, v0, Lyads/q26;->a:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_2b

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lyads/q26;->n:Z

    if-eqz v2, :cond_2b

    cmp-long v2, v7, v16

    if-eqz v2, :cond_2b

    move/from16 v2, p1

    iput-boolean v2, v0, Lyads/q26;->p:Z

    :cond_2b
    iget-object v0, v0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    return v11
.end method

.method public final a(JJ)V
    .locals 10

    .line 731
    iget p1, p0, Lyads/q26;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    .line 732
    iget-object p1, p0, Lyads/q26;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_4

    .line 733
    iget-object v3, p0, Lyads/q26;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vx5;

    .line 734
    monitor-enter v3

    .line 735
    :try_start_0
    iget-wide v4, v3, Lyads/vx5;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, p2

    :goto_1
    if-nez v4, :cond_2

    .line 736
    invoke-virtual {v3}, Lyads/vx5;->a()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_1

    cmp-long v1, v8, v1

    if-eqz v1, :cond_1

    cmp-long v1, v8, p3

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v5, p2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-eqz v5, :cond_3

    .line 737
    invoke-virtual {v3, p3, p4}, Lyads/vx5;->c(J)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 738
    monitor-exit v3

    throw p0

    :cond_4
    cmp-long p1, p3, v1

    if-eqz p1, :cond_5

    .line 739
    iget-object p1, p0, Lyads/q26;->k:Lyads/m26;

    if-eqz p1, :cond_5

    .line 740
    invoke-virtual {p1, p3, p4}, Lyads/qt;->a(J)V

    .line 741
    :cond_5
    iget-object p1, p0, Lyads/q26;->d:Lyads/os4;

    invoke-virtual {p1, p2}, Lyads/os4;->c(I)V

    .line 742
    iget-object p1, p0, Lyads/q26;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, p2

    .line 743
    :goto_3
    iget-object p3, p0, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    .line 744
    iget-object p3, p0, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/u26;

    invoke-interface {p3}, Lyads/u26;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 745
    :cond_6
    iput p2, p0, Lyads/q26;->r:I

    return-void

    .line 746
    :cond_7
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lyads/q26;->l:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 5

    .line 724
    iget-object p0, p0, Lyads/q26;->d:Lyads/os4;

    .line 725
    iget-object p0, p0, Lyads/os4;->a:[B

    .line 726
    check-cast p1, Lyads/wk0;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    .line 727
    invoke-virtual {p1, p0, v0, v1, v0}, Lyads/wk0;->b([BIIZ)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    .line 728
    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 729
    :cond_1
    invoke-virtual {p1, v1}, Lyads/wk0;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
