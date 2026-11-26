.class public final Landroidx/compose/animation/SkipToLookaheadSizeNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final isEnabled$delegate:Landroidx/compose/runtime/MutableState;

.field private lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

.field private lookaheadSize:J

.field private final scaleToBounds$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/ScaleToBoundsImpl;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/ScaleToBoundsImpl;",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->scaleToBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->isEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/animation/AnimationModifierKt;->getInvalidSize()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    return-void
.end method

.method public static final synthetic access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    return-wide v0
.end method


# virtual methods
.method public final getScaleToBounds()Landroidx/compose/animation/ScaleToBoundsImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->scaleToBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/ScaleToBoundsImpl;

    return-object p0
.end method

.method public final isEnabled()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->isEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lll3;

    return-object p0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    invoke-static {v0, v1}, Landroidx/compose/animation/AnimationModifierKt;->isValid-ozmzZPI(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    long-to-int p0, p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    invoke-static {v0, v1}, Landroidx/compose/animation/AnimationModifierKt;->isValid-ozmzZPI(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    const/16 p2, 0x20

    shr-long/2addr p0, p2

    long-to-int p0, p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->isEnabled()Lll3;

    move-result-object v0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$1$1;

    invoke-direct {v4, p0}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v0, p1

    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz p1, :cond_2

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    int-to-long v5, p2

    shl-long/2addr v5, v3

    int-to-long v7, v4

    and-long/2addr v7, v1

    or-long v4, v5, v7

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    :goto_0
    iget-wide v4, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    invoke-static {p3, p4, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide p2

    shr-long v3, p2, v3

    long-to-int p4, v3

    and-long/2addr v1, p2

    long-to-int v6, v1

    new-instance v4, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    move-object v0, v4

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;-><init>(Landroidx/compose/animation/SkipToLookaheadSizeNode;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;)V

    move-object v4, v0

    move-object v0, v5

    const/4 v5, 0x4

    move v2, v6

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v1, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    invoke-static {v0, v1}, Landroidx/compose/animation/AnimationModifierKt;->isValid-ozmzZPI(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    long-to-int p0, p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    invoke-static {v0, v1}, Landroidx/compose/animation/AnimationModifierKt;->isValid-ozmzZPI(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->lookaheadSize:J

    const/16 p2, 0x20

    shr-long/2addr p0, p2

    long-to-int p0, p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public final setEnabled(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->isEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setScaleToBounds(Landroidx/compose/animation/ScaleToBoundsImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode;->scaleToBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
