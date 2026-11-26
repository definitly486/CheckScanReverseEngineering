.class public final synthetic Landroidx/compose/foundation/lazy/layout/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion;->b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
