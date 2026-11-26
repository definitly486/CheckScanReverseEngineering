.class public final Lyads/p26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oh5;


# instance fields
.field public final a:Lyads/ns4;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Lyads/q26;


# direct methods
.method public constructor <init>(Lyads/q26;I)V
    .locals 1

    iput-object p1, p0, Lyads/p26;->e:Lyads/q26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyads/ns4;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lyads/ns4;-><init>([B)V

    iput-object p1, p0, Lyads/p26;->a:Lyads/ns4;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/p26;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    iput p2, p0, Lyads/p26;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lyads/os4;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v2, v0, Lyads/p26;->e:Lyads/q26;

    iget v4, v2, Lyads/q26;->a:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    if-eq v4, v3, :cond_2

    iget v4, v2, Lyads/q26;->m:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lyads/vx5;

    iget-object v2, v2, Lyads/q26;->c:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/vx5;

    invoke-virtual {v2}, Lyads/vx5;->a()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Lyads/vx5;-><init>(J)V

    iget-object v2, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v2, v2, Lyads/q26;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v2, Lyads/q26;->c:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lyads/vx5;

    :goto_1
    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    goto/16 :goto_12

    :cond_3
    iget v2, v1, Lyads/os4;->b:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    invoke-virtual {v1}, Lyads/os4;->p()I

    move-result v2

    iget v7, v1, Lyads/os4;->b:I

    const/4 v8, 0x3

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lyads/os4;->e(I)V

    iget-object v7, v0, Lyads/p26;->a:Lyads/ns4;

    iget-object v9, v7, Lyads/ns4;->a:[B

    invoke-virtual {v1, v9, v6, v3}, Lyads/os4;->a([BII)V

    invoke-virtual {v7, v6}, Lyads/ns4;->b(I)V

    iget-object v7, v0, Lyads/p26;->a:Lyads/ns4;

    invoke-virtual {v7, v8}, Lyads/ns4;->c(I)V

    iget-object v7, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v9, v0, Lyads/p26;->a:Lyads/ns4;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lyads/ns4;->a(I)I

    move-result v9

    iput v9, v7, Lyads/q26;->s:I

    iget-object v7, v0, Lyads/p26;->a:Lyads/ns4;

    iget-object v9, v7, Lyads/ns4;->a:[B

    invoke-virtual {v1, v9, v6, v3}, Lyads/os4;->a([BII)V

    invoke-virtual {v7, v6}, Lyads/ns4;->b(I)V

    iget-object v7, v0, Lyads/p26;->a:Lyads/ns4;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lyads/ns4;->c(I)V

    iget-object v7, v0, Lyads/p26;->a:Lyads/ns4;

    const/16 v11, 0xc

    invoke-virtual {v7, v11}, Lyads/ns4;->a(I)I

    move-result v7

    iget v12, v1, Lyads/os4;->b:I

    add-int/2addr v12, v7

    invoke-virtual {v1, v12}, Lyads/os4;->e(I)V

    iget-object v7, v0, Lyads/p26;->e:Lyads/q26;

    iget v12, v7, Lyads/q26;->a:I

    const/16 v13, 0x2000

    const/4 v14, 0x0

    const/16 v15, 0x15

    if-ne v12, v3, :cond_4

    iget-object v7, v7, Lyads/q26;->q:Lyads/u26;

    if-nez v7, :cond_4

    new-instance v7, Lyads/s26;

    sget-object v12, Lyads/u56;->f:[B

    invoke-direct {v7, v15, v14, v14, v12}, Lyads/s26;-><init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V

    iget-object v12, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v14, v12, Lyads/q26;->f:Lyads/vm0;

    invoke-virtual {v14, v15, v7}, Lyads/vm0;->a(ILyads/s26;)Lyads/u26;

    move-result-object v7

    iput-object v7, v12, Lyads/q26;->q:Lyads/u26;

    iget-object v7, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v12, v7, Lyads/q26;->q:Lyads/u26;

    if-eqz v12, :cond_4

    iget-object v7, v7, Lyads/q26;->l:Lyads/zs2;

    new-instance v14, Lyads/t26;

    invoke-direct {v14, v2, v15, v13}, Lyads/t26;-><init>(III)V

    invoke-interface {v12, v4, v7, v14}, Lyads/u26;->a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V

    :cond_4
    iget-object v7, v0, Lyads/p26;->b:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    iget-object v7, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    iget v7, v1, Lyads/os4;->c:I

    iget v12, v1, Lyads/os4;->b:I

    sub-int/2addr v7, v12

    :goto_2
    if-lez v7, :cond_1c

    iget-object v12, v0, Lyads/p26;->a:Lyads/ns4;

    iget-object v14, v12, Lyads/ns4;->a:[B

    const/4 v5, 0x5

    invoke-virtual {v1, v14, v6, v5}, Lyads/os4;->a([BII)V

    invoke-virtual {v12, v6}, Lyads/ns4;->b(I)V

    iget-object v12, v0, Lyads/p26;->a:Lyads/ns4;

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lyads/ns4;->a(I)I

    move-result v12

    iget-object v14, v0, Lyads/p26;->a:Lyads/ns4;

    invoke-virtual {v14, v8}, Lyads/ns4;->c(I)V

    iget-object v14, v0, Lyads/p26;->a:Lyads/ns4;

    invoke-virtual {v14, v10}, Lyads/ns4;->a(I)I

    move-result v14

    iget-object v10, v0, Lyads/p26;->a:Lyads/ns4;

    invoke-virtual {v10, v9}, Lyads/ns4;->c(I)V

    iget-object v10, v0, Lyads/p26;->a:Lyads/ns4;

    invoke-virtual {v10, v11}, Lyads/ns4;->a(I)I

    move-result v10

    iget v11, v1, Lyads/os4;->b:I

    add-int v13, v11, v10

    const/16 v16, -0x1

    move/from16 v3, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3
    iget v6, v1, Lyads/os4;->b:I

    if-ge v6, v13, :cond_13

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v6

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v19

    iget v9, v1, Lyads/os4;->b:I

    add-int v9, v9, v19

    if-le v9, v13, :cond_5

    const/4 v5, 0x4

    goto/16 :goto_a

    :cond_5
    if-ne v6, v5, :cond_a

    invoke-virtual {v1}, Lyads/os4;->l()J

    move-result-wide v20

    const-wide/32 v22, 0x41432d33

    cmp-long v6, v20, v22

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    const-wide/32 v22, 0x45414333

    cmp-long v6, v20, v22

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    const-wide/32 v22, 0x41432d34

    cmp-long v6, v20, v22

    if-nez v6, :cond_8

    goto :goto_7

    :cond_8
    const-wide/32 v22, 0x48455643

    cmp-long v6, v20, v22

    if-nez v6, :cond_9

    const/16 v3, 0x24

    :cond_9
    :goto_4
    const/4 v5, 0x4

    goto/16 :goto_9

    :cond_a
    const/16 v5, 0x6a

    if-ne v6, v5, :cond_b

    :goto_5
    const/16 v3, 0x81

    goto :goto_4

    :cond_b
    const/16 v5, 0x7a

    if-ne v6, v5, :cond_c

    :goto_6
    const/16 v3, 0x87

    goto :goto_4

    :cond_c
    const/16 v5, 0x7f

    if-ne v6, v5, :cond_d

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v5

    if-ne v5, v15, :cond_9

    :goto_7
    const/16 v3, 0xac

    goto :goto_4

    :cond_d
    const/16 v5, 0x7b

    if-ne v6, v5, :cond_e

    const/16 v3, 0x8a

    goto :goto_4

    :cond_e
    const/16 v5, 0xa

    if-ne v6, v5, :cond_f

    sget-object v5, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8, v5}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :cond_f
    const/16 v5, 0x59

    if-ne v6, v5, :cond_11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    iget v6, v1, Lyads/os4;->b:I

    if-ge v6, v9, :cond_10

    sget-object v6, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8, v6}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lyads/os4;->k()I

    const/4 v5, 0x4

    new-array v8, v5, [B

    const/4 v15, 0x0

    invoke-virtual {v1, v8, v15, v5}, Lyads/os4;->a([BII)V

    new-instance v15, Lyads/r26;

    invoke-direct {v15, v6, v8}, Lyads/r26;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x59

    const/4 v8, 0x3

    const/16 v15, 0x15

    goto :goto_8

    :cond_10
    const/4 v5, 0x4

    move-object/from16 v18, v3

    const/16 v3, 0x59

    goto :goto_9

    :cond_11
    const/4 v5, 0x4

    const/16 v8, 0x6f

    if-ne v6, v8, :cond_12

    const/16 v3, 0x101

    :cond_12
    :goto_9
    iget v6, v1, Lyads/os4;->b:I

    sub-int/2addr v9, v6

    add-int/2addr v9, v6

    invoke-virtual {v1, v9}, Lyads/os4;->e(I)V

    move v9, v5

    const/4 v5, 0x5

    const/4 v8, 0x3

    const/16 v15, 0x15

    goto/16 :goto_3

    :cond_13
    move v5, v9

    :goto_a
    invoke-virtual {v1, v13}, Lyads/os4;->e(I)V

    new-instance v6, Lyads/s26;

    iget-object v8, v1, Lyads/os4;->a:[B

    invoke-static {v8, v11, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object/from16 v9, v17

    move-object/from16 v11, v18

    invoke-direct {v6, v3, v9, v11, v8}, Lyads/s26;-><init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V

    const/4 v8, 0x6

    if-eq v12, v8, :cond_14

    const/4 v8, 0x5

    if-ne v12, v8, :cond_15

    :cond_14
    move v12, v3

    :cond_15
    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v7, v10

    iget-object v3, v0, Lyads/p26;->e:Lyads/q26;

    iget v8, v3, Lyads/q26;->a:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_16

    move v8, v12

    goto :goto_b

    :cond_16
    move v8, v14

    :goto_b
    iget-object v3, v3, Lyads/q26;->h:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v10, 0x15

    goto :goto_d

    :cond_17
    iget-object v3, v0, Lyads/p26;->e:Lyads/q26;

    iget v10, v3, Lyads/q26;->a:I

    if-ne v10, v9, :cond_18

    const/16 v10, 0x15

    if-ne v12, v10, :cond_19

    iget-object v3, v3, Lyads/q26;->q:Lyads/u26;

    goto :goto_c

    :cond_18
    const/16 v10, 0x15

    :cond_19
    iget-object v3, v3, Lyads/q26;->f:Lyads/vm0;

    invoke-virtual {v3, v12, v6}, Lyads/vm0;->a(ILyads/s26;)Lyads/u26;

    move-result-object v3

    :goto_c
    iget-object v6, v0, Lyads/p26;->e:Lyads/q26;

    iget v6, v6, Lyads/q26;->a:I

    if-ne v6, v9, :cond_1a

    iget-object v6, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    const/16 v9, 0x2000

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ge v14, v6, :cond_1b

    :cond_1a
    iget-object v6, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v6, v0, Lyads/p26;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    :goto_d
    move v9, v5

    move v15, v10

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v13, 0x2000

    goto/16 :goto_2

    :cond_1c
    iget-object v1, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v1, :cond_1f

    iget-object v3, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v5, v0, Lyads/p26;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v6, v6, Lyads/q26;->h:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v6, v6, Lyads/q26;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, v0, Lyads/p26;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/u26;

    if-eqz v6, :cond_1e

    iget-object v7, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v8, v7, Lyads/q26;->q:Lyads/u26;

    if-eq v6, v8, :cond_1d

    iget-object v7, v7, Lyads/q26;->l:Lyads/zs2;

    new-instance v8, Lyads/t26;

    const/16 v9, 0x2000

    invoke-direct {v8, v2, v3, v9}, Lyads/t26;-><init>(III)V

    invoke-interface {v6, v4, v7, v8}, Lyads/u26;->a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V

    goto :goto_f

    :cond_1d
    const/16 v9, 0x2000

    :goto_f
    iget-object v3, v0, Lyads/p26;->e:Lyads/q26;

    iget-object v3, v3, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1e
    const/16 v9, 0x2000

    :goto_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_1f
    iget-object v1, v0, Lyads/p26;->e:Lyads/q26;

    iget v2, v1, Lyads/q26;->a:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_20

    iget-boolean v2, v1, Lyads/q26;->n:Z

    if-nez v2, :cond_22

    iget-object v1, v1, Lyads/q26;->l:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    iget-object v0, v0, Lyads/p26;->e:Lyads/q26;

    const/4 v15, 0x0

    iput v15, v0, Lyads/q26;->m:I

    const/4 v7, 0x1

    iput-boolean v7, v0, Lyads/q26;->n:Z

    return-void

    :cond_20
    const/4 v7, 0x1

    const/4 v15, 0x0

    iget-object v1, v1, Lyads/q26;->g:Landroid/util/SparseArray;

    iget v2, v0, Lyads/p26;->d:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lyads/p26;->e:Lyads/q26;

    iget v2, v1, Lyads/q26;->a:I

    if-ne v2, v7, :cond_21

    move v6, v15

    goto :goto_11

    :cond_21
    iget v2, v1, Lyads/q26;->m:I

    add-int/lit8 v6, v2, -0x1

    :goto_11
    iput v6, v1, Lyads/q26;->m:I

    if-nez v6, :cond_22

    iget-object v1, v1, Lyads/q26;->l:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    iget-object v0, v0, Lyads/p26;->e:Lyads/q26;

    iput-boolean v7, v0, Lyads/q26;->n:Z

    :cond_22
    :goto_12
    return-void
.end method

.method public final a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V
    .locals 0

    .line 701
    return-void
.end method
