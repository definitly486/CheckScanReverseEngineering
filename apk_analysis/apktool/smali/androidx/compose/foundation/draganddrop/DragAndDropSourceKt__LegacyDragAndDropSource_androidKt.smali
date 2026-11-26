.class final synthetic Landroidx/compose/foundation/draganddrop/DragAndDropSourceKt__LegacyDragAndDropSource_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;Lbm3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/draganddrop/DragAndDropSourceScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance v0, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/draganddrop/LegacyDragAndDropSourceElement;-><init>(Lnl3;Lbm3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
