.class public Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "SourceFile"


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 13
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    .line 14
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    return-void
.end method

.method public constructor <init>(FFLandroidx/camera/core/UseCase;)V
    .locals 0

    invoke-static {p3}, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->getUseCaseAspectRatio(Landroidx/camera/core/UseCase;)Landroid/util/Rational;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidx/camera/core/MeteringPointFactory;-><init>(Landroid/util/Rational;)V

    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    return-void
.end method

.method private static getUseCaseAspectRatio(Landroidx/camera/core/UseCase;)Landroid/util/Rational;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance p0, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Rational;-><init>(II)V

    return-object p0

    :cond_1
    const-string v1, "UseCase "

    const-string v2, " is not bound."

    invoke-static {p0, v1, v2}, Lc9;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public convertPoint(FF)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    div-float/2addr p1, v1

    iget p0, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    div-float/2addr p2, p0

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
