.class public final Landroidx/compose/foundation/gestures/Scrollable2DNode;
.super Landroidx/compose/foundation/gestures/DragGestureNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field private flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field private final nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

.field private final nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private scrollByAction:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private scrollByOffsetAction:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Le02<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

.field private final shouldAutoInvalidate:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 8

    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getCanDragCalculation()Lnl3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, p5, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;-><init>(Lnl3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V

    iput-object p2, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    new-instance v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object v6, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    new-instance p2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getUnityDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p3

    invoke-static {p3}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object p3

    const/4 p5, 0x2

    invoke-direct {p2, p3, v1, p5, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;ILjh2;)V

    iput-object p2, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    new-instance v2, Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object p3, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez p3, :cond_0

    move-object v5, p2

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    new-instance v7, Lib7;

    const/4 p2, 0x1

    invoke-direct {v7, p0, p2}, Lib7;-><init>(Ljava/lang/Object;I)V

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;-><init>(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lll3;)V

    iput-object v2, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-direct {p1, v2, p4}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;-><init>(Landroidx/compose/foundation/gestures/ScrollLogic;Z)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-static {p1, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->nestedScrollModifierNode(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    sget-boolean p1, Landroidx/compose/foundation/ComposeFoundationFlags;->isDelayPressesUsingGestureConsumptionEnabled:Z

    if-nez p1, :cond_1

    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    invoke-direct {p1, p4}, Landroidx/compose/foundation/gestures/ScrollableContainerNode;-><init>(Z)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    :cond_1
    return-void
.end method

.method public static final synthetic access$getScrollingLogic$p(Landroidx/compose/foundation/gestures/Scrollable2DNode;)Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/gestures/Scrollable2DNode;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic$lambda$0(Landroidx/compose/foundation/gestures/Scrollable2DNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/gestures/Scrollable2DNode;FF)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->setScrollSemanticsActions$lambda$0(Landroidx/compose/foundation/gestures/Scrollable2DNode;FF)Z

    move-result p0

    return p0
.end method

.method private final clearScrollSemanticsActions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByAction:Lbm3;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByOffsetAction:Lbm3;

    return-void
.end method

.method private static final scrollingLogic$lambda$0(Landroidx/compose/foundation/gestures/Scrollable2DNode;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p0

    return p0
.end method

.method private final setScrollSemanticsActions()V
    .locals 2

    new-instance v0, Lyi7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyi7;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByAction:Lbm3;

    new-instance v0, Landroidx/compose/foundation/gestures/Scrollable2DNode$setScrollSemanticsActions$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/Scrollable2DNode$setScrollSemanticsActions$2;-><init>(Landroidx/compose/foundation/gestures/Scrollable2DNode;Le02;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByOffsetAction:Lbm3;

    return-void
.end method

.method private static final setScrollSemanticsActions$lambda$0(Landroidx/compose/foundation/gestures/Scrollable2DNode;FF)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/gestures/Scrollable2DNode$setScrollSemanticsActions$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/compose/foundation/gestures/Scrollable2DNode$setScrollSemanticsActions$1$1;-><init>(Landroidx/compose/foundation/gestures/Scrollable2DNode;FFLe02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    const/4 p0, 0x1

    return p0
.end method

.method private final updateDefaultFlingBehavior()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->updateDensity(Landroidx/compose/ui/unit/Density;)V

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByAction:Lbm3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByOffsetAction:Lbm3;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->setScrollSemanticsActions()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByAction:Lbm3;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollBy$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lbm3;ILjava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollByOffsetAction:Lbm3;

    if-eqz p0, :cond_3

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollByOffset(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lbm3;)V

    :cond_3
    return-void
.end method

.method public drag(Lbm3;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
            "Lj59;",
            ">;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    sget-object v0, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v1, Landroidx/compose/foundation/gestures/Scrollable2DNode$drag$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/compose/foundation/gestures/Scrollable2DNode$drag$2$1;-><init>(Lbm3;Le02;)V

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->shouldAutoInvalidate:Z

    return p0
.end method

.method public onAttach()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->updateDefaultFlingBehavior()V

    return-void
.end method

.method public onDensityChange()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->onCancelPointerInput()V

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->updateDefaultFlingBehavior()V

    return-void
.end method

.method public onDragStarted-k-4lQ0M(J)V
    .locals 0

    return-void
.end method

.method public onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/gestures/Scrollable2DNode$onDragStopped$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/foundation/gestures/Scrollable2DNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/Scrollable2DNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getCanDrag()Lnl3;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerType;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerType;

    move-result-object v3

    invoke-interface {v4, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/DragGestureNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDragImmediately()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->shouldScrollImmediately()Z

    move-result p0

    return p0
.end method

.method public final update(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getEnabled()Z

    move-result v4

    if-eq v4, p3, :cond_1

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-virtual {v4, p3}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->setEnabled(Z)V

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p3}, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->update(Z)V

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-nez p4, :cond_2

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    iget-object v5, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v5, p1, p2, v4, v6}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->update(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Z

    move-result v5

    iput-object p2, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/Scrollable2DNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getCanDragCalculation()Lnl3;

    move-result-object v1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DragGestureNode;->update$default(Landroidx/compose/foundation/gestures/DragGestureNode;Lnl3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZILjava/lang/Object;)V

    if-eqz v8, :cond_3

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/Scrollable2DNode;->clearScrollSemanticsActions()V

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_3
    return-void
.end method
