.class final Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field private final focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

.field private pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    new-instance v3, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$focusTargetNode$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$focusTargetNode$1;-><init>(Ljava/lang/Object;)V

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IZLbm3;Lnl3;ILjh2;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-void
.end method

.method public static final synthetic access$onFocusStateChange(Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    return-void
.end method

.method private final onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    if-ne p2, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    return-void

    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    return-void
.end method

.method private final retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;
    .locals 2

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v1, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;

    invoke-direct {v1, v0, p0}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$retrievePinnableContainer$1;-><init>(Lr07;Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lll3;)V

    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/layout/PinnableContainer;

    return-object p0
.end method


# virtual methods
.method public onObservedReadsChanged()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    :cond_2
    return-void
.end method
