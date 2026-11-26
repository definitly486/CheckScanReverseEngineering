.class final Landroidx/compose/material3/internal/DraggableAnchorsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;"
    }
.end annotation


# instance fields
.field private anchors:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Lb36<",
            "+",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;+TT;>;>;"
        }
    .end annotation
.end field

.field private didLookahead:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private state:Landroidx/compose/material3/internal/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Lbm3;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Lb36<",
            "+",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;+TT;>;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iput-object p2, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->anchors:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/internal/DraggableAnchorsNode;->measure_3p2s80s$lambda$1$lambda$0(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/internal/DraggableAnchorsNode;->measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 3

    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p0

    iget-object v0, p1, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->requireOffset()F

    move-result p0

    :goto_0
    iget-object p1, p1, Landroidx/compose/material3/internal/DraggableAnchorsNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    new-instance p1, Landroidx/compose/material3/internal/l;

    invoke-direct {p1, p2, v0, p0}, Landroidx/compose/material3/internal/l;-><init>(Landroidx/compose/ui/layout/Placeable;FF)V

    invoke-virtual {p3, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$1$lambda$0(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 7

    invoke-static {p1}, Lw65;->b(F)I

    move-result v2

    invoke-static {p2}, Lw65;->b(F)I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getAnchors()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Lb36<",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->anchors:Lbm3;

    return-object p0
.end method

.method public final getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public final getState()Landroidx/compose/material3/internal/AnchoredDraggableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    return-object p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->didLookahead:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->anchors:Lbm3;

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p3

    invoke-interface {v2, v0, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb36;

    iget-object p4, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iget-object v0, p3, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/internal/DraggableAnchors;

    iget-object p3, p3, Lb36;->c:Ljava/lang/Object;

    invoke-virtual {p4, v0, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->updateAnchors(Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->didLookahead:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->didLookahead:Z

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/material3/internal/k;

    invoke-direct {v4, p1, p0, p2}, Landroidx/compose/material3/internal/k;-><init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->didLookahead:Z

    return-void
.end method

.method public final setAnchors(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Lb36<",
            "+",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->anchors:Lbm3;

    return-void
.end method

.method public final setOrientation(Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public final setState(Landroidx/compose/material3/internal/AnchoredDraggableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    return-void
.end method
