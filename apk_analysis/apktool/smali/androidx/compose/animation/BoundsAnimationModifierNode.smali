.class public final Landroidx/compose/animation/BoundsAnimationModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/ApproachLayoutModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private animateMotionFrameOfReference:Z

.field private final boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

.field private boundsTransform:Landroidx/compose/animation/BoundsTransform;

.field private currentDensity:Landroidx/compose/ui/unit/Density;

.field private currentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private currentResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private directManipulationParentsDirty:Z

.field private lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

.field private onChooseMeasureConstraints:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation
.end field

.field private textMeasurer:Landroidx/compose/ui/text/TextMeasurer;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/animation/BoundsTransform;Lbm3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/LookaheadScope;",
            "Landroidx/compose/animation/BoundsTransform;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    iput-object p2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->onChooseMeasureConstraints:Lbm3;

    iput-boolean p4, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->animateMotionFrameOfReference:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->directManipulationParentsDirty:Z

    new-instance p1, Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-direct {p1}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    return-void
.end method

.method public static final synthetic access$getBoundsAnimation$p(Landroidx/compose/animation/BoundsAnimationModifierNode;)Landroidx/compose/animation/BoundsTransformDeferredAnimation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    return-object p0
.end method

.method private final updateTextMeasurer(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->textMeasurer:Landroidx/compose/ui/text/TextMeasurer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Landroidx/compose/ui/text/TextMeasurer;

    iget-object v3, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentDensity:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/TextMeasurer;-><init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;IILjh2;)V

    iput-object v1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->textMeasurer:Landroidx/compose/ui/text/TextMeasurer;

    iput-object v2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method


# virtual methods
.method public approachMeasure-3p2s80s(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentSize-NH-jbRc()J

    move-result-wide v0

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/ApproachIntrinsicMeasureScope;->getLookaheadSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentSize-NH-jbRc()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getValue()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v0

    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->roundToIntSize-uvyYCjk(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->onChooseMeasureConstraints:Lbm3;

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p3

    invoke-interface {v2, v3, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide p3

    const/16 v0, 0x20

    shr-long v0, p3, v0

    long-to-int v3, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p3, v0

    long-to-int v4, p3

    new-instance v6, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;

    invoke-direct {v6, p0, p2}, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;-><init>(Landroidx/compose/animation/BoundsAnimationModifierNode;Landroidx/compose/ui/layout/Placeable;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    invoke-static {}, Landroidx/compose/animation/IsLookaheadAnimationVisualDebuggingEnabledKt;->isLookaheadAnimationVisualDebuggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->onChooseMeasureConstraints:Lbm3;

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v3

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/animation/CompositionLocalsKt;->getLocalLookaheadAnimationVisualDebugConfig()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

    invoke-virtual {v2}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentDensity:Landroidx/compose/ui/unit/Density;

    if-nez v3, :cond_1

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    iput-object v3, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentDensity:Landroidx/compose/ui/unit/Density;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v3, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_1
    iget-object v3, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v3}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getLookaheadAnimationVisualDebugHelper()Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/animation/CompositionLocalsKt;->getLocalLookaheadAnimationVisualDebugColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-direct {v0, v6}, Landroidx/compose/animation/BoundsAnimationModifierNode;->updateTextMeasurer(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    iget-object v6, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isIdle()Z

    move-result v6

    const/16 v7, 0x3c

    const/high16 v8, 0x40200000    # 2.5f

    if-eqz v6, :cond_2

    move-wide/from16 v16, v4

    move-object v4, v2

    move-object v5, v3

    move-wide/from16 v2, v16

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v4

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    iget-object v8, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    move v5, v6

    move-object v6, v7

    iget-object v7, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->textMeasurer:Landroidx/compose/ui/text/TextMeasurer;

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawInactiveVisualizations-3IgeMak$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JZFLjava/lang/Object;Landroidx/compose/ui/text/TextMeasurer;)V

    return-void

    :cond_2
    move-wide/from16 v16, v4

    move-object v4, v2

    move-object v5, v3

    move-wide/from16 v2, v16

    iget-object v6, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getTargetOffset-F1C5BW0()J

    move-result-wide v9

    iget-object v6, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getTargetSize-NH-jbRc()J

    move-result-wide v11

    iget-object v6, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getValue()Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v4

    move-object v14, v5

    move-wide v4, v9

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v9

    invoke-virtual {v13}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v13

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    iget-object v15, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Landroidx/compose/animation/BoundsAnimationModifierNode;->textMeasurer:Landroidx/compose/ui/text/TextMeasurer;

    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v0, v16

    move/from16 v16, v8

    move-object v8, v6

    move/from16 v17, v13

    move-object v13, v7

    move-wide v6, v11

    move/from16 v11, v17

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawLocalVisualizations-0XenJco$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JJJLandroidx/compose/ui/geometry/Rect;JZFLjava/lang/Object;Landroidx/compose/ui/text/TextMeasurer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getAnimateMotionFrameOfReference()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->animateMotionFrameOfReference:Z

    return p0
.end method

.method public final getBoundsTransform()Landroidx/compose/animation/BoundsTransform;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    return-object p0
.end method

.method public final getCurrentDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentDensity:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getCurrentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getCurrentResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object p0
.end method

.method public final getLookaheadScope()Landroidx/compose/ui/layout/LookaheadScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    return-object p0
.end method

.method public final getOnChooseMeasureConstraints()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->onChooseMeasureConstraints:Lbm3;

    return-object p0
.end method

.method public isMeasurementApproachInProgress-ozmzZPI(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->updateTargetSize-uvyYCjk(J)V

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isIdle()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPlacementApproachInProgress(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/LayoutCoordinates;)Z
    .locals 8

    invoke-static {}, Landroidx/compose/animation/IsLookaheadAnimationVisualDebuggingEnabledKt;->isLookaheadAnimationVisualDebuggingEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {p2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getLookaheadAnimationVisualDebugHelper()Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    new-instance v0, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    invoke-direct {v0}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->setLookaheadAnimationVisualDebugHelper(Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;)V

    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->directManipulationParentsDirty:Z

    iget-boolean v6, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->animateMotionFrameOfReference:Z

    iget-object v7, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->updateTargetOffsetAndAnimate(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;Ly22;ZZLandroidx/compose/animation/BoundsTransform;)V

    iget-boolean p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->animateMotionFrameOfReference:Z

    iput-boolean p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->directManipulationParentsDirty:Z

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsAnimation:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isIdle()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAttach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->directManipulationParentsDirty:Z

    return-void
.end method

.method public final setAnimateMotionFrameOfReference(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->animateMotionFrameOfReference:Z

    return-void
.end method

.method public final setBoundsTransform(Landroidx/compose/animation/BoundsTransform;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    return-void
.end method

.method public final setCurrentDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentDensity:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setCurrentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setCurrentResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->currentResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method

.method public final setLookaheadScope(Landroidx/compose/ui/layout/LookaheadScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    return-void
.end method

.method public final setOnChooseMeasureConstraints(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode;->onChooseMeasureConstraints:Lbm3;

    return-void
.end method
