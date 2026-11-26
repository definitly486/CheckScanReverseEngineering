.class final Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"


# instance fields
.field private dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

.field private shouldStartDragAndDrop:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;


# direct methods
.method public constructor <init>(Lnl3;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTarget;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->shouldStartDragAndDrop:Lnl3;

    iput-object p2, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->createAndAttachDragAndDropModifierNode$lambda$0(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    move-result p0

    return p0
.end method

.method private final createAndAttachDragAndDropModifierNode()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/draganddrop/g;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/draganddrop/g;-><init>(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;)V

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-static {v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->DragAndDropTargetModifierNode(Lnl3;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    return-void
.end method

.method private static final createAndAttachDragAndDropModifierNode$lambda$0(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->shouldStartDragAndDrop:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onAttach()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->createAndAttachDragAndDropModifierNode()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    return-void
.end method

.method public final update(Lnl3;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTarget;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->shouldStartDragAndDrop:Lnl3;

    iget-object p1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-static {p2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    iput-object p2, p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-direct {p0}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->createAndAttachDragAndDropModifierNode()V

    :cond_1
    return-void
.end method
