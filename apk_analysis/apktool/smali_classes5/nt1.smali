.class public final synthetic Lnt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p1, p0, 0x3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p0, 0x1

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string p2, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$1769811749.<anonymous> (CheckscanTopBar.kt:89)"

    const v0, 0x697d2f25

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v2, Lpt1;->f:Landroidx/compose/runtime/internal/ComposableLambda;

    sget-object v3, Lpt1;->g:Landroidx/compose/runtime/internal/ComposableLambda;

    const/16 v5, 0xd86

    const/4 v6, 0x2

    const-string v0, "\u041e\u0447\u0435\u043d\u044c \u0434\u043b\u0438\u043d\u043d\u044b\u0439 \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a \u0442\u0443\u043b\u0431\u0430\u0440\u0430, \u043a\u043e\u0442\u043e\u0440\u044b\u0439 \u043d\u0435 \u043f\u043e\u043c\u0435\u0449\u0430\u0435\u0442\u0441\u044f"

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Ldd1;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
