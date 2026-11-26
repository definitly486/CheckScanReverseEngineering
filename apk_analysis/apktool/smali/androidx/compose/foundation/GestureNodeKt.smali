.class public final Landroidx/compose/foundation/GestureNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/GestureNodeKt;->traverseAncestorGestureConnections$lambda$0(Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    return p0
.end method

.method public static final gestureNode(Landroidx/compose/foundation/GestureConnection;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/GestureNode;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    return-object v0
.end method

.method public static final getParentGestureConnection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/GestureConnection;
    .locals 2

    sget-object v0, Landroidx/compose/foundation/GestureNode;->TraverseKey:Landroidx/compose/foundation/GestureNode$TraverseKey;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/TraversableNodeKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/GestureNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/GestureNode;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/GestureNode;->getGestureConnection()Landroidx/compose/foundation/GestureConnection;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final traverseAncestorGestureConnections(Landroidx/compose/ui/node/DelegatableNode;Lnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/GestureConnection;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/GestureNode;->TraverseKey:Landroidx/compose/foundation/GestureNode$TraverseKey;

    new-instance v1, Lvh0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lvh0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    return-void
.end method

.method private static final traverseAncestorGestureConnections$lambda$0(Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/foundation/GestureNode;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/GestureNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/GestureNode;->getGestureConnection()Landroidx/compose/foundation/GestureConnection;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Node is not a GestureNode instance"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
