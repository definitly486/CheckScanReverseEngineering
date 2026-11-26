.class final Landroidx/compose/foundation/layout/VisibilityElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/VisibilityNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final visible:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/VisibilityNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/VisibilityNode;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/VisibilityNode;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/VisibilityElement;->create()Landroidx/compose/foundation/layout/VisibilityNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/foundation/layout/VisibilityElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/layout/VisibilityElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "Visible"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/VisibilityNode;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/VisibilityNode;->getVisible()Z

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/VisibilityElement;->visible:Z

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/VisibilityNode;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 12
    check-cast p1, Landroidx/compose/foundation/layout/VisibilityNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/VisibilityElement;->update(Landroidx/compose/foundation/layout/VisibilityNode;)V

    return-void
.end method
