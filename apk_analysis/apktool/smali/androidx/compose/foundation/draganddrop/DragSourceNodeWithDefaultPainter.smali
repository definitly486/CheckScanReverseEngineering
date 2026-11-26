.class final Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"


# instance fields
.field private final cacheDrawScopeDragShadowCallback:Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;

.field private final dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;


# direct methods
.method public constructor <init>(Lbm3;Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    new-instance v0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;

    invoke-direct {v0}, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;-><init>()V

    new-instance v1, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter$cacheDrawScopeDragShadowCallback$1$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter$cacheDrawScopeDragShadowCallback$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/compose/ui/draw/DrawModifierKt;->CacheDrawModifierNode(Lnl3;)Landroidx/compose/ui/draw/CacheDrawModifierNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->cacheDrawScopeDragShadowCallback:Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;

    new-instance v0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    new-instance v1, Landroidx/compose/foundation/draganddrop/h;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/draganddrop/h;-><init>(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;)V

    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;-><init>(Lnl3;Lbm3;Lnl3;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode$lambda$0(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final dragAndDropModifierNode$lambda$0(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->cacheDrawScopeDragShadowCallback:Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;->drawDragShadow(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static getDetectDragStart$delegate(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lrg5;

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    const-string v4, "getDetectDragStart()Lkotlin/jvm/functions/Function2;"

    const/4 v5, 0x0

    const-class v2, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    const-string v3, "detectDragStart"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static getTransferData$delegate(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lrg5;

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    const-string v4, "getTransferData()Lkotlin/jvm/functions/Function1;"

    const/4 v5, 0x0

    const-class v2, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    const-string v3, "transferData"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final getDetectDragStart()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->getDetectDragStart()Lbm3;

    move-result-object p0

    return-object p0
.end method

.method public final getTransferData()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->getTransferData()Lnl3;

    move-result-object p0

    return-object p0
.end method

.method public final setDetectDragStart(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->setDetectDragStart(Lbm3;)V

    return-void
.end method

.method public final setTransferData(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->dragAndDropModifierNode:Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceNode;->setTransferData(Lnl3;)V

    return-void
.end method
