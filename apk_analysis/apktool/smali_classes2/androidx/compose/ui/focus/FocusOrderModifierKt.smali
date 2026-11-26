.class public final Landroidx/compose/ui/focus/FocusOrderModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance v0, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {v0, p2}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lnl3;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    new-instance p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$focusOrder$2;

    invoke-direct {p1, v0}, Landroidx/compose/ui/focus/FocusOrderModifierKt$focusOrder$2;-><init>(Landroidx/compose/ui/focus/FocusOrderToProperties;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 20
    new-instance v0, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lnl3;)V

    .line 21
    new-instance p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$focusOrder$1;

    invoke-direct {p1, v0}, Landroidx/compose/ui/focus/FocusOrderModifierKt$focusOrder$1;-><init>(Landroidx/compose/ui/focus/FocusOrderToProperties;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
