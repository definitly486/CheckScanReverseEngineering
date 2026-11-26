.class public final Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method
