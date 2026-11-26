.class public final synthetic Landroidx/compose/runtime/saveable/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-static {p1, p2}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->d(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
