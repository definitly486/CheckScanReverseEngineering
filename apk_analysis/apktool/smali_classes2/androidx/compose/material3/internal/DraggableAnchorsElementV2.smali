.class final Landroidx/compose/material3/internal/DraggableAnchorsElementV2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/internal/DraggableAnchorsNodeV2<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final anchors:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Lb36<",
            "Landroidx/compose/foundation/gestures/DraggableAnchors<",
            "TT;>;TT;>;>;"
        }
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/gestures/AnchoredDraggableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Lbm3;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableState<",
            "TT;>;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Lb36<",
            "+",
            "Landroidx/compose/foundation/gestures/DraggableAnchors<",
            "TT;>;+TT;>;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iput-object p2, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public static final synthetic access$getAnchors$p(Landroidx/compose/material3/internal/DraggableAnchorsElementV2;)Lbm3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    return-object p0
.end method

.method public static final synthetic access$getOrientation$p(Landroidx/compose/material3/internal/DraggableAnchorsElementV2;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/material3/internal/DraggableAnchorsElementV2;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    return-object p0
.end method


# virtual methods
.method public create()Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material3/internal/DraggableAnchorsNodeV2<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;

    iget-object v1, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object v2, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Lbm3;Landroidx/compose/foundation/gestures/Orientation;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->create()Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;

    iget-object v3, p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    iget-object v3, p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object p1, p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/material3/internal/DraggableAnchorsElementV2$inspectableProperties$$inlined$debugInspectorInfo$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/DraggableAnchorsElementV2$inspectableProperties$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material3/internal/DraggableAnchorsElementV2;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    return-void
.end method

.method public update(Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/DraggableAnchorsNodeV2<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->state:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->setState(Landroidx/compose/foundation/gestures/AnchoredDraggableState;)V

    iget-object v0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->anchors:Lbm3;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->setAnchors(Lbm3;)V

    iget-object p0, p0, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p1, p0}, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->setOrientation(Landroidx/compose/foundation/gestures/Orientation;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 16
    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/DraggableAnchorsElementV2;->update(Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;)V

    return-void
.end method
