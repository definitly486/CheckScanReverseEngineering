.class public final Lyads/gm2;
.super Lyads/xk5;
.source "SourceFile"


# instance fields
.field public final m:Lyads/pm2;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lyads/xk5;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length v1, p1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    new-instance v1, Lyads/pm2;

    invoke-direct {v1, v0, p1}, Lyads/pm2;-><init>(II)V

    iput-object v1, p0, Lyads/gm2;->m:Lyads/pm2;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lyads/mt5;
    .locals 34

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, v0, Lyads/gm2;->m:Lyads/pm2;

    iget-object v2, v2, Lyads/pm2;->f:Lyads/om2;

    iget-object v3, v2, Lyads/om2;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v2, Lyads/om2;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v2, Lyads/om2;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v2, Lyads/om2;->f:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v2, Lyads/om2;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iput-object v1, v2, Lyads/om2;->h:Lyads/im2;

    iput-object v1, v2, Lyads/om2;->i:Lyads/km2;

    :cond_0
    new-instance v2, Lyads/qm2;

    iget-object v0, v0, Lyads/gm2;->m:Lyads/pm2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/ns4;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lyads/ns4;-><init>([BI)V

    :goto_0
    invoke-virtual {v3}, Lyads/ns4;->b()I

    move-result v4

    const/16 v5, 0x30

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-lt v4, v5, :cond_c

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v5

    const/16 v10, 0xf

    if-ne v5, v10, :cond_c

    iget-object v5, v0, Lyads/pm2;->f:Lyads/om2;

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v12

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v13

    invoke-virtual {v3}, Lyads/ns4;->c()I

    move-result v14

    add-int/2addr v14, v13

    mul-int/lit8 v15, v13, 0x8

    invoke-virtual {v3}, Lyads/ns4;->b()I

    move-result v1

    if-le v15, v1, :cond_1

    const-string v1, "DvbParser"

    const-string v4, "Data field length exceeds limit"

    invoke-static {v1, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lyads/ns4;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Lyads/ns4;->c(I)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget v4, v5, Lyads/om2;->a:I

    if-ne v12, v4, :cond_b

    invoke-virtual {v3, v1}, Lyads/ns4;->c(I)V

    invoke-virtual {v3}, Lyads/ns4;->e()Z

    move-result v1

    invoke-virtual {v3, v7}, Lyads/ns4;->c(I)V

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v17

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v18

    if-eqz v1, :cond_2

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v6

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v1

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v4

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v7

    move/from16 v20, v1

    move/from16 v21, v4

    move/from16 v19, v6

    move/from16 v22, v7

    goto :goto_2

    :cond_2
    move/from16 v20, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_2
    new-instance v16, Lyads/im2;

    invoke-direct/range {v16 .. v22}, Lyads/im2;-><init>(IIIIII)V

    move-object/from16 v1, v16

    iput-object v1, v5, Lyads/om2;->h:Lyads/im2;

    goto/16 :goto_8

    :pswitch_1
    iget v1, v5, Lyads/om2;->a:I

    if-ne v12, v1, :cond_3

    invoke-static {v3}, Lyads/pm2;->a(Lyads/ns4;)Lyads/jm2;

    move-result-object v1

    iget-object v4, v5, Lyads/om2;->e:Landroid/util/SparseArray;

    iget v5, v1, Lyads/jm2;->a:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget v1, v5, Lyads/om2;->b:I

    if-ne v12, v1, :cond_b

    invoke-static {v3}, Lyads/pm2;->a(Lyads/ns4;)Lyads/jm2;

    move-result-object v1

    iget-object v4, v5, Lyads/om2;->g:Landroid/util/SparseArray;

    iget v5, v1, Lyads/jm2;->a:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget v1, v5, Lyads/om2;->a:I

    if-ne v12, v1, :cond_4

    invoke-static {v3, v13}, Lyads/pm2;->a(Lyads/ns4;I)Lyads/hm2;

    move-result-object v1

    iget-object v4, v5, Lyads/om2;->d:Landroid/util/SparseArray;

    iget v5, v1, Lyads/hm2;->a:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_4
    iget v1, v5, Lyads/om2;->b:I

    if-ne v12, v1, :cond_b

    invoke-static {v3, v13}, Lyads/pm2;->a(Lyads/ns4;I)Lyads/hm2;

    move-result-object v1

    iget-object v4, v5, Lyads/om2;->f:Landroid/util/SparseArray;

    iget v5, v1, Lyads/hm2;->a:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget-object v10, v5, Lyads/om2;->i:Lyads/km2;

    iget v15, v5, Lyads/om2;->a:I

    if-ne v12, v15, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v17

    invoke-virtual {v3, v1}, Lyads/ns4;->c(I)V

    invoke-virtual {v3}, Lyads/ns4;->e()Z

    move-result v18

    invoke-virtual {v3, v7}, Lyads/ns4;->c(I)V

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v19

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v20

    invoke-virtual {v3, v7}, Lyads/ns4;->a(I)I

    invoke-virtual {v3, v7}, Lyads/ns4;->a(I)I

    move-result v21

    invoke-virtual {v3, v9}, Lyads/ns4;->c(I)V

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v22

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v23

    invoke-virtual {v3, v1}, Lyads/ns4;->a(I)I

    move-result v24

    invoke-virtual {v3, v9}, Lyads/ns4;->a(I)I

    move-result v25

    invoke-virtual {v3, v9}, Lyads/ns4;->c(I)V

    add-int/lit8 v13, v13, -0xa

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_3
    if-lez v13, :cond_7

    invoke-virtual {v3, v11}, Lyads/ns4;->a(I)I

    move-result v12

    invoke-virtual {v3, v9}, Lyads/ns4;->a(I)I

    move-result v15

    invoke-virtual {v3, v9}, Lyads/ns4;->a(I)I

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lyads/ns4;->a(I)I

    move-result v11

    invoke-virtual {v3, v1}, Lyads/ns4;->c(I)V

    invoke-virtual {v3, v6}, Lyads/ns4;->a(I)I

    move-result v6

    add-int/lit8 v16, v13, -0x6

    if-eq v15, v8, :cond_6

    if-ne v15, v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v13, v16

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    add-int/lit8 v13, v13, -0x8

    :goto_5
    new-instance v15, Lyads/nm2;

    invoke-direct {v15, v11, v6}, Lyads/nm2;-><init>(II)V

    invoke-virtual {v7, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v11, 0x10

    goto :goto_3

    :cond_7
    new-instance v16, Lyads/mm2;

    move-object/from16 v26, v7

    invoke-direct/range {v16 .. v26}, Lyads/mm2;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    move-object/from16 v4, v16

    move/from16 v1, v17

    iget v6, v10, Lyads/km2;->b:I

    if-nez v6, :cond_8

    iget-object v6, v5, Lyads/om2;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/mm2;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lyads/mm2;->j:Landroid/util/SparseArray;

    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    iget-object v7, v4, Lyads/mm2;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/nm2;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    iget-object v1, v5, Lyads/om2;->c:Landroid/util/SparseArray;

    iget v5, v4, Lyads/mm2;->a:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    iget v6, v5, Lyads/om2;->a:I

    if-ne v12, v6, :cond_b

    iget-object v6, v5, Lyads/om2;->i:Lyads/km2;

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    invoke-virtual {v3, v1}, Lyads/ns4;->a(I)I

    move-result v1

    invoke-virtual {v3, v9}, Lyads/ns4;->a(I)I

    move-result v7

    invoke-virtual {v3, v9}, Lyads/ns4;->c(I)V

    add-int/lit8 v13, v13, -0x2

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    :goto_7
    if-lez v13, :cond_9

    invoke-virtual {v3, v4}, Lyads/ns4;->a(I)I

    move-result v9

    invoke-virtual {v3, v4}, Lyads/ns4;->c(I)V

    const/16 v10, 0x10

    invoke-virtual {v3, v10}, Lyads/ns4;->a(I)I

    move-result v11

    invoke-virtual {v3, v10}, Lyads/ns4;->a(I)I

    move-result v12

    add-int/lit8 v13, v13, -0x6

    new-instance v15, Lyads/lm2;

    invoke-direct {v15, v11, v12}, Lyads/lm2;-><init>(II)V

    invoke-virtual {v8, v9, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    new-instance v4, Lyads/km2;

    invoke-direct {v4, v1, v7, v8}, Lyads/km2;-><init>(IILandroid/util/SparseArray;)V

    if-eqz v7, :cond_a

    iput-object v4, v5, Lyads/om2;->i:Lyads/km2;

    iget-object v1, v5, Lyads/om2;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v5, Lyads/om2;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v5, Lyads/om2;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_8

    :cond_a
    if-eqz v6, :cond_b

    iget v6, v6, Lyads/km2;->a:I

    if-eq v6, v1, :cond_b

    iput-object v4, v5, Lyads/om2;->i:Lyads/km2;

    :cond_b
    :goto_8
    invoke-virtual {v3}, Lyads/ns4;->c()I

    move-result v1

    sub-int/2addr v14, v1

    invoke-virtual {v3, v14}, Lyads/ns4;->d(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v3, v1, Lyads/om2;->i:Lyads/km2;

    if-nez v3, :cond_d

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_11

    :cond_d
    iget-object v1, v1, Lyads/om2;->h:Lyads/im2;

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    iget-object v1, v0, Lyads/pm2;->d:Lyads/im2;

    :goto_9
    iget-object v4, v0, Lyads/pm2;->g:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    iget v5, v1, Lyads/im2;->a:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v5, v4, :cond_f

    iget v4, v1, Lyads/im2;->b:I

    add-int/2addr v4, v8

    iget-object v5, v0, Lyads/pm2;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_10

    :cond_f
    iget v4, v1, Lyads/im2;->a:I

    add-int/2addr v4, v8

    iget v5, v1, Lyads/im2;->b:I

    add-int/2addr v5, v8

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lyads/pm2;->g:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v3, Lyads/km2;->c:Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1b

    iget-object v6, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/lm2;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    iget-object v11, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v11, v11, Lyads/om2;->c:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/mm2;

    iget v11, v6, Lyads/lm2;->a:I

    iget v12, v1, Lyads/im2;->c:I

    add-int/2addr v11, v12

    iget v6, v6, Lyads/lm2;->b:I

    iget v12, v1, Lyads/im2;->e:I

    add-int/2addr v6, v12

    iget v12, v10, Lyads/mm2;->c:I

    add-int/2addr v12, v11

    iget v13, v1, Lyads/im2;->d:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v10, Lyads/mm2;->d:I

    add-int/2addr v13, v6

    iget v14, v1, Lyads/im2;->f:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v14, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    invoke-virtual {v14, v11, v6, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v12, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v12, v12, Lyads/om2;->d:Landroid/util/SparseArray;

    iget v13, v10, Lyads/mm2;->f:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/hm2;

    if-nez v12, :cond_11

    iget-object v12, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v12, v12, Lyads/om2;->f:Landroid/util/SparseArray;

    iget v13, v10, Lyads/mm2;->f:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/hm2;

    if-nez v12, :cond_11

    iget-object v12, v0, Lyads/pm2;->e:Lyads/hm2;

    :cond_11
    iget-object v13, v10, Lyads/mm2;->j:Landroid/util/SparseArray;

    const/4 v14, 0x0

    :goto_b
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_17

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v8

    move-object/from16 v8, v16

    check-cast v8, Lyads/nm2;

    iget-object v9, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v9, v9, Lyads/om2;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/jm2;

    if-nez v9, :cond_12

    iget-object v9, v0, Lyads/pm2;->f:Lyads/om2;

    iget-object v9, v9, Lyads/om2;->g:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/jm2;

    :cond_12
    if-eqz v9, :cond_16

    iget-boolean v15, v9, Lyads/jm2;->b:Z

    if-eqz v15, :cond_13

    const/16 v21, 0x0

    goto :goto_c

    :cond_13
    iget-object v15, v0, Lyads/pm2;->a:Landroid/graphics/Paint;

    move-object/from16 v21, v15

    :goto_c
    iget v15, v10, Lyads/mm2;->e:I

    iget v7, v8, Lyads/nm2;->a:I

    add-int v19, v11, v7

    iget v7, v8, Lyads/nm2;->b:I

    add-int v20, v6, v7

    iget-object v7, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    const/4 v8, 0x3

    if-ne v15, v8, :cond_14

    iget-object v8, v12, Lyads/hm2;->d:[I

    :goto_d
    move-object/from16 v17, v8

    goto :goto_e

    :cond_14
    const/4 v8, 0x2

    if-ne v15, v8, :cond_15

    iget-object v8, v12, Lyads/hm2;->c:[I

    goto :goto_d

    :cond_15
    iget-object v8, v12, Lyads/hm2;->b:[I

    goto :goto_d

    :goto_e
    iget-object v8, v9, Lyads/jm2;->c:[B

    move-object/from16 v22, v7

    move-object/from16 v16, v8

    move/from16 v18, v15

    invoke-static/range {v16 .. v22}, Lyads/pm2;->a([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v7, v9, Lyads/jm2;->d:[B

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v22}, Lyads/pm2;->a([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :cond_16
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p1

    const/4 v7, 0x3

    const/4 v9, 0x2

    goto :goto_b

    :cond_17
    move/from16 p1, v8

    iget-boolean v7, v10, Lyads/mm2;->b:Z

    if-eqz v7, :cond_1a

    iget v7, v10, Lyads/mm2;->e:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_18

    iget-object v7, v12, Lyads/hm2;->d:[I

    iget v9, v10, Lyads/mm2;->g:I

    aget v7, v7, v9

    const/4 v9, 0x2

    goto :goto_f

    :cond_18
    const/4 v9, 0x2

    if-ne v7, v9, :cond_19

    iget-object v7, v12, Lyads/hm2;->c:[I

    iget v12, v10, Lyads/mm2;->h:I

    aget v7, v7, v12

    goto :goto_f

    :cond_19
    iget-object v7, v12, Lyads/hm2;->b:[I

    iget v12, v10, Lyads/mm2;->i:I

    aget v7, v7, v12

    :goto_f
    iget-object v12, v0, Lyads/pm2;->b:Landroid/graphics/Paint;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    int-to-float v12, v11

    int-to-float v13, v6

    iget v14, v10, Lyads/mm2;->c:I

    add-int/2addr v14, v11

    int-to-float v14, v14

    iget v15, v10, Lyads/mm2;->d:I

    add-int/2addr v15, v6

    int-to-float v15, v15

    iget-object v8, v0, Lyads/pm2;->b:Landroid/graphics/Paint;

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_1a
    const/4 v9, 0x2

    :goto_10
    iget-object v7, v0, Lyads/pm2;->g:Landroid/graphics/Bitmap;

    iget v8, v10, Lyads/mm2;->c:I

    iget v12, v10, Lyads/mm2;->d:I

    invoke-static {v7, v11, v6, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v20

    int-to-float v7, v11

    iget v8, v1, Lyads/im2;->a:I

    int-to-float v8, v8

    div-float v24, v7, v8

    int-to-float v6, v6

    iget v7, v1, Lyads/im2;->b:I

    int-to-float v7, v7

    div-float v21, v6, v7

    iget v6, v10, Lyads/mm2;->c:I

    int-to-float v6, v6

    div-float v28, v6, v8

    iget v6, v10, Lyads/mm2;->d:I

    int-to-float v6, v6

    div-float v29, v6, v7

    new-instance v16, Lyads/sb0;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/high16 v26, -0x80000000

    const v27, -0x800001

    const/16 v30, 0x0

    const/high16 v31, -0x1000000

    const/high16 v32, -0x80000000

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v33}, Lyads/sb0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, v0, Lyads/pm2;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    const/4 v7, 0x3

    goto/16 :goto_a

    :cond_1b
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_11
    invoke-direct {v2, v0}, Lyads/qm2;-><init>(Ljava/util/List;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
