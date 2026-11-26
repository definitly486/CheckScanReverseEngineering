.class public final Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final onLayoutRectChanged(Landroidx/compose/ui/Modifier;JJLnl3;)Landroidx/compose/ui/Modifier;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;-><init>(JJLnl3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onLayoutRectChanged$default(Landroidx/compose/ui/Modifier;JJLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p3, 0x40

    :cond_1
    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;->onLayoutRectChanged(Landroidx/compose/ui/Modifier;JJLnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final registerOnLayoutRectChanged(Landroidx/compose/ui/node/DelegatableNode;JJLnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "JJ",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    move-object v7, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/ui/spatial/RectManager;->registerOnRectChangedCallback(IJJLandroidx/compose/ui/node/DelegatableNode;Lnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    move-result-object p0

    return-object p0
.end method
