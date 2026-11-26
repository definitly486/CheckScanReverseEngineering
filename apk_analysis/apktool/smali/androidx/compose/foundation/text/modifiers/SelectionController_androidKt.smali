.class public final Landroidx/compose/foundation/text/modifiers/SelectionController_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final makeSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLll3;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            "J",
            "Lll3<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->makeDefaultSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLll3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
