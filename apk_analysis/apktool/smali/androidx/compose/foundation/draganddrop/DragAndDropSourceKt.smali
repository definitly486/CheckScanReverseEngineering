.class public final Landroidx/compose/foundation/draganddrop/DragAndDropSourceKt;
.super Ljava/lang/Object;


# direct methods
.method public static final dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceKt__DragAndDropSourceKt;->dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;Lbm3;)Landroidx/compose/ui/Modifier;
    .locals 0
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

    .line 6
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceKt__LegacyDragAndDropSource_androidKt;->dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;Lbm3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceKt__DragAndDropSourceKt;->dragAndDropSource(Landroidx/compose/ui/Modifier;Lnl3;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
