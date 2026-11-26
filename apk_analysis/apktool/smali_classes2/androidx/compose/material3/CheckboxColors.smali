.class public final Landroidx/compose/material3/CheckboxColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/CheckboxColors$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final checkedBorderColor:J

.field private final checkedBoxColor:J

.field private final checkedCheckmarkColor:J

.field private final disabledBorderColor:J

.field private final disabledCheckedBoxColor:J

.field private final disabledIndeterminateBorderColor:J

.field private final disabledIndeterminateBoxColor:J

.field private final disabledUncheckedBorderColor:J

.field private final disabledUncheckedBoxColor:J

.field private final uncheckedBorderColor:J

.field private final uncheckedBoxColor:J

.field private final uncheckedCheckmarkColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    iput-wide p3, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    iput-wide p5, p0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    iput-wide p7, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    iput-wide p9, p0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    iput-wide p11, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    iput-wide p13, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    move-wide p1, p15

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    move-wide/from16 p1, p23

    iput-wide p1, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJLjh2;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p24}, Landroidx/compose/material3/CheckboxColors;-><init>(JJJJJJJJJJJJ)V

    return-void
.end method

.method private final colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/AnimationSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.CheckboxColors.colorAnimationSpecForState (Checkbox.kt:684)"

    const v1, -0x401a28f5

    invoke-static {v1, p3, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    const/4 p3, 0x6

    if-ne p1, p0, :cond_1

    const p0, 0x5bbf473f

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {p0, p2, p3}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_1
    const p0, 0x5bc0b3bd

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {p0, p2, p3}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method

.method public static synthetic copy-2qZNXz8$default(Landroidx/compose/material3/CheckboxColors;JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/CheckboxColors;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p25

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p15

    :goto_7
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v2, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p17

    :goto_8
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-wide v2, v0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    goto :goto_9

    :cond_9
    move-wide/from16 v2, p19

    :goto_9
    move-wide/from16 p5, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-wide v2, v0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p21

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    move-wide/from16 p7, v2

    iget-wide v1, v0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    move-wide/from16 p22, p7

    move-wide/from16 p24, v1

    :goto_b
    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    move-wide/from16 p2, v16

    goto :goto_c

    :cond_b
    move-wide/from16 p24, p23

    move-wide/from16 p22, v2

    goto :goto_b

    :goto_c
    invoke-virtual/range {p1 .. p25}, Landroidx/compose/material3/CheckboxColors;->copy-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material3/CheckboxColors;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final borderColor$material3(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.CheckboxColors.borderColor (Checkbox.kt:657)"

    const v4, 0x3c2defc6

    invoke-static {v4, p4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-eqz p1, :cond_3

    sget-object v7, Landroidx/compose/material3/CheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_2

    if-eq v7, v3, :cond_2

    if-ne v7, v6, :cond_1

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    goto :goto_0

    :cond_3
    sget-object v7, Landroidx/compose/material3/CheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_6

    if-eq v7, v3, :cond_5

    if-ne v7, v6, :cond_4

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    goto :goto_0

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    :goto_0
    if-eqz p1, :cond_7

    const v4, 0x25be58c6

    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    shr-int/lit8 v1, p4, 0x3

    and-int/lit8 v1, v1, 0x7e

    invoke-direct {p0, p2, p3, v1}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-wide v9, v2

    move-object v2, v0

    move-wide v0, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_7
    move-wide v0, v2

    const v2, 0x25bfb928

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    return-object v0
.end method

.method public final boxColor$material3(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.CheckboxColors.boxColor (Checkbox.kt:625)"

    const v4, 0x15804d09

    invoke-static {v4, p4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-eqz p1, :cond_3

    sget-object v7, Landroidx/compose/material3/CheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_2

    if-eq v7, v3, :cond_2

    if-ne v7, v6, :cond_1

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    goto :goto_0

    :cond_3
    sget-object v7, Landroidx/compose/material3/CheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_6

    if-eq v7, v3, :cond_5

    if-ne v7, v6, :cond_4

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    goto :goto_0

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    :goto_0
    if-eqz p1, :cond_7

    const v4, 0x1d912603

    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    shr-int/lit8 v1, p4, 0x3

    and-int/lit8 v1, v1, 0x7e

    invoke-direct {p0, p2, p3, v1}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-wide v9, v2

    move-object v2, v0

    move-wide v0, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_7
    move-wide v0, v2

    const v2, 0x1d928665

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    return-object v0
.end method

.method public final checkmarkColor$material3(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.CheckboxColors.checkmarkColor (Checkbox.kt:606)"

    const v2, -0x1e412491

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    goto :goto_0

    :goto_1
    and-int/lit8 p3, p3, 0x7e

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v4

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method

.method public final copy-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material3/CheckboxColors;
    .locals 31

    move-object/from16 v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide/from16 v6, p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    move-wide v6, v3

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    move-wide/from16 v8, p3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    move-wide v8, v3

    :goto_1
    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    move-wide/from16 v10, p5

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    move-wide v10, v3

    :goto_2
    cmp-long v3, p7, v1

    if-eqz v3, :cond_3

    move-wide/from16 v12, p7

    goto :goto_3

    :cond_3
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    move-wide v12, v3

    :goto_3
    cmp-long v3, p9, v1

    if-eqz v3, :cond_4

    move-wide/from16 v14, p9

    goto :goto_4

    :cond_4
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    move-wide v14, v3

    :goto_4
    cmp-long v3, p11, v1

    if-eqz v3, :cond_5

    move-wide/from16 v16, p11

    goto :goto_5

    :cond_5
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    move-wide/from16 v16, v3

    :goto_5
    cmp-long v3, p13, v1

    if-eqz v3, :cond_6

    move-wide/from16 v18, p13

    goto :goto_6

    :cond_6
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    move-wide/from16 v18, v3

    :goto_6
    cmp-long v3, p15, v1

    if-eqz v3, :cond_7

    move-wide/from16 v20, p15

    goto :goto_7

    :cond_7
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    move-wide/from16 v20, v3

    :goto_7
    cmp-long v3, p17, v1

    if-eqz v3, :cond_8

    move-wide/from16 v22, p17

    goto :goto_8

    :cond_8
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    move-wide/from16 v22, v3

    :goto_8
    cmp-long v3, p19, v1

    if-eqz v3, :cond_9

    move-wide/from16 v24, p19

    goto :goto_9

    :cond_9
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    move-wide/from16 v24, v3

    :goto_9
    cmp-long v3, p21, v1

    if-eqz v3, :cond_a

    move-wide/from16 v26, p21

    goto :goto_a

    :cond_a
    iget-wide v3, v0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    move-wide/from16 v26, v3

    :goto_a
    cmp-long v1, p23, v1

    if-eqz v1, :cond_b

    move-wide/from16 v28, p23

    goto :goto_b

    :cond_b
    iget-wide v0, v0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    move-wide/from16 v28, v0

    :goto_b
    new-instance v5, Landroidx/compose/material3/CheckboxColors;

    const/16 v30, 0x0

    invoke-direct/range {v5 .. v30}, Landroidx/compose/material3/CheckboxColors;-><init>(JJJJJJJJJJJJLjh2;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    instance-of v2, p1, Landroidx/compose/material3/CheckboxColors;

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    check-cast p1, Landroidx/compose/material3/CheckboxColors;

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    iget-wide p0, p1, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_0
    return v1
.end method

.method public final getCheckedBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    return-wide v0
.end method

.method public final getCheckedBoxColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    return-wide v0
.end method

.method public final getCheckedCheckmarkColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    return-wide v0
.end method

.method public final getDisabledBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    return-wide v0
.end method

.method public final getDisabledCheckedBoxColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    return-wide v0
.end method

.method public final getDisabledIndeterminateBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    return-wide v0
.end method

.method public final getDisabledIndeterminateBoxColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    return-wide v0
.end method

.method public final getDisabledUncheckedBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    return-wide v0
.end method

.method public final getDisabledUncheckedBoxColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    return-wide v0
.end method

.method public final getUncheckedBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    return-wide v0
.end method

.method public final getUncheckedBoxColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    return-wide v0
.end method

.method public final getUncheckedCheckmarkColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
