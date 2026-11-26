.class public final synthetic Lzi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lzi0;->b:I

    iput-object p1, p0, Lzi0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lzi0;->b:I

    iget-object v0, v0, Lzi0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lyads/nq0;

    invoke-static {v0}, Lyads/nq0;->l0(Lyads/nq0;)Lyads/ef2;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->e(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/WorkTagDao_Impl;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->a(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->i(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/SelectionController;->a(Landroidx/compose/foundation/text/modifiers/SelectionController;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    invoke-static {v0}, Landroidx/compose/material3/SearchBarKt;->t(Landroidx/compose/animation/core/Animatable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v0, Lod6;

    iget-object v0, v0, Lod6;->h:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v0, Laj0;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v2, v0, Laj0;->b:Lzz5;

    new-instance v3, Laj0$a;

    iget-object v4, v0, Laj0;->a:Lh24;

    invoke-interface {v4}, Lh24;->L()Lwu0;

    move-result-object v4

    invoke-direct {v3, v4}, Lqj3;-><init>(Lv48;)V

    new-instance v4, Liy6;

    invoke-direct {v4, v3}, Liy6;-><init>(Lv48;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v4}, Liy6;->o()Liy6;

    move-result-object v6

    new-instance v7, Liy6$a;

    invoke-direct {v7, v6}, Liy6$a;-><init>(Liy6;)V

    const/4 v6, 0x0

    invoke-static {v7, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v7, v3, Laj0$a;->c:Ljava/lang/Exception;

    if-nez v7, :cond_26

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v8, Lm23;->a:Landroid/graphics/Paint;

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v0, v0, Laj0;->d:Lk23;

    invoke-interface {v0, v8}, Lk23;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    new-instance v8, Li23;

    invoke-virtual {v4}, Liy6;->o()Liy6;

    move-result-object v9

    new-instance v10, Liy6$a;

    invoke-direct {v10, v9}, Liy6$a;-><init>(Liy6;)V

    invoke-direct {v8, v10}, Li23;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lg23;

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->isFlipped()Z

    move-result v9

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v0

    invoke-direct {v8, v9, v0}, Lg23;-><init>(ZI)V

    goto :goto_0

    :cond_0
    sget-object v8, Lg23;->c:Lg23;

    :goto_0
    iget v0, v8, Lg23;->b:I

    iget-boolean v8, v8, Lg23;->a:Z

    iget-object v9, v3, Laj0$a;->c:Ljava/lang/Exception;

    if-nez v9, :cond_25

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v9, Lf24;->c:Lb53$b;

    invoke-static {v2, v9}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/ColorSpace;

    iget-object v11, v2, Lzz5;->a:Landroid/content/Context;

    if-eqz v10, :cond_1

    invoke-static {v2, v9}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/ColorSpace;

    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :cond_1
    sget-object v9, Lf24;->d:Lb53$b;

    invoke-static {v2, v9}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    sget-object v9, Lf24;->b:Lb53$b;

    invoke-static {v2, v9}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap$Config;

    if-nez v8, :cond_2

    if-lez v0, :cond_4

    :cond_2
    if-eqz v9, :cond_3

    sget-object v10, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v9, v10, :cond_4

    :cond_3
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    sget-object v10, Lf24;->g:Lb53$b;

    invoke-static {v2, v10}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v9, v10, :cond_5

    iget-object v10, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v12, "image/jpeg"

    invoke-static {v10, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_5
    iget-object v10, v1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v10, v12, :cond_6

    sget-object v10, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v9, v10, :cond_6

    move-object v9, v12

    :cond_6
    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v10, 0x10e

    const/16 v12, 0x5a

    if-lez v9, :cond_7

    iget v13, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v13, :cond_8

    :cond_7
    move/from16 v18, v8

    move-object/from16 v17, v11

    goto/16 :goto_9

    :cond_8
    if-eq v0, v12, :cond_a

    if-ne v0, v10, :cond_9

    goto :goto_1

    :cond_9
    move v14, v9

    goto :goto_2

    :cond_a
    :goto_1
    move v14, v13

    :goto_2
    if-eq v0, v12, :cond_c

    if-ne v0, v10, :cond_b

    goto :goto_3

    :cond_b
    move v9, v13

    :cond_c
    :goto_3
    iget-object v13, v2, Lzz5;->b:Lt18;

    iget-object v15, v2, Lzz5;->c:Lmd7;

    sget-object v10, Ld24;->b:Lb53$b;

    invoke-static {v2, v10}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lt18;

    invoke-static {v14, v9, v13, v15, v12}, Lrd2;->a(IILt18;Lmd7;Lt18;)J

    move-result-wide v12

    const/16 v16, 0x20

    shr-long v6, v12, v16

    long-to-int v6, v6

    const-wide v17, 0xffffffffL

    and-long v12, v12, v17

    long-to-int v7, v12

    div-int v12, v14, v6

    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    div-int v13, v9, v7

    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    sget-object v16, Lrd2$a;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move/from16 v18, v8

    aget v8, v16, v17

    move-object/from16 v17, v11

    const/4 v11, 0x2

    if-eq v8, v5, :cond_e

    if-ne v8, v11, :cond_d

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_5

    :cond_d
    invoke-static {}, Lme0;->e()V

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_e
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_5
    if-ge v8, v5, :cond_f

    move v8, v5

    :cond_f
    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v12, v14

    move-wide/from16 v19, v12

    int-to-double v11, v8

    div-double v19, v19, v11

    int-to-double v8, v9

    div-double/2addr v8, v11

    int-to-double v11, v6

    int-to-double v6, v7

    invoke-static {v2, v10}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt18;

    div-double v11, v11, v19

    div-double/2addr v6, v8

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v16, v13

    if-eq v13, v5, :cond_11

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    goto :goto_6

    :cond_10
    invoke-static {}, Lme0;->e()V

    goto :goto_4

    :cond_11
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    :goto_6
    iget-object v11, v10, Lt18;->a:Lhn2;

    instance-of v12, v11, Lhn2$a;

    if-eqz v12, :cond_12

    check-cast v11, Lhn2$a;

    iget v11, v11, Lhn2$a;->a:I

    int-to-double v11, v11

    div-double v11, v11, v19

    cmpl-double v13, v6, v11

    if-lez v13, :cond_12

    move-wide v6, v11

    :cond_12
    iget-object v10, v10, Lt18;->b:Lhn2;

    instance-of v11, v10, Lhn2$a;

    if-eqz v11, :cond_13

    check-cast v10, Lhn2$a;

    iget v10, v10, Lhn2$a;->a:I

    int-to-double v10, v10

    div-double/2addr v10, v8

    cmpl-double v8, v6, v10

    if-lez v8, :cond_13

    move-wide v6, v10

    :cond_13
    iget-object v2, v2, Lzz5;->d:Lre6;

    sget-object v8, Lre6;->INEXACT:Lre6;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ne v2, v8, :cond_14

    cmpl-double v2, v6, v9

    if-lez v2, :cond_14

    move-wide v6, v9

    :cond_14
    cmpg-double v2, v6, v9

    if-nez v2, :cond_15

    move v2, v5

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :goto_7
    xor-int/lit8 v8, v2, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v2, :cond_16

    cmpl-double v2, v6, v9

    const v8, 0x7fffffff

    const-wide v9, 0x41dfffffffc00000L    # 2.147483647E9

    if-lez v2, :cond_17

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Lw65;->a(D)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_16
    :goto_8
    const/4 v2, 0x0

    goto :goto_a

    :cond_17
    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    mul-double/2addr v9, v6

    invoke-static {v9, v10}, Lw65;->a(D)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_8

    :goto_9
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_a
    :try_start_0
    new-instance v6, Liy6$a;

    invoke-direct {v6, v4}, Liy6$a;-><init>(Liy6;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Liy6;->close()V

    iget-object v3, v3, Laj0$a;->c:Ljava/lang/Exception;

    if-nez v3, :cond_24

    if-eqz v6, :cond_23

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-nez v18, :cond_18

    if-lez v0, :cond_20

    :cond_18
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    if-eqz v18, :cond_19

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v9, v4, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_19
    if-lez v0, :cond_1a

    int-to-float v7, v0

    invoke-virtual {v3, v7, v4, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1a
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v7, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v7, v9

    if-nez v8, :cond_1b

    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-nez v8, :cond_1b

    :goto_b
    const/16 v4, 0x5a

    goto :goto_c

    :cond_1b
    neg-float v7, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    :goto_c
    if-eq v0, v4, :cond_1e

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_1c

    goto :goto_d

    :cond_1c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-nez v7, :cond_1d

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1d
    invoke-static {v0, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e

    :cond_1e
    :goto_d
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-nez v7, :cond_1f

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1f
    invoke-static {v0, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_e
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v7, Lm23;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v0

    :cond_20
    new-instance v0, Lqd2;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Ln24;->b(Landroid/graphics/drawable/Drawable;)Lx04;

    move-result-object v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gt v4, v5, :cond_22

    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v1, :cond_21

    goto :goto_f

    :cond_21
    move v5, v2

    :cond_22
    :goto_f
    invoke-direct {v0, v3, v5}, Lqd2;-><init>(Lx04;Z)V

    move-object v6, v0

    goto :goto_10

    :cond_23
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    move-object v6, v7

    :goto_10
    return-object v6

    :cond_24
    throw v3

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_25
    throw v9

    :cond_26
    throw v7

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
