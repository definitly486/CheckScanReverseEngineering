.class public final Landroidx/camera/viewfinder/core/impl/TransformationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NORMALIZED_RECT:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->NORMALIZED_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public static final OffsetF(FF)J
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->packFloats(FF)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/OffsetF;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final ScaleFactorF(FF)J
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->packFloats(FF)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/ScaleFactorF;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getNORMALIZED_RECT$p()Landroid/graphics/RectF;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->NORMALIZED_RECT:Landroid/graphics/RectF;

    return-object v0
.end method

.method public static final synthetic access$unpackFloat1(J)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->unpackFloat1(J)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackFloat2(J)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->unpackFloat2(J)F

    move-result p0

    return p0
.end method

.method private static final floatFromBits(I)F
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static final packFloats(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static final unpackFloat1(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->floatFromBits(I)F

    move-result p0

    return p0
.end method

.method private static final unpackFloat2(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->floatFromBits(I)F

    move-result p0

    return p0
.end method
