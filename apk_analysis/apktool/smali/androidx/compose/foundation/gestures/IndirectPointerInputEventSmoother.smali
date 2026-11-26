.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

.field private static final SmoothingFactor:I = 0x3


# instance fields
.field private eventRotatingArray:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private eventRotatingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->Companion:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->smoothEventPosition_tuRUvjQ$lambda$1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->smoothEventPosition_tuRUvjQ$lambda$2(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F

    move-result p0

    return p0
.end method

.method private static final smoothEventPosition_tuRUvjQ$averageBy(Landroidx/collection/ObjectList;Lnl3;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/ObjectList<",
            "TT;>;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ObjectList;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    return v2
.end method

.method private static final smoothEventPosition_tuRUvjQ$lambda$1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static final smoothEventPosition_tuRUvjQ$lambda$2(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final smoothEventPosition-tuRUvjQ(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)J
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    iget-object v3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    invoke-virtual {v3}, Landroidx/collection/MutableObjectList;->clear()V

    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    invoke-virtual {v1, v0, p1}, Landroidx/collection/MutableObjectList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    if-ne p1, v3, :cond_2

    iput v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    new-instance v0, Lt2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt2;-><init>(I)V

    invoke-static {p1, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->smoothEventPosition_tuRUvjQ$averageBy(Landroidx/collection/ObjectList;Lnl3;)F

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Landroidx/collection/MutableObjectList;

    new-instance p1, Lo44;

    invoke-direct {p1, v4}, Lo44;-><init>(I)V

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->smoothEventPosition_tuRUvjQ$averageBy(Landroidx/collection/ObjectList;Lnl3;)F

    move-result v1

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, v2

    and-long/2addr v0, v5

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
