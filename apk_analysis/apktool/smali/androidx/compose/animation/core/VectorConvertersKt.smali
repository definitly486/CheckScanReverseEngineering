.class public final Landroidx/compose/animation/core/VectorConvertersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/DpOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private static final DpToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private static final FloatToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private static final IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private static final IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private static final IntToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private static final OffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private static final RectToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation
.end field

.field private static final SizeToVector:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Size;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgn6;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgn6;-><init>(I)V

    new-instance v1, Lly2;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lly2;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Leu6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Leu6;-><init>(I)V

    new-instance v1, Lin6;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lin6;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lsc7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsc7;-><init>(I)V

    new-instance v1, Lto;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lto;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lxn3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lxn3;-><init>(I)V

    new-instance v1, Lis0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lis0;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lmg6;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmg6;-><init>(I)V

    new-instance v1, Lji1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lji1;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lii3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lii3;-><init>(I)V

    new-instance v1, Lec9;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lec9;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lfc9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfc9;-><init>(I)V

    new-instance v1, Ljy2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljy2;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Lki3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lki3;-><init>(I)V

    new-instance v1, Lu00;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lu00;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverter;

    new-instance v0, Ldh0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldh0;-><init>(I)V

    new-instance v1, Lsi1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lsi1;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-void
.end method

.method private static final DpOffsetToVector$lambda$0(Landroidx/compose/ui/unit/DpOffset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/DpOffset;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/unit/DpOffset;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object v0
.end method

.method private static final DpOffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/DpOffset;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->box-impl(J)Landroidx/compose/ui/unit/DpOffset;

    move-result-object p0

    return-object p0
.end method

.method private static final DpToVector$lambda$0(Landroidx/compose/ui/unit/Dp;)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object v0
.end method

.method private static final DpToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)Landroidx/compose/ui/unit/Dp;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->getValue()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method private static final FloatToVector$lambda$0(F)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object v0
.end method

.method private static final FloatToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->getValue()F

    move-result p0

    return p0
.end method

.method private static final IntOffsetToVector$lambda$0(Landroidx/compose/ui/unit/IntOffset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object v0
.end method

.method private static final IntOffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntOffset;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method private static final IntSizeToVector$lambda$0(Landroidx/compose/ui/unit/IntSize;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 6

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object v0
.end method

.method private static final IntSizeToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntSize;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    int-to-long v2, v0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0
.end method

.method private static final IntToVector$lambda$0(I)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    int-to-float p0, p0

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object v0
.end method

.method private static final IntToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->getValue()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static final OffsetToVector$lambda$0(Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 6

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object v0
.end method

.method private static final OffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Offset;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method private static final RectToVector$lambda$0(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/AnimationVector4D;
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/AnimationVector4D;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    return-object v0
.end method

.method private static final RectToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector4D;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector4D;->getV1()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector4D;->getV2()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector4D;->getV3()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector4D;->getV4()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method private static final SizeToVector$lambda$0(Landroidx/compose/ui/geometry/Size;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 6

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object v0
.end method

.method private static final SizeToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Size;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final TwoWayConverter(Lnl3;Lnl3;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Lnl3<",
            "-TT;+TV;>;",
            "Lnl3<",
            "-TV;+TT;>;)",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lnl3;Lnl3;)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/ui/unit/IntSize;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector$lambda$0(Landroidx/compose/ui/unit/IntSize;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/unit/Dp;)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector$lambda$0(Landroidx/compose/ui/unit/Dp;)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/geometry/Size;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector$lambda$0(Landroidx/compose/ui/geometry/Size;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/animation/core/AnimationVector1D;)Landroidx/compose/ui/unit/Dp;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(F)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector$lambda$0(F)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/core/AnimationVector1D;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroidx/compose/ui/unit/DpOffset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector$lambda$0(Landroidx/compose/ui/unit/DpOffset;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Offset$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Size$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Size;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Dp$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/unit/DpOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/DpOffset$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/DpOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/IntOffset$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/IntSize$Companion;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Lsc3;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsc3;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static final getVectorConverter(Lt74;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt74;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object p0, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntSize;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/DpOffset;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/DpOffset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/compose/animation/core/AnimationVector1D;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector1D;)F

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroidx/compose/ui/unit/IntOffset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector$lambda$0(Landroidx/compose/ui/unit/IntOffset;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(I)Landroidx/compose/animation/core/AnimationVector1D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector$lambda$0(I)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    return-object p0
.end method

.method public static final lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    return p1
.end method

.method public static synthetic m(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntOffset;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Offset;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Size;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/geometry/Size;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector$lambda$0(Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroidx/compose/animation/core/AnimationVector4D;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector$lambda$1(Landroidx/compose/animation/core/AnimationVector4D;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/AnimationVector4D;
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector$lambda$0(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/AnimationVector4D;

    move-result-object p0

    return-object p0
.end method
