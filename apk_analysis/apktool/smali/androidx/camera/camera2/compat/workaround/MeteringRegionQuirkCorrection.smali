.class public final Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;->INSTANCE:Landroidx/camera/camera2/compat/workaround/MeteringRegionQuirkCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method
