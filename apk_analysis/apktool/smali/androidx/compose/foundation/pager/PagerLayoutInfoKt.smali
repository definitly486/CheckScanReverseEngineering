.class public final Landroidx/compose/foundation/pager/PagerLayoutInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final calculateContentSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;I)I
    .locals 8

    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeforeContentPadding()I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getAfterContentPadding()I

    move-result v1

    add-int/2addr v1, v0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSize()I

    move-result v0

    int-to-long v2, v0

    int-to-long v4, p1

    mul-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSpacing()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v4, p0

    add-long/2addr v4, v2

    int-to-long p0, v1

    add-long/2addr v4, p0

    const-wide/32 p0, 0x7fffffff

    cmp-long v0, v4, p0

    if-lez v0, :cond_1

    move-wide v4, p0

    :cond_1
    long-to-int p0, v4

    return p0
.end method

.method public static final getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I
    .locals 4

    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_0
    long-to-int p0, v0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    goto :goto_0
.end method
