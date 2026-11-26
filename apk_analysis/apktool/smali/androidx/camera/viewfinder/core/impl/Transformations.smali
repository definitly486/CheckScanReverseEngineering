.class public final Landroidx/camera/viewfinder/core/impl/Transformations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/viewfinder/core/impl/Transformations;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/Transformations;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cropRectFor(Landroidx/camera/viewfinder/core/TransformationInfo;Landroid/util/Size;)Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/TransformationInfo;->getCropRectLeft()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/TransformationInfo;->getCropRectTop()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/TransformationInfo;->getCropRectRight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/TransformationInfo;->getCropRectBottom()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    :cond_3
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p0, v1, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method

.method private final getNormalizedToBuffer(Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 2

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->access$getNORMALIZED_RECT$p()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-object p0
.end method

.method private final getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 2

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->access$getNORMALIZED_RECT$p()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    sget-object p1, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    invoke-direct {p1, p2}, Landroidx/camera/viewfinder/core/impl/Transformations;->getNormalizedToBuffer(Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object p0
.end method

.method public static final getSurfaceToViewfinderMatrix(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/viewfinder/core/TransformationInfo;ILandroidx/camera/viewfinder/core/ScaleType;)Landroid/graphics/Matrix;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-virtual {p4}, Landroidx/camera/viewfinder/core/ScaleType;->getContentScale$viewfinder_core_release()Landroidx/camera/viewfinder/core/impl/ContentScale;

    move-result-object v4

    .line 104
    invoke-virtual {p4}, Landroidx/camera/viewfinder/core/ScaleType;->getAlignment$viewfinder_core_release()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 105
    invoke-static/range {v0 .. v5}, Landroidx/camera/viewfinder/core/impl/Transformations;->getSurfaceToViewfinderMatrix(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/viewfinder/core/TransformationInfo;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static final getSurfaceToViewfinderMatrix(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/viewfinder/core/TransformationInfo;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)Landroid/graphics/Matrix;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    invoke-direct {v0, p2, p1}, Landroidx/camera/viewfinder/core/impl/Transformations;->rotatedViewportFor(Landroidx/camera/viewfinder/core/TransformationInfo;Landroid/util/Size;)Landroid/util/SizeF;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/camera/viewfinder/core/impl/Transformations;->isViewportAspectRatioMatchViewfinder$viewfinder_core_release(Landroid/util/SizeF;Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p5, 0x0

    invoke-direct {p3, p5, p5, p4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/camera/viewfinder/core/impl/Transformations;->getViewfinderViewportRectForMismatchedAspectRatios(Landroid/util/SizeF;Landroid/util/Size;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)Landroid/graphics/RectF;

    move-result-object p3

    :goto_0
    invoke-direct {v0, p2, p1}, Landroidx/camera/viewfinder/core/impl/Transformations;->cropRectFor(Landroidx/camera/viewfinder/core/TransformationInfo;Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/camera/viewfinder/core/TransformationInfo;->getSourceRotation()I

    move-result p1

    invoke-direct {v0, p0, p3, p1}, Landroidx/camera/viewfinder/core/impl/Transformations;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally()Z

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 p5, -0x40800000    # -1.0f

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1, p5, p4, p3, v0}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_1
    invoke-virtual {p2}, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {p1, p4, p5, p2, p0}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_2
    return-object p1
.end method

.method public static final getTextureViewCorrectionMatrix(III)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    neg-int p0, p0

    invoke-direct {p1, v0, v0, p0}, Landroidx/camera/viewfinder/core/impl/Transformations;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private final getViewfinderViewportRectForMismatchedAspectRatios(Landroid/util/SizeF;Landroid/util/Size;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)Landroid/graphics/RectF;
    .locals 7

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sget-object v0, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/viewfinder/core/impl/Transformations;->setTransform(Landroid/graphics/Matrix;Landroid/util/SizeF;Landroid/util/Size;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method private final is90or270(I)Z
    .locals 0

    if-eqz p1, :cond_2

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10e

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid rotation degrees: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final isAspectRatioMatchingWithRoundingError(Landroid/util/SizeF;ZLandroid/util/Size;Z)Z
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    div-float/2addr p2, p1

    move p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    add-float/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    sub-float/2addr v0, p0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    add-float/2addr p1, p0

    div-float p1, v0, p1

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    move p4, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p0

    div-float/2addr p4, v0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p0

    div-float p0, v0, p3

    :goto_1
    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    cmpl-float p0, p4, p1

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final rotatedViewportFor(Landroidx/camera/viewfinder/core/TransformationInfo;Landroid/util/Size;)Landroid/util/SizeF;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/viewfinder/core/impl/Transformations;->cropRectFor(Landroidx/camera/viewfinder/core/TransformationInfo;Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p0

    sget-object p2, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/TransformationInfo;->getSourceRotation()I

    move-result p1

    invoke-direct {p2, p1}, Landroidx/camera/viewfinder/core/impl/Transformations;->is90or270(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method private final setTransform(Landroid/graphics/Matrix;Landroid/util/SizeF;Landroid/util/Size;ILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V
    .locals 3

    invoke-direct {p0, p3}, Landroidx/camera/viewfinder/core/impl/Transformations;->toSizeF(Landroid/util/Size;)Landroid/util/SizeF;

    move-result-object p0

    invoke-interface {p5, p2, p0}, Landroidx/camera/viewfinder/core/impl/ContentScale;->computeScaleFactor-ho9e9VQ(Landroid/util/SizeF;Landroid/util/SizeF;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/viewfinder/core/impl/ScaleFactorF;->getScaleX-impl(J)F

    move-result p0

    invoke-static {v0, v1}, Landroidx/camera/viewfinder/core/impl/ScaleFactorF;->getScaleY-impl(J)F

    move-result p5

    invoke-virtual {p1, p0, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance p0, Landroid/util/SizeF;

    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result p5

    invoke-static {v0, v1}, Landroidx/camera/viewfinder/core/impl/ScaleFactorF;->getScaleX-impl(J)F

    move-result v2

    mul-float/2addr v2, p5

    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    invoke-static {v0, v1}, Landroidx/camera/viewfinder/core/impl/ScaleFactorF;->getScaleY-impl(J)F

    move-result p5

    mul-float/2addr p5, p2

    invoke-direct {p0, v2, p5}, Landroid/util/SizeF;-><init>(FF)V

    sget-object p2, Landroidx/camera/viewfinder/core/impl/Transformations;->INSTANCE:Landroidx/camera/viewfinder/core/impl/Transformations;

    invoke-direct {p2, p3}, Landroidx/camera/viewfinder/core/impl/Transformations;->toSizeF(Landroid/util/Size;)Landroid/util/SizeF;

    move-result-object p2

    invoke-interface {p6, p0, p2, p4}, Landroidx/camera/viewfinder/core/impl/Alignment;->align-41g9ag8(Landroid/util/SizeF;Landroid/util/SizeF;I)J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/camera/viewfinder/core/impl/OffsetF;->getX-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/camera/viewfinder/core/impl/OffsetF;->getY-impl(J)F

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static final surfaceRotationToRotationDegrees(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    :cond_0
    const-string v0, "Unsupported surface rotation: "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private final toSizeF(Landroid/util/Size;)Landroid/util/SizeF;
    .locals 1

    new-instance p0, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public final isViewportAspectRatioMatchViewfinder$viewfinder_core_release(Landroid/util/SizeF;Landroid/util/Size;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/camera/viewfinder/core/impl/Transformations;->isAspectRatioMatchingWithRoundingError(Landroid/util/SizeF;ZLandroid/util/Size;Z)Z

    move-result p0

    return p0
.end method
