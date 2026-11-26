.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-lez v1, :cond_23

    if-lez v2, :cond_23

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "srcRect must be contained by srcBm!"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_2

    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    :goto_3
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    int-to-float v11, v2

    int-to-float v12, v9

    div-float/2addr v11, v12

    if-eqz v3, :cond_5

    iget v13, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-eqz v3, :cond_6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    const/4 v14, 0x1

    if-nez v13, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v1, v15, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ne v2, v15, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v7, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v7

    :cond_8
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v14}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v16, v4

    const/16 v4, 0x1d

    if-lt v5, v4, :cond_9

    invoke-static {v15}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_9
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_6
    if-ne v8, v1, :cond_a

    if-ne v9, v2, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v13

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_a
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v4

    if-lez v12, :cond_b

    move-object/from16 p3, v15

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    :goto_7
    double-to-int v10, v14

    goto :goto_8

    :cond_b
    move-object/from16 p3, v15

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    goto :goto_7

    :goto_8
    cmpl-float v4, v11, v4

    if-lez v4, :cond_c

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    :goto_9
    double-to-int v4, v14

    goto :goto_a

    :cond_c
    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    goto :goto_9

    :goto_a
    if-eqz p4, :cond_f

    if-lt v5, v6, :cond_f

    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v12, 0x1

    if-lez v10, :cond_d

    invoke-static {v8, v1, v12, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    goto :goto_b

    :cond_d
    move v5, v8

    :goto_b
    if-lez v4, :cond_e

    invoke-static {v9, v2, v12, v4}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    goto :goto_c

    :cond_e
    move v11, v9

    :goto_c
    invoke-static {v5, v11, v0, v12}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v13, v13

    int-to-float v13, v13

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v14, p3

    invoke-virtual {v11, v7, v13, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v16, v7

    const/4 v3, 0x0

    const/4 v13, 0x0

    move-object v7, v5

    move v5, v12

    goto :goto_d

    :cond_f
    move-object/from16 v14, p3

    const/4 v12, 0x1

    const/4 v5, 0x0

    :goto_d
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v13, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v7

    move v15, v10

    move-object/from16 v7, v16

    move/from16 v16, v4

    :goto_e
    if-nez v15, :cond_12

    if-eqz v16, :cond_10

    goto :goto_f

    :cond_10
    if-eq v7, v0, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    return-object v13

    :cond_12
    :goto_f
    if-gez v15, :cond_13

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_13
    if-lez v15, :cond_14

    add-int/lit8 v15, v15, -0x1

    :cond_14
    :goto_10
    if-gez v16, :cond_16

    add-int/lit8 v16, v16, 0x1

    :cond_15
    :goto_11
    move/from16 v12, v16

    goto :goto_12

    :cond_16
    if-lez v16, :cond_15

    add-int/lit8 v16, v16, -0x1

    goto :goto_11

    :goto_12
    invoke-static {v8, v1, v15, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v6

    move/from16 p3, v5

    invoke-static {v9, v2, v12, v4}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    move/from16 v16, v12

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v12, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v15, :cond_17

    if-nez v16, :cond_17

    const/4 v5, 0x1

    goto :goto_13

    :cond_17
    move v5, v12

    :goto_13
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v1, :cond_18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v2, :cond_18

    const/4 v6, 0x1

    goto :goto_14

    :cond_18
    move v6, v12

    :goto_14
    if-eqz v7, :cond_1c

    if-eq v7, v0, :cond_1c

    if-eqz p4, :cond_19

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v5

    const/16 v5, 0x1b

    if-lt v12, v5, :cond_1a

    invoke-static {v7}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_15

    :cond_19
    move/from16 v19, v5

    :cond_1a
    :goto_15
    if-eqz v19, :cond_1b

    if-eqz v6, :cond_1d

    if-eqz p3, :cond_1b

    goto :goto_16

    :cond_1b
    const/16 v12, 0x1b

    goto :goto_1a

    :cond_1c
    move/from16 v19, v5

    :cond_1d
    :goto_16
    if-eq v7, v0, :cond_1e

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1e
    if-lez v15, :cond_1f

    move/from16 v5, p3

    goto :goto_17

    :cond_1f
    move v5, v15

    :goto_17
    invoke-static {v8, v1, v5, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    if-lez v16, :cond_20

    move/from16 v6, p3

    goto :goto_18

    :cond_20
    move/from16 v6, v16

    :goto_18
    invoke-static {v9, v2, v6, v4}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1b

    if-lt v7, v12, :cond_22

    if-eqz p4, :cond_21

    if-nez v19, :cond_21

    const/4 v7, 0x1

    goto :goto_19

    :cond_21
    const/4 v7, 0x0

    :goto_19
    invoke-static {v5, v6, v0, v7}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1a

    :cond_22
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_1a
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v13, v11, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v5, v13

    move-object v13, v7

    move-object v7, v5

    move/from16 v5, p3

    move v6, v12

    const/4 v12, 0x1

    goto/16 :goto_e

    :cond_23
    move-object/from16 v16, v4

    const-string v0, "dstW and dstH must be > 0!"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.getAllocationByteCount()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.hasMipMap()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.setHasMipMap(hasMipMap)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
