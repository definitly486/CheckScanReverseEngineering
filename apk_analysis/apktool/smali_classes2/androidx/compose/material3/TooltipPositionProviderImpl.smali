.class final Landroidx/compose/material3/TooltipPositionProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# instance fields
.field private final tooltipAnchorSpacing:I

.field private final type:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    iput p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    return-void
.end method

.method public synthetic constructor <init>(IILjh2;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/TooltipPositionProviderImpl;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v1

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4, v0}, Lk;->b(IIII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int v1, v0, v3

    shr-long/2addr p4, v2

    long-to-int p4, p4

    if-le v1, p4, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p4

    sub-int v0, p4, v3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p4

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    sub-int/2addr p4, p2

    iget p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    sub-int/2addr p4, p2

    if-gez p4, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int p4, p1, p0

    :cond_2
    int-to-long p0, v0

    shl-long/2addr p0, v2

    int-to-long p2, p4

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final belowPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v1

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4, v0}, Lk;->b(IIII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int v1, v0, v3

    shr-long v4, p4, v2

    long-to-int v4, v4

    if-le v1, v4, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    sub-int/2addr v0, v3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v1

    iget v3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    add-int p3, v1, p2

    and-long/2addr p4, v3

    long-to-int p4, p4

    if-le p3, p4, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    sub-int v1, p1, p0

    :cond_2
    int-to-long p0, v0

    shl-long/2addr p0, v2

    int-to-long p2, v1

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 9

    iget v0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    sget-object v1, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getLeft-lOKsHw4()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p5, p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-oFUgxo0(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getRight-lOKsHw4()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p2

    move-wide v5, p5

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    move-object v4, p1

    move-wide v7, p2

    move-wide v5, p5

    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getAbove-lOKsHw4()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/material3/TooltipPositionProviderImpl;->abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getBelow-lOKsHw4()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/material3/TooltipPositionProviderImpl;->belowPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getStart-lOKsHw4()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, p4

    move-object p2, v4

    move-wide p3, v5

    move-wide p5, v7

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->startPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_4
    move-object p1, p4

    invoke-virtual {v1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getEnd-lOKsHw4()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_5

    move-object p2, v4

    move-wide p3, v5

    move-wide p5, v7

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->endPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_5
    move-object p1, v4

    move-wide p2, v5

    move-wide p4, v7

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final endPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    move-object p1, p2

    move-wide p2, p3

    move-wide p4, p5

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    move-object p1, p2

    move-wide p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-oFUgxo0(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTooltipAnchorSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    return p0
.end method

.method public final getType-lOKsHw4()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    return p0
.end method

.method public final leftPositioning-oFUgxo0(Landroidx/compose/ui/unit/IntRect;J)J
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    iget v3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    add-int/2addr p1, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p0, p2

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    int-to-long p2, v0

    shl-long/2addr p2, v1

    int-to-long p0, p1

    and-long/2addr p0, v2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    iget v1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    add-int v3, v0, v2

    shr-long/2addr p4, v1

    long-to-int p4, p4

    if-le v3, p4, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p4

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v2, p0

    sub-int v0, p4, v2

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    add-int/2addr p1, p0

    const-wide p4, 0xffffffffL

    and-long/2addr p2, p4

    long-to-int p0, p2

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    int-to-long p2, v0

    shl-long/2addr p2, v1

    int-to-long p0, p1

    and-long/2addr p0, p4

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final startPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 6

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-oFUgxo0(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0
.end method
