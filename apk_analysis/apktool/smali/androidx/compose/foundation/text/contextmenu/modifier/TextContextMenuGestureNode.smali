.class final Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;,
        Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$Companion;

.field private static final MESSAGE:Ljava/lang/String; = "Tried to open context menu before the anchor was placed."


# instance fields
.field private final localCoordinates$delegate:Landroidx/compose/runtime/MutableState;

.field private onPreShowContextMenu:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->Companion:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$Companion;

    return-void
.end method

.method public constructor <init>(Lbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->onPreShowContextMenu:Lbm3;

    const/4 p1, 0x0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->localCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    new-instance p1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$1;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;)V

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public static final synthetic access$getLocalCoordinates(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->getLocalCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnPreShowContextMenu$p(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;)Lbm3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->onPreShowContextMenu:Lbm3;

    return-object p0
.end method

.method public static final synthetic access$tryShowContextMenu-k-4lQ0M(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->tryShowContextMenu-k-4lQ0M(J)V

    return-void
.end method

.method private final getLocalCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->localCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method private final setLocalCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->localCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final tryShowContextMenu-k-4lQ0M(J)V
    .locals 9

    invoke-static {}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->getLocalTextContextMenuDropdownProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v6, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, p2, v0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;JLjh2;)V

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v8

    new-instance v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$tryShowContextMenu$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$tryShowContextMenu$1;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;JLandroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;Le02;)V

    const/4 p0, 0x3

    invoke-static {v8, v0, v0, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method


# virtual methods
.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->setLocalCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public final update(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->onPreShowContextMenu:Lbm3;

    return-void
.end method
