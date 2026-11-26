.class public final synthetic Llc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/SaversKt;->Z(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/BaselineShift;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
