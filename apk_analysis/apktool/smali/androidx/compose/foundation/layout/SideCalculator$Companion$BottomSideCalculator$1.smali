.class public final Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/SideCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/SideCalculator$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 1

    invoke-static {p1}, Lw7;->b(Landroid/graphics/Insets;)I

    move-result p0

    invoke-static {p1}, Lrs2;->b(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {p1}, Lmj;->b(Landroid/graphics/Insets;)I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public consumedOffsets-MK-Hz9U(J)J
    .locals 4

    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long p0, p1, p0

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public consumedVelocity-QWom1Mo(JF)J
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p0

    add-float/2addr p0, p3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public motionOf(FF)F
    .locals 0

    neg-float p0, p2

    return p0
.end method

.method public valueOf(Landroid/graphics/Insets;)I
    .locals 0

    invoke-static {p1}, Lh8;->b(Landroid/graphics/Insets;)I

    move-result p0

    return p0
.end method
