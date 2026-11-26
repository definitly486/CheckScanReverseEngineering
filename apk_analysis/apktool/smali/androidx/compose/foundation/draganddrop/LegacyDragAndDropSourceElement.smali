.class final Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final dragAndDropSourceHandler:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final drawDragDecoration:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    iput-object p2, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;-><init>(Lnl3;Lbm3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->create()Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    check-cast p1, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;

    iget-object v3, p1, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    iget-object p1, p1, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDragAndDropSourceHandler()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    return-object p0
.end method

.method public final getDrawDragDecoration()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "dragSource"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "drawDragDecoration"

    iget-object v2, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "dragAndDropSourceHandler"

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->drawDragDecoration:Lnl3;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;->setDrawDragDecoration(Lnl3;)V

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->dragAndDropSourceHandler:Lbm3;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;->setDragAndDropSourceHandler(Lbm3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 11
    check-cast p1, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;->update(Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceNode;)V

    return-void
.end method
