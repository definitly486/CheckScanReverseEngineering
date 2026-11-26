.class public final synthetic Lvs2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/material3/DrawerState;

    invoke-static {p1, p2}, Landroidx/compose/material3/DrawerState$Companion;->b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/DrawerState;)Landroidx/compose/material3/DrawerValue;

    move-result-object p0

    return-object p0
.end method
