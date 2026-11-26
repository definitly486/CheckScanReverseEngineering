.class public final Lyads/i83;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k06;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:Lyads/ps4;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lyads/h83;

.field public n:Lyads/h83;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lyads/k06;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/i83;->a:Lyads/k06;

    iput-boolean p2, p0, Lyads/i83;->b:Z

    iput-boolean p3, p0, Lyads/i83;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/i83;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/i83;->e:Landroid/util/SparseArray;

    new-instance p1, Lyads/h83;

    invoke-direct {p1}, Lyads/h83;-><init>()V

    iput-object p1, p0, Lyads/i83;->m:Lyads/h83;

    new-instance p1, Lyads/h83;

    invoke-direct {p1}, Lyads/h83;-><init>()V

    iput-object p1, p0, Lyads/i83;->n:Lyads/h83;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lyads/i83;->g:[B

    new-instance p2, Lyads/ps4;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lyads/ps4;-><init>([BII)V

    iput-object p2, p0, Lyads/i83;->f:Lyads/ps4;

    iput-boolean p3, p0, Lyads/i83;->k:Z

    iput-boolean p3, p0, Lyads/i83;->o:Z

    iget-object p0, p0, Lyads/i83;->n:Lyads/h83;

    iput-boolean p3, p0, Lyads/h83;->b:Z

    iput-boolean p3, p0, Lyads/h83;->a:Z

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lyads/i83;->k:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, v0, Lyads/i83;->g:[B

    array-length v4, v3

    iget v5, v0, Lyads/i83;->h:I

    add-int/2addr v5, v2

    const/4 v6, 0x2

    if-ge v4, v5, :cond_1

    mul-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lyads/i83;->g:[B

    :cond_1
    iget v4, v0, Lyads/i83;->h:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lyads/i83;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lyads/i83;->h:I

    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    iget-object v3, v0, Lyads/i83;->g:[B

    iput-object v3, v2, Lyads/ps4;->a:[B

    const/4 v3, 0x0

    iput v3, v2, Lyads/ps4;->c:I

    iput v1, v2, Lyads/ps4;->b:I

    iput v3, v2, Lyads/ps4;->d:I

    invoke-virtual {v2}, Lyads/ps4;->a()V

    iget-object v1, v0, Lyads/i83;->f:Lyads/ps4;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lyads/ps4;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v1, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v1}, Lyads/ps4;->f()V

    iget-object v1, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v1

    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lyads/ps4;->d(I)V

    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v2}, Lyads/ps4;->b()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v2}, Lyads/ps4;->d()I

    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v2}, Lyads/ps4;->b()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v2, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v2}, Lyads/ps4;->d()I

    move-result v2

    iget-boolean v5, v0, Lyads/i83;->c:Z

    const/4 v7, 0x1

    if-nez v5, :cond_5

    iput-boolean v3, v0, Lyads/i83;->k:Z

    iget-object v0, v0, Lyads/i83;->n:Lyads/h83;

    iput v2, v0, Lyads/h83;->e:I

    iput-boolean v7, v0, Lyads/h83;->b:Z

    return-void

    :cond_5
    iget-object v5, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v5}, Lyads/ps4;->b()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v5, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v5}, Lyads/ps4;->d()I

    move-result v5

    iget-object v8, v0, Lyads/i83;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_7

    iput-boolean v3, v0, Lyads/i83;->k:Z

    return-void

    :cond_7
    iget-object v8, v0, Lyads/i83;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/od4;

    iget-object v9, v0, Lyads/i83;->d:Landroid/util/SparseArray;

    iget v10, v8, Lyads/od4;->a:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/pd4;

    iget-boolean v10, v9, Lyads/pd4;->h:Z

    if-eqz v10, :cond_9

    iget-object v10, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v10, v6}, Lyads/ps4;->a(I)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object v10, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v10, v6}, Lyads/ps4;->d(I)V

    :cond_9
    iget-object v6, v0, Lyads/i83;->f:Lyads/ps4;

    iget v10, v9, Lyads/pd4;->j:I

    invoke-virtual {v6, v10}, Lyads/ps4;->a(I)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_4

    :cond_a
    iget-object v6, v0, Lyads/i83;->f:Lyads/ps4;

    iget v10, v9, Lyads/pd4;->j:I

    invoke-virtual {v6, v10}, Lyads/ps4;->b(I)I

    move-result v6

    iget-boolean v10, v9, Lyads/pd4;->i:Z

    if-nez v10, :cond_e

    iget-object v10, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v10, v7}, Lyads/ps4;->a(I)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_4

    :cond_b
    iget-object v10, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v10}, Lyads/ps4;->c()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v11, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v11, v7}, Lyads/ps4;->a(I)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_4

    :cond_c
    iget-object v11, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v11}, Lyads/ps4;->c()Z

    move-result v11

    move v12, v7

    goto :goto_1

    :cond_d
    move v11, v3

    :goto_0
    move v12, v11

    goto :goto_1

    :cond_e
    move v10, v3

    move v11, v10

    goto :goto_0

    :goto_1
    iget v13, v0, Lyads/i83;->i:I

    if-ne v13, v4, :cond_f

    move v4, v7

    goto :goto_2

    :cond_f
    move v4, v3

    :goto_2
    if-eqz v4, :cond_11

    iget-object v13, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v13}, Lyads/ps4;->b()Z

    move-result v13

    if-nez v13, :cond_10

    goto/16 :goto_4

    :cond_10
    iget-object v13, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v13}, Lyads/ps4;->d()I

    move-result v13

    goto :goto_3

    :cond_11
    move v13, v3

    :goto_3
    iget v14, v9, Lyads/pd4;->k:I

    if-nez v14, :cond_15

    iget-object v14, v0, Lyads/i83;->f:Lyads/ps4;

    iget v15, v9, Lyads/pd4;->l:I

    invoke-virtual {v14, v15}, Lyads/ps4;->a(I)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_4

    :cond_12
    iget-object v14, v0, Lyads/i83;->f:Lyads/ps4;

    iget v15, v9, Lyads/pd4;->l:I

    invoke-virtual {v14, v15}, Lyads/ps4;->b(I)I

    move-result v14

    iget-boolean v8, v8, Lyads/od4;->b:Z

    if-eqz v8, :cond_14

    if-nez v10, :cond_14

    iget-object v8, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v8}, Lyads/ps4;->b()Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_4

    :cond_13
    iget-object v8, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v8}, Lyads/ps4;->e()I

    move-result v8

    move v15, v14

    move v14, v3

    goto :goto_5

    :cond_14
    move v8, v3

    move v15, v14

    move v14, v8

    goto :goto_5

    :cond_15
    if-ne v14, v7, :cond_19

    iget-boolean v14, v9, Lyads/pd4;->m:Z

    if-nez v14, :cond_19

    iget-object v14, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v14}, Lyads/ps4;->b()Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_4

    :cond_16
    iget-object v14, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v14}, Lyads/ps4;->e()I

    move-result v14

    iget-boolean v8, v8, Lyads/od4;->b:Z

    if-eqz v8, :cond_18

    if-nez v10, :cond_18

    iget-object v8, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v8}, Lyads/ps4;->b()Z

    move-result v8

    if-nez v8, :cond_17

    :goto_4
    return-void

    :cond_17
    iget-object v8, v0, Lyads/i83;->f:Lyads/ps4;

    invoke-virtual {v8}, Lyads/ps4;->e()I

    move-result v8

    move v15, v3

    move v3, v14

    move v14, v8

    move v8, v15

    goto :goto_5

    :cond_18
    move v8, v3

    move v15, v8

    move v3, v14

    move v14, v15

    goto :goto_5

    :cond_19
    move v8, v3

    move v14, v8

    move v15, v14

    :goto_5
    iget-object v7, v0, Lyads/i83;->n:Lyads/h83;

    iput-object v9, v7, Lyads/h83;->c:Lyads/pd4;

    iput v1, v7, Lyads/h83;->d:I

    iput v2, v7, Lyads/h83;->e:I

    iput v6, v7, Lyads/h83;->f:I

    iput v5, v7, Lyads/h83;->g:I

    iput-boolean v10, v7, Lyads/h83;->h:Z

    iput-boolean v12, v7, Lyads/h83;->i:Z

    iput-boolean v11, v7, Lyads/h83;->j:Z

    iput-boolean v4, v7, Lyads/h83;->k:Z

    iput v13, v7, Lyads/h83;->l:I

    iput v15, v7, Lyads/h83;->m:I

    iput v8, v7, Lyads/h83;->n:I

    iput v3, v7, Lyads/h83;->o:I

    iput v14, v7, Lyads/h83;->p:I

    const/4 v1, 0x1

    iput-boolean v1, v7, Lyads/h83;->a:Z

    iput-boolean v1, v7, Lyads/h83;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/i83;->k:Z

    return-void
.end method
