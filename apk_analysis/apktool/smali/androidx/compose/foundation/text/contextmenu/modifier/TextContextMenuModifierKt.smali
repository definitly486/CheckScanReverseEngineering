.class public final Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final continueTraversal:Z = true

.field private static final wrongNodeTypeErrorMessage:Ljava/lang/String; = "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."


# direct methods
.method public static synthetic a(Lnl3;Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->traverseTextContextMenuDataNodes$lambda$0(Lnl3;Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    return p0
.end method

.method public static final appendTextContextMenuComponents(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsElement;-><init>(Lnl3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Lnl3;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->collectTextContextMenuData$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Lnl3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final collectTextContextMenuData(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 4

    new-instance v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    invoke-direct {v0}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;-><init>()V

    new-instance v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt$collectTextContextMenuData$1$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt$collectTextContextMenuData$1$1;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lql2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lql2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->traverseTextContextMenuDataNodes(Landroidx/compose/ui/node/DelegatableNode;Lnl3;Lnl3;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->build$foundation()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-result-object p0

    return-object p0
.end method

.method private static final collectTextContextMenuData$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Lnl3;)Lj59;
    .locals 0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final filterTextContextMenuComponents(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsElement;-><init>(Lnl3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final traverseTextContextMenuDataNodes(Landroidx/compose/ui/node/DelegatableNode;Lnl3;Lnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;

    new-instance v1, Lzh2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p1}, Lzh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    return-void
.end method

.method private static final traverseTextContextMenuDataNodes$lambda$0(Lnl3;Lnl3;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 1

    instance-of v0, p2, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;->getBuilder()Lnl3;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of p0, p2, Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsNode;

    if-eqz p0, :cond_1

    check-cast p2, Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsNode;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/contextmenu/modifier/FilterTextContextMenuDataComponentsNode;->getFilter()Lnl3;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
