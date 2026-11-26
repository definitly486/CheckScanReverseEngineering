.class public final Landroidx/camera/camera2/internal/ZoomMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/ZoomMath;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/ZoomMath;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final areFloatsEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getLinearZoomFromZoomRatio(FFF)F
    .locals 3

    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    div-float p0, v2, p1

    div-float p1, v2, p3

    div-float p2, v2, p2

    sub-float p0, p2, p0

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    invoke-static {p0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public final getZoomRatioFromLinearZoom(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    div-float p0, v0, p3

    div-float v1, v0, p2

    sub-float p0, v1, p0

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    invoke-static {v0, p2, p3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public final nearZero$camera_camera2(F)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
