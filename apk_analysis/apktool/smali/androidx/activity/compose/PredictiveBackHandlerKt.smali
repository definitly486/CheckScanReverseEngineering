.class public final Landroidx/activity/compose/PredictiveBackHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final PredictiveBackHandler(ZLbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbm3<",
            "Lhd3<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Le02<",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, -0x264426c9

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    or-int/lit8 v6, v1, 0x6

    move v7, v6

    move/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_2

    move/from16 v6, p0

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    move v7, v1

    :goto_1
    and-int/lit8 v9, v1, 0x30

    if-nez v9, :cond_4

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_4
    and-int/lit8 v9, v7, 0x13

    const/16 v10, 0x12

    const/4 v11, 0x0

    if-eq v9, v10, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v11

    :goto_3
    and-int/lit8 v10, v7, 0x1

    invoke-interface {v8, v9, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_20

    if-eqz v4, :cond_6

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    move v13, v6

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    const-string v6, "androidx.activity.compose.PredictiveBackHandler (PredictiveBackHandler.kt:118)"

    invoke-static {v3, v7, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    sget-object v3, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->INSTANCE:Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;

    sget v4, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->$stable:I

    invoke-virtual {v3, v8, v4}, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/navigationevent/NavigationEventDispatcherOwner;

    move-result-object v3

    if-nez v3, :cond_8

    const v3, 0x5a2a96fe

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v3, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    const/4 v4, 0x6

    invoke-virtual {v3, v8, v4}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    :cond_8
    const v4, 0x5a2a8bbb

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    if-eqz v3, :cond_1f

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
    instance-of v10, v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v10, :cond_c

    move-object v10, v3

    check-cast v10, Landroidx/activity/OnBackPressedDispatcherOwner;

    goto :goto_8

    :cond_c
    move-object v10, v9

    :goto_8
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v9

    :cond_d
    invoke-direct {v6, v4, v9}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    move-object v14, v6

    check-cast v14, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_f

    sget-object v4, Lgx2;->b:Lgx2;

    invoke-static {v4, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v4

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Ly22;

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v6, :cond_10

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v12, v6, :cond_11

    :cond_10
    new-instance v12, Landroidx/activity/compose/ComposePredictiveBackHandler;

    new-instance v6, Landroidx/activity/compose/PredictiveBackHandlerInfo;

    invoke-direct {v6, v3, v9, v10}, Landroidx/activity/compose/PredictiveBackHandlerInfo;-><init>(Ljava/lang/Object;J)V

    invoke-direct {v12, v4, v6}, Landroidx/activity/compose/ComposePredictiveBackHandler;-><init>(Ly22;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v12, Landroidx/activity/compose/ComposePredictiveBackHandler;

    sget-boolean v3, Landroidx/activity/ActivityFlags;->isOnBackPressedLifecycleOrderMaintained:Z

    if-eqz v3, :cond_19

    const v3, -0x14c5e7d0

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_12

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_13

    :cond_12
    new-instance v4, Landroidx/activity/compose/g;

    invoke-direct {v4, v12, v0}, Landroidx/activity/compose/g;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Lll3;

    invoke-static {v4, v8, v11}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v9, v7, 0xe

    if-ne v9, v5, :cond_14

    const/4 v5, 0x1

    goto :goto_9

    :cond_14
    move v5, v11

    :goto_9
    or-int/2addr v3, v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_15

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_16

    :cond_15
    new-instance v5, Landroidx/activity/compose/h;

    invoke-direct {v5, v12, v13}, Landroidx/activity/compose/h;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Z)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v7, v5

    check-cast v7, Lnl3;

    const/4 v10, 0x4

    const/4 v6, 0x0

    move-object v5, v12

    invoke-static/range {v4 .. v10}, Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_18

    :cond_17
    new-instance v4, Landroidx/activity/compose/i;

    invoke-direct {v4, v14, v12}, Landroidx/activity/compose/i;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lnl3;

    invoke-static {v14, v12, v4, v8, v11}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    :cond_19
    const v3, -0x14bbc314

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v4, v7, 0xe

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_a

    :cond_1a
    move v4, v11

    :goto_a
    or-int/2addr v3, v4

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1b

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1c

    :cond_1b
    new-instance v4, Landroidx/activity/compose/j;

    invoke-direct {v4, v12, v13, v0}, Landroidx/activity/compose/j;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1c
    check-cast v4, Lll3;

    invoke-static {v4, v8, v11}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1d

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1e

    :cond_1d
    new-instance v4, Landroidx/activity/compose/k;

    invoke-direct {v4, v14, v12}, Landroidx/activity/compose/k;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    move-object v7, v4

    check-cast v7, Lnl3;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    move-object v5, v12

    move-object v4, v14

    invoke-static/range {v4 .. v10}, Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_c

    :cond_1f
    const-string v0, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v6

    :cond_21
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_22

    new-instance v4, Lef6;

    invoke-direct {v4, v13, v0, v1, v2}, Lef6;-><init>(ZLbm3;II)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_22
    return-void
.end method

.method private static final PredictiveBackHandler$lambda$2$0(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ComposePredictiveBackHandler;->setCurrentOnBack(Lbm3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final PredictiveBackHandler$lambda$3$0(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ComposePredictiveBackHandler;->setBackEnabled(Z)V

    new-instance p1, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    invoke-direct {p1, p2, p0}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/ComposePredictiveBackHandler;)V

    return-object p1
.end method

.method private static final PredictiveBackHandler$lambda$4$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    new-instance p2, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$4$0$$inlined$onDispose$1;

    invoke-direct {p2, p0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;)V

    return-object p2
.end method

.method private static final PredictiveBackHandler$lambda$5$0(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ComposePredictiveBackHandler;->setBackEnabled(Z)V

    invoke-virtual {p0, p2}, Landroidx/activity/compose/ComposePredictiveBackHandler;->setCurrentOnBack(Lbm3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final PredictiveBackHandler$lambda$6$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    new-instance v0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$6$0$$inlined$onStopOrDispose$1;

    invoke-direct {v0, p2, p0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$lambda$6$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;)V

    return-object v0
.end method

.method private static final PredictiveBackHandler$lambda$7(ZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p4, p2, p3}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$2$0(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$7(ZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$3$0(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$4$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$5$0(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$6$0(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method
