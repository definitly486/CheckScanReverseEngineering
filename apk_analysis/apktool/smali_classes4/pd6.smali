.class public final synthetic Lpd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lpd6;->b:I

    iput-object p1, p0, Lpd6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lpd6;->b:I

    iget-object v0, v0, Lpd6;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-static {v0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->b(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;)V

    return-void

    :pswitch_0
    check-cast v0, Lcom/my/target/common/views/StarsRatingView;

    sget-object v1, Lcom/my/target/common/views/StarsRatingView;->g:Landroid/graphics/Paint;

    iget v1, v0, Lcom/my/target/common/views/StarsRatingView;->b:I

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, v0, Lcom/my/target/common/views/StarsRatingView;->d:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Lcom/my/target/common/views/StarsRatingView;->d:F

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float v2, v3, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v4, v0, Lcom/my/target/common/views/StarsRatingView;->d:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    const v6, 0x3e4ccccd    # 0.2f

    cmpl-float v4, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    const/4 v8, 0x0

    :try_start_0
    iget v9, v0, Lcom/my/target/common/views/StarsRatingView;->b:I

    int-to-float v10, v9

    iget v11, v0, Lcom/my/target/common/views/StarsRatingView;->c:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v3

    float-to-int v3, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/my/target/common/views/StarsRatingView;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v9, v0, Lcom/my/target/common/views/StarsRatingView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v9, v0, Lcom/my/target/common/views/StarsRatingView;->b:I

    sget-object v11, Lcom/my/target/common/views/StarsRatingView;->g:Landroid/graphics/Paint;

    const v12, -0x86ce2

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v9, v7, v1}, Lcom/my/target/common/views/StarsRatingView;->a(FII)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v3, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Lcom/my/target/common/views/StarsRatingView;->b:I

    int-to-float v9, v1

    iget v13, v0, Lcom/my/target/common/views/StarsRatingView;->c:F

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    const/4 v5, 0x0

    add-float/2addr v9, v5

    float-to-int v5, v9

    const v9, -0x333334

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5, v2}, Lcom/my/target/common/views/StarsRatingView;->a(FII)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v3, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v4, :cond_2

    iget v1, v0, Lcom/my/target/common/views/StarsRatingView;->b:I

    iget v2, v0, Lcom/my/target/common/views/StarsRatingView;->d:F

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    sub-double/2addr v13, v15

    double-to-float v2, v13

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v4, v7, v6}, Lcom/my/target/common/views/StarsRatingView;->a(FII)Landroid/graphics/Path;

    move-result-object v4

    new-instance v6, Landroid/graphics/Rect;

    int-to-float v9, v5

    int-to-float v12, v1

    mul-float/2addr v12, v2

    add-float/2addr v9, v12

    float-to-int v2, v9

    invoke-direct {v6, v5, v7, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v2, v12

    invoke-static {v2, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v1, v8, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v7, v0, Lcom/my/target/common/views/StarsRatingView;->f:Z

    goto :goto_1

    :catch_0
    const-string v0, "StarsRatingView: Unable to create rating bitmap because of OOME"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast v0, Lqd6;

    iget-object v1, v0, Lqd6;->d:Led6;

    invoke-virtual {v1}, Led6;->b()V

    iget-object v0, v0, Lqd6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "Replay buffer cleared"

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
