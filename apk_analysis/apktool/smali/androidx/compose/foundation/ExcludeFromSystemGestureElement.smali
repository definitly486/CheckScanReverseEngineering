.class final Landroidx/compose/foundation/ExcludeFromSystemGestureElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/ExcludeFromSystemGestureNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final exclusion:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/ExcludeFromSystemGestureNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ExcludeFromSystemGestureNode;

    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/ExcludeFromSystemGestureNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->create()Landroidx/compose/foundation/ExcludeFromSystemGestureNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    check-cast p1, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;

    iget-object p1, p1, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getExclusion()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "systemGestureExclusion"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "exclusion"

    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public update(Landroidx/compose/foundation/ExcludeFromSystemGestureNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->exclusion:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/RectListNode;->setRect(Lnl3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/ExcludeFromSystemGestureNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureElement;->update(Landroidx/compose/foundation/ExcludeFromSystemGestureNode;)V

    return-void
.end method
