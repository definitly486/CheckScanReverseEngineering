.class public final Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
.super Landroidx/compose/foundation/gestures/DragDetectionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/DragDetectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dragging"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private pointerId:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/DragDetectionState;-><init>(Ljh2;)V

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    return-void
.end method

.method public synthetic constructor <init>(JILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide p1

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;-><init>(JLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjh2;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getPointerId-J3iCeTQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    return-wide v0
.end method

.method public final setPointerId-0FcD4WY(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    return-void
.end method
