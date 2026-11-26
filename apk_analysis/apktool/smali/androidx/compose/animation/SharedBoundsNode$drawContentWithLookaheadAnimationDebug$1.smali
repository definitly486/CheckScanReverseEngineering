.class final Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedBoundsNode;->drawContentWithLookaheadAnimationDebug(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bounds:Landroidx/compose/ui/geometry/Rect;

.field final synthetic $lookaheadAnimationVisualDebugColor:J

.field final synthetic $strokeWeight:F

.field final synthetic $targetData:Landroidx/compose/animation/TargetData;

.field final synthetic $this_drawContentWithLookaheadAnimationDebug:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

.field final synthetic $visualDebugConfig:Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

.field final synthetic this$0:Landroidx/compose/animation/SharedBoundsNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;FLandroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$this_drawContentWithLookaheadAnimationDebug:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iput-object p2, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    iput-object p3, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$visualDebugConfig:Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

    iput p4, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$strokeWeight:F

    iput-object p5, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$targetData:Landroidx/compose/animation/TargetData;

    iput-object p6, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$bounds:Landroidx/compose/ui/geometry/Rect;

    iput-wide p7, p0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$lookaheadAnimationVisualDebugColor:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$this_drawContentWithLookaheadAnimationDebug:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    iget-object v2, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedBoundsNode;->getSharedElementEntry()Landroidx/compose/animation/SharedElementEntry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-static {v2}, Landroidx/compose/animation/SharedBoundsNode;->access$getLookaheadAnimationVisualDebugHelper$p(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    iget-object v4, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$visualDebugConfig:Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

    iget v5, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$strokeWeight:F

    iget-object v6, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$targetData:Landroidx/compose/animation/TargetData;

    iget-object v8, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$bounds:Landroidx/compose/ui/geometry/Rect;

    iget-wide v9, v0, Landroidx/compose/animation/SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1;->$lookaheadAnimationVisualDebugColor:J

    invoke-static {v3}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getBoundsTransformIsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x2

    if-le v0, v7, :cond_1

    move-object v0, v2

    move-object v7, v3

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->getMultipleMatchesColor-0d7_KjU()J

    move-result-wide v2

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v4

    invoke-static {v7}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElement;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7}, Landroidx/compose/animation/SharedBoundsNode;->access$getTextMeasurer$p(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v5, v9

    move/from16 v16, v8

    move v8, v5

    move-object v5, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawMultipleMatchesElement-sW7UJKQ$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JZLjava/lang/Object;ILandroidx/compose/ui/text/TextMeasurer;F)V

    return-void

    :cond_1
    move-object v0, v2

    move-object v7, v3

    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->getTargetBounds(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v2

    invoke-virtual {v6}, Landroidx/compose/animation/TargetData;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v13

    move-wide/from16 v16, v11

    move-object v12, v7

    move-wide/from16 v6, v16

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v11

    invoke-static {v12}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElement;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    move-object/from16 v16, v12

    move v12, v5

    move-wide v4, v2

    move-wide v2, v9

    move-wide v9, v13

    move-object/from16 v13, v16

    invoke-static {v13}, Landroidx/compose/animation/SharedBoundsNode;->access$getTextMeasurer$p(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v14

    move-object v13, v15

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawLocalVisualizations-0XenJco$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JJJLandroidx/compose/ui/geometry/Rect;JZFLjava/lang/Object;Landroidx/compose/ui/text/TextMeasurer;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v0, v2

    move-object v13, v3

    move v12, v5

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->getUnmatchedElementColor-0d7_KjU()J

    move-result-wide v2

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v4

    invoke-static {v13}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElement;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13}, Landroidx/compose/animation/SharedBoundsNode;->access$getTextMeasurer$p(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawUnmatchedElement-3IgeMak$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JZLjava/lang/Object;Landroidx/compose/ui/text/TextMeasurer;F)V

    return-void

    :cond_4
    move-object v0, v2

    move-object v13, v3

    move v12, v5

    move-wide v2, v9

    invoke-virtual {v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled()Z

    move-result v4

    invoke-static {v13}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElement;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13}, Landroidx/compose/animation/SharedBoundsNode;->access$getTextMeasurer$p(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v7

    move v5, v12

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->drawInactiveVisualizations-3IgeMak$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JZFLjava/lang/Object;Landroidx/compose/ui/text/TextMeasurer;)V

    return-void
.end method
