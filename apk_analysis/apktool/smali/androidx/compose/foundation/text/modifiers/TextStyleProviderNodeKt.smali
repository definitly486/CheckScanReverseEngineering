.class public final Landroidx/compose/foundation/text/modifiers/TextStyleProviderNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lr07;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/TextStyleProviderNodeKt;->inheritedTextStyle_Bh5OqGs$lambda$0(Lr07;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    return p0
.end method

.method public static final inheritedTextStyle-Bh5OqGs(Landroidx/compose/ui/node/DelegatableNode;ILandroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 2

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iput-object p2, v0, Lr07;->b:Ljava/lang/Object;

    new-instance v1, Lxs8;

    invoke-direct {v1, v0, p1, p2}, Lxs8;-><init>(Lr07;ILandroidx/compose/ui/text/TextStyle;)V

    const-string p1, "StyleOuterNode"

    invoke-static {p0, p1, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method private static final inheritedTextStyle_Bh5OqGs$lambda$0(Lr07;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 1

    instance-of v0, p3, Landroidx/compose/foundation/style/StyleOuterNode;

    if-eqz v0, :cond_0

    check-cast p3, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->computeInheritedTextStyle-B-LjeIk(ILandroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p1

    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
