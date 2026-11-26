.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
.super Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AwaitGesturePickup"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

.field private pointerId:J

.field private touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;-><init>(Ljh2;)V

    .line 30
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 31
    iput-wide p2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 32
    iput-object p4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;ILjh2;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide p2, 0x7fffffffffffffffL

    invoke-static {p2, p3}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide p2

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    const/4 p5, 0x0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;-><init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;Ljh2;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;-><init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    return-void
.end method


# virtual methods
.method public final getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    return-object p0
.end method

.method public final getPointerId-J3iCeTQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    return-wide v0
.end method

.method public final getTouchSlopDetector()Landroidx/compose/foundation/gestures/TouchSlopDetector;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    return-object p0
.end method

.method public final setInitialDown(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    return-void
.end method

.method public final setPointerId-0FcD4WY(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    return-void
.end method

.method public final setTouchSlopDetector(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    return-void
.end method
