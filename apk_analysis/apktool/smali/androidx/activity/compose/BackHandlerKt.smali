.class public final Landroidx/activity/compose/BackHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final BackHandler(ZLll3;Landroidx/compose/runtime/Composer;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, -0x158b58d6

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v6, v1, 0x6

    move v7, v6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_2

    invoke-interface {v8, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    and-int/lit8 v9, v1, 0x30

    const/16 v10, 0x20

    if-nez v9, :cond_4

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_4
    and-int/lit8 v9, v7, 0x13

    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v9, v11, :cond_5

    move v9, v13

    goto :goto_3

    :cond_5
    move v9, v12

    :goto_3
    and-int/lit8 v11, v7, 0x1

    invoke-interface {v8, v9, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_21

    if-eqz v4, :cond_6

    move v11, v13

    goto :goto_4

    :cond_6
    move v11, p0

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    const-string v6, "androidx.activity.compose.BackHandler (BackHandler.kt:107)"

    invoke-static {v3, v7, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    sget-object v3, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->INSTANCE:Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;

    sget v4, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->$stable:I

    invoke-virtual {v3, v8, v4}, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/navigationevent/NavigationEventDispatcherOwner;

    move-result-object v3

    if-nez v3, :cond_8

    const v3, 0x1fe7a4b1

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v3, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    const/4 v4, 0x6

    invoke-virtual {v3, v8, v4}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    :cond_8
    const v4, 0x1fe7996e

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    if-eqz v3, :cond_20

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_9

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_e

    :cond_9
    new-instance v6, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    instance-of v4, v3, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    const/4 v9, 0x0

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    goto :goto_6

    :cond_a
    move-object v4, v9

    :goto_6
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v4, v9

    :goto_7
    instance-of v14, v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v14, :cond_c

    move-object v14, v3

    check-cast v14, Landroidx/activity/OnBackPressedDispatcherOwner;

    goto :goto_8

    :cond_c
    move-object v14, v9

    :goto_8
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v9

    :cond_d
    invoke-direct {v6, v4, v9}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    move-object v14, v6

    check-cast v14, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    invoke-static {v8, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_f

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_10

    :cond_f
    new-instance v9, Landroidx/activity/compose/ComposeBackHandler;

    new-instance v4, Landroidx/activity/compose/BackHandlerInfo;

    invoke-direct {v4, v3, v5, v6}, Landroidx/activity/compose/BackHandlerInfo;-><init>(Ljava/lang/Object;J)V

    invoke-direct {v9, v4}, Landroidx/activity/compose/ComposeBackHandler;-><init>(Landroidx/activity/compose/BackHandlerInfo;)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    move-object v5, v9

    check-cast v5, Landroidx/activity/compose/ComposeBackHandler;

    sget-boolean v3, Landroidx/activity/ActivityFlags;->isOnBackPressedLifecycleOrderMaintained:Z

    if-eqz v3, :cond_19

    const v3, -0x22e316cc

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v4, v7, 0x70

    if-ne v4, v10, :cond_11

    move v4, v13

    goto :goto_9

    :cond_11
    move v4, v12

    :goto_9
    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_12

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_13

    :cond_12
    new-instance v4, Landroidx/activity/compose/a;

    invoke-direct {v4, v5, v0}, Landroidx/activity/compose/a;-><init>(Landroidx/activity/compose/ComposeBackHandler;Lll3;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Lll3;

    invoke-static {v4, v8, v12}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v9, v7, 0xe

    const/4 v6, 0x4

    if-ne v9, v6, :cond_14

    goto :goto_a

    :cond_14
    move v13, v12

    :goto_a
    or-int/2addr v3, v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_15

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_16

    :cond_15
    new-instance v6, Landroidx/activity/compose/b;

    invoke-direct {v6, v5, v11}, Landroidx/activity/compose/b;-><init>(Landroidx/activity/compose/ComposeBackHandler;Z)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v7, v6

    check-cast v7, Lnl3;

    const/4 v10, 0x4

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_17

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_18

    :cond_17
    new-instance v4, Landroidx/activity/compose/c;

    invoke-direct {v4, v14, v5}, Landroidx/activity/compose/c;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lnl3;

    invoke-static {v14, v5, v4, v8, v12}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_d

    :cond_19
    const v3, -0x22d8cf30

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v4, v7, 0xe

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1a

    move v4, v13

    goto :goto_b

    :cond_1a
    move v4, v12

    :goto_b
    or-int/2addr v3, v4

    and-int/lit8 v4, v7, 0x70

    if-ne v4, v10, :cond_1b

    goto :goto_c

    :cond_1b
    move v13, v12

    :goto_c
    or-int/2addr v3, v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1c

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1d

    :cond_1c
    new-instance v4, Landroidx/activity/compose/d;

    invoke-direct {v4, v5, v11, v0}, Landroidx/activity/compose/d;-><init>(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v4, Lll3;

    invoke-static {v4, v8, v12}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1e

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1f

    :cond_1e
    new-instance v4, Landroidx/activity/compose/e;

    invoke-direct {v4, v14, v5}, Landroidx/activity/compose/e;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    move-object v7, v4

    check-cast v7, Lnl3;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    move-object v4, v14

    invoke-static/range {v4 .. v10}, Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_e

    :cond_20
    const-string v0, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v11, p0

    :cond_22
    :goto_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_23

    new-instance v4, Lzz;

    invoke-direct {v4, v11, v0, v1, v2}, Lzz;-><init>(ZLll3;II)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_23
    return-void
.end method

.method private static final BackHandler$lambda$2$0(Landroidx/activity/compose/ComposeBackHandler;Lll3;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ComposeBackHandler;->setCurrentOnBackCompleted(Lll3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final BackHandler$lambda$3$0(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->setBackEnabled(Z)V

    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    invoke-direct {p1, p2, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/ComposeBackHandler;)V

    return-object p1
.end method

.method private static final BackHandler$lambda$4$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    new-instance p2, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    invoke-direct {p2, p0, p1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    return-object p2
.end method

.method private static final BackHandler$lambda$5$0(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->setBackEnabled(Z)V

    invoke-virtual {p0, p2}, Landroidx/activity/compose/ComposeBackHandler;->setCurrentOnBackCompleted(Lll3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final BackHandler$lambda$6$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    new-instance v0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;

    invoke-direct {v0, p2, p0, p1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    return-object v0
.end method

.method private static final BackHandler$lambda$7(ZLll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p4, p2, p3}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLll3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(ZLll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$7(ZLll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$4$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$5$0(Landroidx/activity/compose/ComposeBackHandler;ZLll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$3$0(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$6$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/activity/compose/ComposeBackHandler;Lll3;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$2$0(Landroidx/activity/compose/ComposeBackHandler;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
