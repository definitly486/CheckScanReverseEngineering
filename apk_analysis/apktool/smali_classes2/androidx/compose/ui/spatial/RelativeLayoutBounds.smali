.class public final Landroidx/compose/ui/spatial/RelativeLayoutBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final bottomRight:J

.field private final node:Landroidx/compose/ui/node/DelegatableNode;

.field private final screenOffset:J

.field private final topLeft:J

.field private final viewToWindowMatrix:[F

.field private final windowOffset:J

.field private final windowSize:J


# direct methods
.method private constructor <init>(JJJJJ[FLandroidx/compose/ui/node/DelegatableNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    iput-wide p3, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    iput-wide p5, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    iput-wide p7, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    iput-wide p9, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    iput-object p11, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    iput-object p12, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public synthetic constructor <init>(JJJJJ[FLandroidx/compose/ui/node/DelegatableNode;Ljh2;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p12}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;-><init>(JJJJJ[FLandroidx/compose/ui/node/DelegatableNode;)V

    return-void
.end method


# virtual methods
.method public final calculateOcclusions()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/IntRect;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    iget-object v0, v0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v0

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/RectManager;->getRects()Landroidx/compose/ui/spatial/RectList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/ui/spatial/RectList;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    sget-object v0, Lkx2;->b:Lkx2;

    return-object v0

    :cond_0
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v4

    iget-object v5, v2, Landroidx/compose/ui/spatial/RectList;->items:[J

    iget v2, v2, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    aget-wide v6, v5, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v8, v5, v8

    const/4 v10, 0x0

    :goto_0
    array-length v11, v5

    add-int/lit8 v11, v11, -0x2

    if-ge v10, v11, :cond_4

    if-ge v10, v2, :cond_4

    if-ne v10, v3, :cond_1

    add-int/lit8 v10, v10, 0x3

    goto :goto_0

    :cond_1
    aget-wide v11, v5, v10

    add-int/lit8 v13, v10, 0x1

    aget-wide v13, v5, v13

    sub-long v15, v8, v11

    const-wide v17, 0x100000001L

    sub-long v15, v15, v17

    sub-long v19, v13, v6

    sub-long v19, v19, v17

    or-long v15, v15, v19

    const-wide v17, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long v15, v15, v17

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_2

    const/16 v15, 0x20

    move/from16 v16, v2

    move/from16 p0, v3

    shr-long v2, v11, v15

    long-to-int v2, v2

    long-to-int v3, v11

    shr-long v11, v13, v15

    long-to-int v11, v11

    long-to-int v12, v13

    add-int/lit8 v13, v10, 0x2

    aget-wide v13, v5, v13

    long-to-int v13, v13

    const v14, 0x1ffffff

    and-int/2addr v13, v14

    invoke-virtual {v1, v0, v13}, Landroidx/compose/ui/spatial/RectManager;->isTargetDrawnFirst$ui(II)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Landroidx/compose/ui/unit/IntRect;

    invoke-direct {v13, v2, v3, v11, v12}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    invoke-virtual {v4, v13}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 p0, v3

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x3

    move/from16 v3, p0

    move/from16 v2, v16

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const-class v2, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    iget-wide v4, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    iget-wide v4, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    iget-wide v4, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    iget-wide v4, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    iget-wide v4, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    iget-object v3, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    if-nez v2, :cond_8

    if-nez v3, :cond_7

    move v2, v0

    goto :goto_1

    :cond_7
    :goto_0
    move v2, v1

    goto :goto_1

    :cond_8
    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Matrix;->equals-impl0([F[F)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    iget-object p1, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_2
    return v1
.end method

.method public final fractionVisibleIn(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)F
    .locals 7

    iget-wide v0, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    iget-wide v2, p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    const/16 p1, 0x20

    shr-long v4, v0, p1

    long-to-int v4, v4

    long-to-int v0, v0

    shr-long v5, v2, p1

    long-to-int p1, v5

    long-to-int v1, v2

    invoke-virtual {p0, v4, v0, p1, v1}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->fractionVisibleInRect(IIII)F

    move-result p0

    return p0
.end method

.method public final fractionVisibleInRect(IIII)F
    .locals 8

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-wide v3, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    long-to-int v3, v3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-wide v5, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    shr-long/2addr v5, v2

    long-to-int v2, v5

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-wide v6, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    long-to-int p0, v6

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    mul-int/2addr p4, p3

    sub-int/2addr v2, v0

    sub-int/2addr p0, v3

    mul-int/2addr p0, v2

    sub-int/2addr v5, v1

    sub-int/2addr v6, v4

    mul-int/2addr v6, v5

    const/4 p1, 0x0

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final fractionVisibleInWindow()F
    .locals 4

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v2, v0}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->fractionVisibleInRect(IIII)F

    move-result p0

    return p0
.end method

.method public final fractionVisibleInWindowWithInsets-E1MhUcY(JJ)F
    .locals 7

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    iget-wide v3, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    add-int/2addr p1, v3

    const/16 p2, 0x20

    shr-long v5, v0, p2

    long-to-int p2, v5

    add-int/2addr v2, p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    sub-int/2addr v2, p2

    long-to-int p2, v0

    add-int/2addr v3, p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    sub-int/2addr v3, p2

    invoke-virtual {p0, v4, p1, v2, v3}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->fractionVisibleInRect(IIII)F

    move-result p0

    return p0
.end method

.method public final getBoundsInRoot()Landroidx/compose/ui/unit/IntRect;
    .locals 6

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    iget-wide v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    shr-long v1, v4, v2

    long-to-int p0, v1

    long-to-int v1, v4

    new-instance v2, Landroidx/compose/ui/unit/IntRect;

    invoke-direct {v2, v3, v0, p0, v1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v2
.end method

.method public final getBoundsInScreen()Landroidx/compose/ui/unit/IntRect;
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->getBoundsInWindow()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    new-instance p0, Landroidx/compose/ui/unit/IntRect;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v0

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v4, v5, v6, v1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    iget-wide v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    shr-long v1, v4, v2

    long-to-int v1, v1

    long-to-int v2, v4

    iget-wide v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    iget-wide v5, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    new-instance v5, Landroidx/compose/ui/unit/IntRect;

    add-int/2addr v3, v4

    add-int/2addr v0, p0

    add-int/2addr v1, v4

    add-int/2addr v2, p0

    invoke-direct {v5, v3, v0, v1, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v5
.end method

.method public final getBoundsInWindow()Landroidx/compose/ui/unit/IntRect;
    .locals 8

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    iget-wide v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    shr-long v1, v4, v2

    long-to-int v1, v1

    long-to-int v2, v4

    iget-object v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    if-eqz v4, :cond_0

    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-static {v4, p0}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    return-object p0

    :cond_0
    iget-wide v4, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    iget-wide v5, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    sub-int/2addr v4, v5

    iget-wide v5, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    iget-wide v6, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    sub-int/2addr v5, p0

    new-instance p0, Landroidx/compose/ui/unit/IntRect;

    add-int/2addr v3, v4

    add-int/2addr v0, v5

    add-int/2addr v1, v4

    add-int/2addr v2, v5

    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object p0
.end method

.method public final getHeight()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    long-to-int v0, v0

    iget-wide v1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    long-to-int p0, v1

    sub-int/2addr p0, v0

    return p0
.end method

.method public final getPositionInRoot-nOcc-ac()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPositionInScreen-nOcc-ac()J
    .locals 6

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 p0, 0x20

    shr-long v4, v2, p0

    long-to-int v4, v4

    long-to-int v2, v2

    add-int/2addr v4, v0

    add-int/2addr v2, v1

    int-to-long v0, v4

    shl-long/2addr v0, p0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPositionInWindow-nOcc-ac()J
    .locals 6

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    sub-int/2addr v0, v1

    iget-wide v1, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    sub-int/2addr v1, v2

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 p0, 0x20

    shr-long v4, v2, p0

    long-to-int v4, v4

    long-to-int v2, v2

    add-int/2addr v4, v0

    add-int/2addr v2, v1

    int-to-long v0, v4

    shl-long/2addr v0, p0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWidth()I
    .locals 5

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v3, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    shr-long v1, v3, v2

    long-to-int p0, v1

    sub-int/2addr p0, v0

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->topLeft:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->bottomRight:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowSize:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->windowOffset:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->screenOffset:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->hashCode-impl(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->viewToWindowMatrix:[F

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->hashCode-impl([F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->node:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
