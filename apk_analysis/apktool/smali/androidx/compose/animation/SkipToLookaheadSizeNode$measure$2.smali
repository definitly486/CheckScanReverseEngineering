.class final Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SkipToLookaheadSizeNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $constrainedSize:J

.field final synthetic $p:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SkipToLookaheadSizeNode;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    iput-object p2, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    iput-object p5, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-virtual {v1}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->getScaleToBounds()Landroidx/compose/animation/ScaleToBoundsImpl;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/animation/ScaleToBoundsImpl;->getContentScale()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v3}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    const-wide v6, 0xffffffffL

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v3}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v3}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    iget-wide v8, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v8

    invoke-interface {v2, v3, v4, v8, v9}, Landroidx/compose/ui/layout/ContentScale;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    shl-long v2, v3, v5

    and-long/2addr v8, v6

    or-long/2addr v2, v8

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide v2

    :goto_1
    invoke-virtual {v1}, Landroidx/compose/animation/ScaleToBoundsImpl;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v8

    iget-object v1, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v1}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v9

    shr-long/2addr v9, v5

    long-to-int v1, v9

    int-to-float v1, v1

    shr-long v9, v2, v5

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Lw65;->b(F)I

    move-result v1

    iget-object v4, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v4}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v9

    and-long/2addr v9, v6

    long-to-int v4, v9

    int-to-float v4, v4

    and-long v9, v2, v6

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    mul-float/2addr v9, v4

    invoke-static {v9}, Lw65;->b(F)I

    move-result v4

    int-to-long v9, v1

    shl-long/2addr v9, v5

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v9

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    iget-object v1, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-interface/range {v8 .. v13}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    iget-object v10, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    new-instance v14, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;

    invoke-direct {v14, v2, v3}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;-><init>(J)V

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLnl3;ILjava/lang/Object;)V

    return-void
.end method
