.class public abstract Landroidx/compose/ui/input/pointer/HoverIconModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private cursorInBoundsOfNode:Z

.field private dpTouchBoundsExpansion:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

.field private icon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field private overrideDescendants:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 15
    iput-object p3, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->dpTouchBoundsExpansion:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    .line 16
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 17
    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;-><init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;)V

    return-void
.end method

.method public static final synthetic access$getCursorInBoundsOfNode$p(Landroidx/compose/ui/input/pointer/HoverIconModifierNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    return p0
.end method

.method private final displayIcon()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->findOverridingAncestorNode()Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    return-void
.end method

.method private final displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon()V
    .locals 2

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon$1;-><init>(Lr07;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/TraversableNode;Lnl3;)V

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    return-void
.end method

.method private final displayIconFromCurrentNodeOrDescendantsWithCursorInBounds()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->findDescendantNodeWithCursorInBounds()Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon()V

    return-void
.end method

.method private final displayIconIfDescendantsDoNotHavePriority()V
    .locals 2

    new-instance v0, Ln07;

    invoke-direct {v0}, Ln07;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ln07;->b:Z

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$displayIconIfDescendantsDoNotHavePriority$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$displayIconIfDescendantsDoNotHavePriority$1;-><init>(Ln07;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lnl3;)V

    :cond_0
    iget-boolean v0, v0, Ln07;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon()V

    :cond_1
    return-void
.end method

.method private final findDescendantNodeWithCursorInBounds()Landroidx/compose/ui/input/pointer/HoverIconModifierNode;
    .locals 2

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findDescendantNodeWithCursorInBounds$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findDescendantNodeWithCursorInBounds$1;-><init>(Lr07;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lnl3;)V

    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    return-object p0
.end method

.method private final findOverridingAncestorNode()Landroidx/compose/ui/input/pointer/HoverIconModifierNode;
    .locals 2

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findOverridingAncestorNode$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode$findOverridingAncestorNode$1;-><init>(Lr07;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/TraversableNode;Lnl3;)V

    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    return-object p0
.end method

.method private final onEnter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIconIfDescendantsDoNotHavePriority()V

    return-void
.end method

.method private final onExit()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract displayIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V
.end method

.method public final getDpTouchBoundsExpansion()Landroidx/compose/ui/node/DpTouchBoundsExpansion;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->dpTouchBoundsExpansion:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    return-object p0
.end method

.method public final getIcon()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object p0
.end method

.method public final getOverrideDescendants()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    return p0
.end method

.method public final getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalPointerIconService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerIconService;

    return-object p0
.end method

.method public getTouchBoundsExpansion-RZrCHBk()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->dpTouchBoundsExpansion:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->roundToTouchBoundsExpansion-TW6G1oQ(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Landroidx/compose/ui/node/TouchBoundsExpansion;->Companion:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->getNone-RZrCHBk()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract isRelevantPointerType-uerMTgs(I)Z
.end method

.method public onCancelPointerInput()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->onExit()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->onExit()V

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->isRelevantPointerType-uerMTgs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p2

    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result p4

    invoke-static {p2, p4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->onEnter()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->onExit()V

    return-void

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setDpTouchBoundsExpansion(Landroidx/compose/ui/node/DpTouchBoundsExpansion;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->dpTouchBoundsExpansion:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    return-void
.end method

.method public final setIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIconIfDescendantsDoNotHavePriority()V

    :cond_0
    return-void
.end method

.method public final setOverrideDescendants(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->overrideDescendants:Z

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->cursorInBoundsOfNode:Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIcon()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->displayIconFromCurrentNodeOrDescendantsWithCursorInBounds()V

    :cond_1
    return-void
.end method
