.class public final Landroidx/navigationevent/compose/RememberNavigationEventStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/navigationevent/compose/RememberNavigationEventStateKt;->rememberNavigationEventState$lambda$2$lambda$1(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberNavigationEventState(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;II)Landroidx/navigationevent/compose/NavigationEventState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">(TT;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "TT;>;"
        }
    .end annotation

    and-int/lit8 v0, p5, 0x2

    sget-object v1, Lkx2;->b:Lkx2;

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    const/4 p1, 0x4

    and-int/2addr p5, p1

    if-eqz p5, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p2

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    const-string p5, "androidx.navigationevent.compose.rememberNavigationEventState (RememberNavigationEventState.kt:44)"

    const v0, 0x6f3602a

    invoke-static {v0, p4, p2, p5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_3

    new-instance p2, Landroidx/navigationevent/compose/NavigationEventState;

    invoke-direct {p2, p0, v5, v6}, Landroidx/navigationevent/compose/NavigationEventState;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v3, p2

    check-cast v3, Landroidx/navigationevent/compose/NavigationEventState;

    and-int/lit8 p2, p4, 0xe

    xor-int/lit8 p2, p2, 0x6

    const/4 v0, 0x0

    if-le p2, p1, :cond_4

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    and-int/lit8 p2, p4, 0x6

    if-ne p2, p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_7

    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_8

    :cond_7
    new-instance v2, Ljh0;

    const/4 v7, 0x1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Ljh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p2, v2

    :cond_8
    check-cast p2, Lll3;

    invoke-static {p2, p3, v0}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    return-object v3
.end method

.method private static final rememberNavigationEventState$lambda$2$lambda$1(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/navigationevent/compose/NavigationEventState;->setCurrentInfo$navigationevent_compose(Landroidx/navigationevent/NavigationEventInfo;)V

    invoke-virtual {p0, p2}, Landroidx/navigationevent/compose/NavigationEventState;->setBackInfo$navigationevent_compose(Ljava/util/List;)V

    invoke-virtual {p0, p3}, Landroidx/navigationevent/compose/NavigationEventState;->setForwardInfo$navigationevent_compose(Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
