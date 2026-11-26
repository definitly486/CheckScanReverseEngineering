.class public final Landroidx/compose/material3/WideNavigationRail_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ModalWideNavigationRailDialog(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/RailPredictiveBackState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    move/from16 v12, p7

    const v0, 0x782869ab

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_3

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v12, 0x180

    move-object/from16 v7, p2

    if-nez v4, :cond_5

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    :cond_5
    and-int/lit16 v4, v12, 0xc00

    move-object/from16 v8, p3

    if-nez v4, :cond_7

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v3, v4

    :cond_7
    and-int/lit16 v4, v12, 0x6000

    move-object/from16 v9, p4

    if-nez v4, :cond_9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v12

    if-nez v4, :cond_b

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    const v4, 0x12493

    and-int/2addr v4, v3

    const v5, 0x12492

    const/4 v10, 0x0

    if-eq v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    move v4, v10

    :goto_7
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.ModalWideNavigationRailDialog (WideNavigationRail.android.kt:124)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_d
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v13, v10}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v15

    shr-int/lit8 v16, v3, 0xf

    and-int/lit8 v14, v16, 0xe

    invoke-static {v11, v13, v14}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v10, v1, :cond_e

    new-instance v10, Lpt3;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Lpt3;-><init>(I)V

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    const/4 v1, 0x1

    :goto_8
    check-cast v10, Lll3;

    const/16 v1, 0x30

    invoke-static {v6, v10, v13, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result v10

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    or-int v17, v17, v19

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_10

    move-object/from16 v17, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v11, 0x1

    move-object v0, v1

    move/from16 v16, v3

    move-object/from16 v1, p0

    goto :goto_a

    :cond_10
    move-object/from16 v17, v0

    :goto_9
    new-instance v0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move/from16 v16, v3

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;-><init>(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Z)V

    new-instance v3, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$dialog$1$1$1;

    invoke-direct {v3, v14}, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    const v5, -0x183eed48

    invoke-static {v5, v11, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lbm3;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_a
    check-cast v0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_11

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_12

    :cond_11
    new-instance v5, Landroidx/compose/material3/q5;

    invoke-direct {v5, v0}, Landroidx/compose/material3/q5;-><init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v5, Lnl3;

    const/4 v3, 0x0

    invoke-static {v0, v5, v13, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit8 v6, v16, 0xe

    const/4 v7, 0x4

    if-ne v6, v7, :cond_13

    move v6, v11

    goto :goto_b

    :cond_13
    move v6, v3

    :goto_b
    or-int/2addr v5, v6

    and-int/lit8 v6, v16, 0x70

    const/16 v7, 0x20

    if-ne v6, v7, :cond_14

    move v6, v11

    goto :goto_c

    :cond_14
    move v6, v3

    :goto_c
    or-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_15

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_16

    :cond_15
    new-instance v6, Landroidx/compose/material3/r5;

    invoke-direct {v6, v0, v1, v2, v4}, Landroidx/compose/material3/r5;-><init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v6, Lll3;

    invoke-static {v6, v13, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_d

    :cond_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_18
    :goto_d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v0, Lei9;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lei9;-><init>(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_19
    return-void
.end method

.method private static final ModalWideNavigationRailDialog$lambda$0(Landroidx/compose/runtime/State;)Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;>;)",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbm3;

    return-object p0
.end method

.method private static final ModalWideNavigationRailDialog$lambda$10(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 8

    or-int/lit8 p6, p6, 0x1

    invoke-static {p6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRailDialog$lambda$2$lambda$1()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private static final ModalWideNavigationRailDialog$lambda$7$lambda$6(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    new-instance p1, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;)V

    return-object p1
.end method

.method private static final ModalWideNavigationRailDialog$lambda$9$lambda$8(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->updateParameters(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog$lambda$10(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ModalWideNavigationRailDialog$lambda$0(Landroidx/compose/runtime/State;)Lbm3;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog$lambda$0(Landroidx/compose/runtime/State;)Lbm3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog$lambda$7$lambda$6(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog$lambda$2$lambda$1()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static final createDefaultModalWideNavigationRailProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;
    .locals 4

    new-instance v0, Landroidx/compose/material3/ModalWideNavigationRailProperties;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/material3/ModalWideNavigationRailProperties;-><init>(ZILjh2;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog$lambda$9$lambda$8(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
