.class public final synthetic Landroidx/compose/material3/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/material3/TimePickerStateImpl;

    invoke-static {p1, p2}, Landroidx/compose/material3/TimePickerStateImpl$Companion;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/TimePickerStateImpl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
