.class final Landroidx/compose/foundation/FocusedBoundsObserverElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/FocusedBoundsObserverNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPositioned:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lj59;",
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
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/FocusedBoundsObserverNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->create()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    iget-object p1, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final getOnPositioned()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "onFocusedBoundsChanged"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "onPositioned"

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->setOnPositioned(Lnl3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V

    return-void
.end method
