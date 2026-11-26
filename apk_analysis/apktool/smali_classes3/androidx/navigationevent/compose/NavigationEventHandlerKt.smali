.class public final Landroidx/navigationevent/compose/NavigationEventHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v5, p5

    const v0, 0x48bee1a3

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v1, v5, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v3, v5

    :goto_1
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    :cond_2
    move/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v5, 0x30

    if-nez v6, :cond_2

    move/from16 v6, p1

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :goto_3
    and-int/lit8 v7, p6, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v3, v3, 0x180

    :cond_5
    move-object/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v5, 0x180

    if-nez v8, :cond_5

    move-object/from16 v8, p2

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v5, 0xc00

    move-object/from16 v12, p3

    if-nez v9, :cond_9

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_6

    :cond_8
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    :cond_9
    and-int/lit16 v9, v3, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x0

    const/4 v14, 0x1

    if-eq v9, v10, :cond_a

    move v9, v14

    goto :goto_7

    :cond_a
    move v9, v11

    :goto_7
    and-int/lit8 v10, v3, 0x1

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_12

    if-eqz v4, :cond_b

    move v10, v14

    goto :goto_8

    :cond_b
    move v10, v6

    :goto_8
    if-eqz v7, :cond_d

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_c

    new-instance v4, Le01;

    invoke-direct {v4, v14}, Le01;-><init>(I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lll3;

    goto :goto_9

    :cond_d
    move-object v4, v8

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, -0x1

    const-string v7, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)"

    invoke-static {v0, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v0, v7, :cond_f

    new-instance v0, Lre0;

    invoke-direct {v0, v2}, Lre0;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    move-object v8, v0

    check-cast v8, Lll3;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_10

    new-instance v0, Lnk5;

    invoke-direct {v0, v11}, Lnk5;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    move-object v9, v0

    check-cast v9, Lll3;

    and-int/lit8 v0, v3, 0xe

    or-int/lit16 v0, v0, 0xdb0

    shl-int/lit8 v2, v3, 0x9

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int v14, v0, v2

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    move-object v11, v4

    invoke-static/range {v6 .. v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    move v2, v10

    move-object v3, v11

    goto :goto_a

    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v2, v6

    move-object v3, v8

    :goto_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v0, Lok5;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lok5;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_13
    return-void
.end method

.method private static final NavigationBackHandler$lambda$20$lambda$19()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationBackHandler$lambda$22$lambda$21()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationBackHandler$lambda$24$lambda$23()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationBackHandler$lambda$25(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 7

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v4, p6

    invoke-static/range {v0 .. v6}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v8, p8

    const v0, 0x358b6fe0

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_1

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    :cond_2
    move/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_2

    move/from16 v5, p1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    :goto_3
    and-int/lit8 v6, p9, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v2, v2, 0x180

    :cond_5
    move-object/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_5

    move-object/from16 v11, p2

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v2, v12

    :goto_5
    and-int/lit8 v12, p9, 0x8

    if-eqz v12, :cond_9

    or-int/lit16 v2, v2, 0xc00

    :cond_8
    move-object/from16 v14, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v14, v8, 0xc00

    if-nez v14, :cond_8

    move-object/from16 v14, p3

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v2, v15

    :goto_7
    and-int/lit8 v15, p9, 0x10

    if-eqz v15, :cond_c

    or-int/lit16 v2, v2, 0x6000

    :cond_b
    move/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_b

    move/from16 v13, p4

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v2, v2, v16

    :goto_9
    and-int/lit8 v16, p9, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_e

    or-int v2, v2, v17

    move-object/from16 v7, p5

    goto :goto_b

    :cond_e
    and-int v17, v8, v17

    move-object/from16 v7, p5

    if-nez v17, :cond_10

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v18, 0x10000

    :goto_a
    or-int v2, v2, v18

    :cond_10
    :goto_b
    and-int/lit8 v18, p9, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_11

    or-int v2, v2, v19

    move-object/from16 v4, p6

    goto :goto_d

    :cond_11
    and-int v19, v8, v19

    move-object/from16 v4, p6

    if-nez v19, :cond_13

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v20, 0x80000

    :goto_c
    or-int v2, v2, v20

    :cond_13
    :goto_d
    const v20, 0x92493

    and-int v10, v2, v20

    const v0, 0x92492

    const/4 v11, 0x1

    if-eq v10, v0, :cond_14

    move v0, v11

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v10, v2, 0x1

    invoke-interface {v9, v0, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v3, :cond_15

    move v5, v11

    :cond_15
    if-eqz v6, :cond_17

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_16

    new-instance v0, Lpk5;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lpk5;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v0, Lll3;

    move-object v3, v0

    goto :goto_f

    :cond_17
    move-object/from16 v3, p2

    :goto_f
    if-eqz v12, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v0, v6, :cond_18

    new-instance v0, Lqk5;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lqk5;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Lll3;

    move-object v4, v0

    goto :goto_10

    :cond_19
    move-object v4, v14

    :goto_10
    move v0, v5

    if-eqz v15, :cond_1a

    move v5, v11

    goto :goto_11

    :cond_1a
    move v5, v13

    :goto_11
    if-eqz v16, :cond_1c

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1b

    new-instance v6, Llr2;

    invoke-direct {v6, v11}, Llr2;-><init>(I)V

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    check-cast v6, Lll3;

    goto :goto_12

    :cond_1c
    move-object v6, v7

    :goto_12
    if-eqz v18, :cond_1e

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v7, v10, :cond_1d

    new-instance v7, Lvu1;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Lvu1;-><init>(I)V

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v7, Lll3;

    goto :goto_13

    :cond_1e
    move-object/from16 v7, p6

    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v10, -0x1

    const-string v12, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)"

    const v13, 0x358b6fe0

    invoke-static {v13, v2, v10, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroidx/navigationevent/compose/NavigationEventHandler_androidKt;->isInspectionMode(Landroidx/compose/runtime/Composer;I)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_34

    move v2, v0

    new-instance v0, Lik5;

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lik5;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;II)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    return-void

    :cond_21
    sget-object v8, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->INSTANCE:Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/navigationevent/NavigationEventDispatcherOwner;

    move-result-object v8

    if-eqz v8, :cond_31

    invoke-interface {v8}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v10

    and-int/lit8 v12, v2, 0xe

    const/4 v8, 0x4

    if-ne v12, v8, :cond_22

    move v8, v11

    goto :goto_14

    :cond_22
    const/4 v8, 0x0

    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_23

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v13, v8, :cond_24

    :cond_23
    new-instance v13, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-virtual {v1}, Landroidx/navigationevent/compose/NavigationEventState;->getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;

    move-result-object v8

    new-instance v14, Lmi5;

    invoke-direct {v14, v1, v11}, Lmi5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v13, v8, v14}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lnl3;)V

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v13, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit8 v14, v2, 0x70

    const/16 v15, 0x20

    if-ne v14, v15, :cond_25

    move v14, v11

    goto :goto_15

    :cond_25
    const/4 v14, 0x0

    :goto_15
    or-int/2addr v8, v14

    and-int/lit16 v14, v2, 0x380

    const/16 v15, 0x100

    if-ne v14, v15, :cond_26

    move v14, v11

    goto :goto_16

    :cond_26
    const/4 v14, 0x0

    :goto_16
    or-int/2addr v8, v14

    and-int/lit16 v14, v2, 0x1c00

    const/16 v15, 0x800

    if-ne v14, v15, :cond_27

    move v14, v11

    goto :goto_17

    :cond_27
    const/4 v14, 0x0

    :goto_17
    or-int/2addr v8, v14

    const v14, 0xe000

    and-int/2addr v14, v2

    const/16 v15, 0x4000

    if-ne v14, v15, :cond_28

    move v14, v11

    goto :goto_18

    :cond_28
    const/4 v14, 0x0

    :goto_18
    or-int/2addr v8, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v2

    const/high16 v15, 0x20000

    if-ne v14, v15, :cond_29

    move v14, v11

    goto :goto_19

    :cond_29
    const/4 v14, 0x0

    :goto_19
    or-int/2addr v8, v14

    const/high16 v14, 0x380000

    and-int/2addr v2, v14

    const/high16 v14, 0x100000

    if-ne v2, v14, :cond_2a

    move v2, v11

    goto :goto_1a

    :cond_2a
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v2, v8

    const/4 v8, 0x4

    if-ne v12, v8, :cond_2b

    move v8, v11

    goto :goto_1b

    :cond_2b
    const/4 v8, 0x0

    :goto_1b
    or-int/2addr v2, v8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_2c

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v8, v2, :cond_2d

    :cond_2c
    move v2, v0

    goto :goto_1c

    :cond_2d
    move v2, v0

    goto :goto_1d

    :goto_1c
    new-instance v0, Landroidx/navigationevent/compose/f;

    move-object v8, v1

    move-object v1, v13

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/compose/f;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)V

    move-object v1, v8

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v0

    :goto_1d
    check-cast v8, Lll3;

    const/4 v0, 0x0

    invoke-static {v8, v9, v0}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x4

    if-ne v12, v8, :cond_2e

    goto :goto_1e

    :cond_2e
    move v11, v0

    :goto_1e
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v11

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_2f

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_30

    :cond_2f
    new-instance v8, Landroidx/navigationevent/compose/g;

    invoke-direct {v8, v1, v13, v10}, Landroidx/navigationevent/compose/g;-><init>(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v8, Lnl3;

    invoke-static {v1, v8, v9, v12}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1f

    :cond_31
    const-string v0, "No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_32
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v2, v5

    move-object v6, v7

    move v5, v13

    move-object v4, v14

    move-object/from16 v7, p6

    :cond_33
    :goto_1f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_34

    new-instance v0, Ljk5;

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ljk5;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;II)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_34
    return-void
.end method

.method private static final NavigationEventHandler$lambda$1$lambda$0()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationEventHandler$lambda$11$lambda$10(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/navigationevent/compose/NavigationEventState;->setTransitionState$navigationevent_compose(Landroidx/navigationevent/NavigationEventTransitionState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final NavigationEventHandler$lambda$13$lambda$12(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->setForwardEnabled(Z)V

    invoke-virtual {p0, p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnForwardCancelled(Lll3;)V

    invoke-virtual {p0, p3}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnForwardCompleted(Lll3;)V

    invoke-virtual {p0, p4}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    invoke-virtual {p0, p5}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnBackCancelled(Lll3;)V

    invoke-virtual {p0, p6}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnBackCompleted(Lll3;)V

    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;

    move-result-object p1

    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getBackInfo()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getForwardInfo()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventHandler;->setInfo(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final NavigationEventHandler$lambda$17$lambda$16(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    invoke-virtual {p0}, Landroidx/navigationevent/compose/NavigationEventState;->getSourceHandler$navigationevent_compose()Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/navigationevent/compose/NavigationEventState;->setSourceHandler$navigationevent_compose(Landroidx/navigationevent/NavigationEventHandler;)V

    const/4 p3, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, p3, v1, v0}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    new-instance p2, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;

    invoke-direct {p2, p1, p0}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/compose/NavigationEventState;)V

    return-object p2

    :cond_0
    const-string p2, "\' is already registered with a NavigationEventHandler \'"

    const-string p3, "\'."

    const-string v1, "NavigationEventState \'"

    invoke-static {v1, p0, p2, p1, p3}, Ljg;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final NavigationEventHandler$lambda$18(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final NavigationEventHandler$lambda$3$lambda$2()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationEventHandler$lambda$5$lambda$4()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationEventHandler$lambda$7$lambda$6()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationEventHandler$lambda$8(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final NavigationForwardHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v5, p5

    const v0, -0x679238f7

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v1, v5, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v2, v5

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    :cond_2
    move/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v5, 0x30

    if-nez v4, :cond_2

    move/from16 v4, p1

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    :goto_3
    and-int/lit8 v6, p6, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v2, v2, 0x180

    :cond_5
    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    move-object/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v2, v8

    :goto_5
    and-int/lit16 v8, v5, 0xc00

    move-object/from16 v9, p3

    if-nez v8, :cond_9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_6

    :cond_8
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    :cond_9
    and-int/lit16 v8, v2, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v8, v10, :cond_a

    move v8, v12

    goto :goto_7

    :cond_a
    move v8, v11

    :goto_7
    and-int/lit8 v10, v2, 0x1

    invoke-interface {v13, v8, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v3, :cond_b

    move v7, v12

    goto :goto_8

    :cond_b
    move v7, v4

    :goto_8
    if-eqz v6, :cond_d

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_c

    new-instance v3, Lkr2;

    invoke-direct {v3, v12}, Lkr2;-><init>(I)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lll3;

    move-object v8, v3

    goto :goto_9

    :cond_d
    move-object/from16 v8, p2

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, -0x1

    const-string v4, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_f

    new-instance v0, Lkk5;

    invoke-direct {v0, v11}, Lkk5;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v0, Lll3;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_10

    new-instance v4, Llk5;

    invoke-direct {v4, v11}, Llk5;-><init>(I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    move-object v12, v4

    check-cast v12, Lll3;

    and-int/lit8 v3, v2, 0xe

    const v4, 0x1b6000

    or-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x380

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x1c00

    or-int v14, v3, v2

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object v11, v0

    move-object v6, v1

    invoke-static/range {v6 .. v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    move v2, v7

    move-object v3, v8

    goto :goto_a

    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v2, v4

    :goto_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v0, Lmk5;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lmk5;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_13
    return-void
.end method

.method private static final NavigationForwardHandler$lambda$27$lambda$26()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationForwardHandler$lambda$29$lambda$28()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationForwardHandler$lambda$31$lambda$30()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final NavigationForwardHandler$lambda$32(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 7

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v4, p6

    invoke-static/range {v0 .. v6}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$5$lambda$4()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$11$lambda$10(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler$lambda$32(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler$lambda$22$lambda$21()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$17$lambda$16(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$1$lambda$0()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler$lambda$24$lambda$23()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$3$lambda$2()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler$lambda$31$lambda$30()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler$lambda$25(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$13$lambda$12(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLll3;Lll3;ZLll3;Lll3;Landroidx/navigationevent/compose/NavigationEventState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler$lambda$29$lambda$28()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$8(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$18(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$7$lambda$6()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler$lambda$20$lambda$19()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler$lambda$27$lambda$26()Lj59;

    move-result-object v0

    return-object v0
.end method
