.class final Landroidx/compose/ui/layout/OnVisibilityChangedElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/layout/OnVisibilityChangedNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final minDurationMs:J

.field private final minFractionVisible:F

.field private final viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;


# direct methods
.method public constructor <init>(JFLandroidx/compose/ui/layout/LayoutBoundsHolder;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Landroidx/compose/ui/layout/LayoutBoundsHolder;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    iput p3, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    iput-object p4, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    iput-object p5, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->create()Landroidx/compose/ui/layout/OnVisibilityChangedNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/OnVisibilityChangedNode;
    .locals 6

    new-instance v0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;

    iget-wide v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    iget v3, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    iget-object v4, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    iget-object v5, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;-><init>(JFLandroidx/compose/ui/layout/LayoutBoundsHolder;Lnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Landroidx/compose/ui/layout/OnVisibilityChangedElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/OnVisibilityChangedElement;

    iget-wide v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    iget-wide v4, p1, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    iget v3, p1, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    iget-object v3, p1, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    iget-object p1, p1, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getCallback()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    return-object p0
.end method

.method public final getMinDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    return-wide v0
.end method

.method public final getMinFractionVisible()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    return p0
.end method

.method public final getViewportBounds()Landroidx/compose/ui/layout/LayoutBoundsHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "onViewportVisibilityChanged"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "minDurationMs"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "minFractionVisible"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "viewportRef"

    iget-object v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "callback"

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 24
    check-cast p1, Landroidx/compose/ui/layout/OnVisibilityChangedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->update(Landroidx/compose/ui/layout/OnVisibilityChangedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/OnVisibilityChangedNode;)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->setMinDurationMs(J)V

    iget v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->minFractionVisible:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->setMinFractionVisible(F)V

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->callback:Lnl3;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->setCallback(Lnl3;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedElement;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->setViewportBounds(Landroidx/compose/ui/layout/LayoutBoundsHolder;)V

    invoke-virtual {p1}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->forceUpdate()V

    return-void
.end method
