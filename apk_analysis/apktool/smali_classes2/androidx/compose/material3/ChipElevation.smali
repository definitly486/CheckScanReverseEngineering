.class public final Landroidx/compose/material3/ChipElevation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final disabledElevation:F

.field private final draggedElevation:F

.field private final elevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/ChipElevation;->elevation:F

    iput p2, p0, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    iput p3, p0, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    iput p4, p0, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    iput p5, p0, Landroidx/compose/material3/ChipElevation;->draggedElevation:F

    iput p6, p0, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFLjh2;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/ChipElevation;-><init>(FFFFFF)V

    return-void
.end method

.method public static final synthetic access$animateElevation$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/Interaction;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ChipElevation;->animateElevation$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/Interaction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateElevation$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ChipElevation;->animateElevation$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/Interaction;)V

    return-void
.end method

.method private final animateElevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move/from16 v2, p4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.ChipElevation.animateElevation (Chip.kt:2361)"

    const v6, -0x7b789332

    invoke-static {v6, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v4

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v6, v8, :cond_2

    const/4 v6, 0x2

    invoke-static {v9, v9, v6, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v6, Landroidx/compose/runtime/MutableState;

    and-int/lit8 v8, v2, 0x70

    xor-int/lit8 v8, v8, 0x30

    const/4 v10, 0x1

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-le v8, v11, :cond_3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    and-int/lit8 v8, v2, 0x30

    if-ne v8, v11, :cond_5

    :cond_4
    move v8, v10

    goto :goto_0

    :cond_5
    move v8, v12

    :goto_0
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_6

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v11, v8, :cond_7

    :cond_6
    new-instance v11, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;

    invoke-direct {v11, v1, v4, v9}, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Le02;)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Lbm3;

    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0xe

    invoke-static {v1, v11, v7, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v4}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    if-nez v3, :cond_8

    iget v0, v0, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    goto :goto_1

    :cond_8
    instance-of v1, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v1, :cond_9

    iget v0, v0, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    goto :goto_1

    :cond_9
    instance-of v1, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v1, :cond_a

    iget v0, v0, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    goto :goto_1

    :cond_a
    instance-of v1, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v1, :cond_b

    iget v0, v0, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    goto :goto_1

    :cond_b
    instance-of v1, v4, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v1, :cond_c

    iget v0, v0, Landroidx/compose/material3/ChipElevation;->draggedElevation:F

    goto :goto_1

    :cond_c
    iget v0, v0, Landroidx/compose/material3/ChipElevation;->elevation:F

    :goto_1
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v1, v8, :cond_d

    new-instance v13, Landroidx/compose/animation/core/Animatable;

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v14

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v15

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v13

    :cond_d
    check-cast v1, Landroidx/compose/animation/core/Animatable;

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v8

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    or-int/2addr v9, v11

    and-int/lit8 v11, v2, 0xe

    xor-int/lit8 v11, v11, 0x6

    const/4 v13, 0x4

    if-le v11, v13, :cond_e

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-nez v11, :cond_10

    :cond_e
    and-int/lit8 v2, v2, 0x6

    if-ne v2, v13, :cond_f

    goto :goto_2

    :cond_f
    move v10, v12

    :cond_10
    :goto_2
    or-int v2, v9, v10

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_11

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v9, v2, :cond_12

    :cond_11
    move v2, v0

    new-instance v0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    move-object v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Le02;)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v9, v0

    :cond_12
    check-cast v9, Lbm3;

    invoke-static {v8, v9, v7, v12}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_13
    return-object v0
.end method

.method private static final animateElevation$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/Interaction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ">;)",
            "Landroidx/compose/foundation/interaction/Interaction;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/interaction/Interaction;

    return-object p0
.end method

.method private static final animateElevation$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ">;",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Landroidx/compose/material3/ChipElevation;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/compose/material3/ChipElevation;->elevation:F

    check-cast p1, Landroidx/compose/material3/ChipElevation;

    iget v3, p1, Landroidx/compose/material3/ChipElevation;->elevation:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    iget v3, p1, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    iget v3, p1, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    iget v3, p1, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget p0, p0, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    iget p1, p1, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final getDisabledElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    return p0
.end method

.method public final getDraggedElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->draggedElevation:F

    return p0
.end method

.method public final getElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->elevation:F

    return p0
.end method

.method public final getFocusedElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    return p0
.end method

.method public final getHoveredElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    return p0
.end method

.method public final getPressedElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/material3/ChipElevation;->elevation:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/material3/ChipElevation;->pressedElevation:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/ChipElevation;->focusedElevation:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/ChipElevation;->hoveredElevation:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget p0, p0, Landroidx/compose/material3/ChipElevation;->disabledElevation:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final shadowElevation$material3(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ChipElevation.shadowElevation (Chip.kt:2353)"

    const v2, 0x702b2a93

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit16 p4, p4, 0x3fe

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ChipElevation;->animateElevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
