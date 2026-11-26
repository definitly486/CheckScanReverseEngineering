.class public final Lyads/gu4;
.super Lyads/xk5;
.source "SourceFile"


# instance fields
.field public final m:Lyads/os4;

.field public final n:Lyads/os4;

.field public final o:Lyads/fu4;

.field public p:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/xk5;-><init>()V

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/gu4;->m:Lyads/os4;

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/gu4;->n:Lyads/os4;

    new-instance v0, Lyads/fu4;

    invoke-direct {v0}, Lyads/fu4;-><init>()V

    iput-object v0, p0, Lyads/gu4;->o:Lyads/fu4;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lyads/mt5;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lyads/gu4;->m:Lyads/os4;

    iput-object v1, v3, Lyads/os4;->a:[B

    iput v2, v3, Lyads/os4;->c:I

    const/4 v4, 0x0

    iput v4, v3, Lyads/os4;->b:I

    const/16 v5, 0xff

    if-lez v2, :cond_1

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lyads/gu4;->p:Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Lyads/gu4;->p:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v2, v0, Lyads/gu4;->n:Lyads/os4;

    invoke-static {v3, v2, v1}, Lyads/u56;->a(Lyads/os4;Lyads/os4;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lyads/gu4;->n:Lyads/os4;

    iget-object v2, v1, Lyads/os4;->a:[B

    iget v1, v1, Lyads/os4;->c:I

    iput-object v2, v3, Lyads/os4;->a:[B

    iput v1, v3, Lyads/os4;->c:I

    iput v4, v3, Lyads/os4;->b:I

    :cond_1
    iget-object v1, v0, Lyads/gu4;->o:Lyads/fu4;

    iput v4, v1, Lyads/fu4;->d:I

    iput v4, v1, Lyads/fu4;->e:I

    iput v4, v1, Lyads/fu4;->f:I

    iput v4, v1, Lyads/fu4;->g:I

    iput v4, v1, Lyads/fu4;->h:I

    iput v4, v1, Lyads/fu4;->i:I

    iget-object v2, v1, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v2, v4}, Lyads/os4;->c(I)V

    iput-boolean v4, v1, Lyads/fu4;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, v0, Lyads/gu4;->m:Lyads/os4;

    iget v3, v2, Lyads/os4;->c:I

    iget v6, v2, Lyads/os4;->b:I

    sub-int v6, v3, v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_15

    iget-object v6, v0, Lyads/gu4;->o:Lyads/fu4;

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v8

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v9

    iget v10, v2, Lyads/os4;->b:I

    add-int/2addr v10, v9

    if-le v10, v3, :cond_2

    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    move v14, v4

    move v4, v5

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_2
    const/16 v3, 0x80

    if-eq v8, v3, :cond_c

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    move v4, v5

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x13

    if-ge v9, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v3

    iput v3, v6, Lyads/fu4;->d:I

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v3

    iput v3, v6, Lyads/fu4;->e:I

    iget v3, v2, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v3

    iput v3, v6, Lyads/fu4;->f:I

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v3

    iput v3, v6, Lyads/fu4;->g:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    if-ge v9, v8, :cond_5

    goto :goto_1

    :cond_5
    iget v13, v2, Lyads/os4;->b:I

    add-int/2addr v13, v7

    invoke-virtual {v2, v13}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v7

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    move v12, v4

    :goto_2
    add-int/lit8 v3, v9, -0x4

    if-eqz v12, :cond_9

    const/4 v7, 0x7

    if-ge v3, v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lyads/os4;->m()I

    move-result v3

    if-ge v3, v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v7

    iput v7, v6, Lyads/fu4;->h:I

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v7

    iput v7, v6, Lyads/fu4;->i:I

    iget-object v7, v6, Lyads/fu4;->a:Lyads/os4;

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v7, v3}, Lyads/os4;->c(I)V

    add-int/lit8 v3, v9, -0xb

    :cond_9
    iget-object v7, v6, Lyads/fu4;->a:Lyads/os4;

    iget v8, v7, Lyads/os4;->b:I

    iget v7, v7, Lyads/os4;->c:I

    if-ge v8, v7, :cond_3

    if-lez v3, :cond_3

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v7, v6, Lyads/fu4;->a:Lyads/os4;

    iget-object v7, v7, Lyads/os4;->a:[B

    invoke-virtual {v2, v7, v8, v3}, Lyads/os4;->a([BII)V

    iget-object v6, v6, Lyads/fu4;->a:Lyads/os4;

    add-int/2addr v8, v3

    invoke-virtual {v6, v8}, Lyads/os4;->e(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/lit8 v7, v9, 0x5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    goto/16 :goto_1

    :cond_a
    iget v7, v2, Lyads/os4;->b:I

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lyads/os4;->e(I)V

    iget-object v7, v6, Lyads/fu4;->b:[I

    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v9, v9, 0x5

    move v7, v4

    :goto_3
    if-ge v7, v9, :cond_b

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v8

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v13

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v14

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v15

    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result v16

    int-to-double v11, v13

    sub-int/2addr v14, v3

    int-to-double v13, v14

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v13

    move/from16 v19, v3

    add-double v3, v17, v11

    double-to-int v3, v3

    add-int/lit8 v15, v15, -0x80

    move-object/from16 v17, v6

    int-to-double v5, v15

    const-wide v20, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v20, v20, v5

    sub-double v20, v11, v20

    const-wide v22, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v13, v13, v22

    sub-double v13, v20, v13

    double-to-int v13, v13

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v5, v14

    add-double/2addr v5, v11

    double-to-int v5, v5

    move-object/from16 v6, v17

    iget-object v11, v6, Lyads/fu4;->b:[I

    shl-int/lit8 v12, v16, 0x18

    sget v14, Lyads/u56;->a:I

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v12

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v3, v12

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    or-int/2addr v3, v5

    aput v3, v11, v8

    add-int/lit8 v7, v7, 0x1

    move v5, v4

    move/from16 v3, v19

    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    move v4, v5

    const/4 v3, 0x1

    iput-boolean v3, v6, Lyads/fu4;->c:Z

    :goto_4
    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_c
    move v4, v5

    iget v3, v6, Lyads/fu4;->d:I

    if-eqz v3, :cond_13

    iget v3, v6, Lyads/fu4;->e:I

    if-eqz v3, :cond_13

    iget v3, v6, Lyads/fu4;->h:I

    if-eqz v3, :cond_13

    iget v3, v6, Lyads/fu4;->i:I

    if-eqz v3, :cond_13

    iget-object v3, v6, Lyads/fu4;->a:Lyads/os4;

    iget v5, v3, Lyads/os4;->c:I

    if-eqz v5, :cond_13

    iget v7, v3, Lyads/os4;->b:I

    if-ne v7, v5, :cond_13

    iget-boolean v5, v6, Lyads/fu4;->c:Z

    if-nez v5, :cond_d

    goto/16 :goto_a

    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lyads/os4;->e(I)V

    iget v3, v6, Lyads/fu4;->h:I

    iget v5, v6, Lyads/fu4;->i:I

    mul-int/2addr v3, v5

    new-array v5, v3, [I

    const/4 v14, 0x0

    :cond_e
    :goto_5
    if-ge v14, v3, :cond_12

    iget-object v7, v6, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v8, v14, 0x1

    iget-object v9, v6, Lyads/fu4;->b:[I

    aget v7, v9, v7

    aput v7, v5, v14

    :goto_6
    move v14, v8

    goto :goto_5

    :cond_f
    iget-object v7, v6, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v7

    if-eqz v7, :cond_e

    and-int/lit8 v8, v7, 0x40

    if-nez v8, :cond_10

    and-int/lit8 v8, v7, 0x3f

    goto :goto_7

    :cond_10
    and-int/lit8 v8, v7, 0x3f

    shl-int/lit8 v8, v8, 0x8

    iget-object v9, v6, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v9}, Lyads/os4;->k()I

    move-result v9

    or-int/2addr v8, v9

    :goto_7
    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_8

    :cond_11
    iget-object v7, v6, Lyads/fu4;->b:[I

    iget-object v9, v6, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v9}, Lyads/os4;->k()I

    move-result v9

    aget v7, v7, v9

    :goto_8
    add-int/2addr v8, v14

    invoke-static {v5, v14, v8, v7}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    :cond_12
    iget v3, v6, Lyads/fu4;->h:I

    iget v7, v6, Lyads/fu4;->i:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    iget v3, v6, Lyads/fu4;->f:I

    int-to-float v3, v3

    iget v5, v6, Lyads/fu4;->d:I

    int-to-float v5, v5

    div-float v19, v3, v5

    iget v3, v6, Lyads/fu4;->g:I

    int-to-float v3, v3

    iget v7, v6, Lyads/fu4;->e:I

    int-to-float v7, v7

    div-float v16, v3, v7

    iget v3, v6, Lyads/fu4;->h:I

    int-to-float v3, v3

    div-float v23, v3, v5

    iget v3, v6, Lyads/fu4;->i:I

    int-to-float v3, v3

    div-float v24, v3, v7

    new-instance v11, Lyads/sb0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/high16 v21, -0x80000000

    const v22, -0x800001

    const/16 v25, 0x0

    const/high16 v26, -0x1000000

    const/high16 v27, -0x80000000

    const/16 v28, 0x0

    invoke-direct/range {v11 .. v28}, Lyads/sb0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    :goto_9
    const/4 v14, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v11, 0x0

    goto :goto_9

    :goto_b
    iput v14, v6, Lyads/fu4;->d:I

    iput v14, v6, Lyads/fu4;->e:I

    iput v14, v6, Lyads/fu4;->f:I

    iput v14, v6, Lyads/fu4;->g:I

    iput v14, v6, Lyads/fu4;->h:I

    iput v14, v6, Lyads/fu4;->i:I

    iget-object v3, v6, Lyads/fu4;->a:Lyads/os4;

    invoke-virtual {v3, v14}, Lyads/os4;->c(I)V

    iput-boolean v14, v6, Lyads/fu4;->c:Z

    :goto_c
    invoke-virtual {v2, v10}, Lyads/os4;->e(I)V

    :goto_d
    if-eqz v11, :cond_14

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v5, v4

    move v4, v14

    goto/16 :goto_0

    :cond_15
    new-instance v0, Lyads/hu4;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/hu4;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
