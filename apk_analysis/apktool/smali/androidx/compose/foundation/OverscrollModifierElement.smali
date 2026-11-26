.class final Landroidx/compose/foundation/OverscrollModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/OverscrollModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/OverscrollModifierNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/OverscrollModifierNode;

    iget-object p0, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/OverscrollEffect;->getNode()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Landroidx/compose/foundation/OverscrollModifierNode;-><init>(Landroidx/compose/ui/node/DelegatableNode;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/OverscrollModifierElement;->create()Landroidx/compose/foundation/OverscrollModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/OverscrollModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    check-cast p1, Landroidx/compose/foundation/OverscrollModifierElement;

    iget-object p1, p1, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

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

    const-string v0, "overscroll"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "overscrollEffect"

    iget-object p0, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/OverscrollModifierNode;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/OverscrollModifierElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/OverscrollEffect;->getNode()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/OverscrollModifierNode;->update(Landroidx/compose/ui/node/DelegatableNode;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 14
    check-cast p1, Landroidx/compose/foundation/OverscrollModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/OverscrollModifierElement;->update(Landroidx/compose/foundation/OverscrollModifierNode;)V

    return-void
.end method
