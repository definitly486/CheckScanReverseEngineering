.class public final Landroidx/compose/foundation/text/input/internal/IntIntervalTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/IntIntervalTree$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final COLOR_PARENT:I = 0x0

.field public static final Companion:Landroidx/compose/foundation/text/input/internal/IntIntervalTree$Companion;

.field private static final LEFT_RIGHT:I = 0x1

.field private static final MIN_MAX:I = 0x3

.field private static final NODE_CLEANUP_SIZE_THRESHOLD:I = 0x40

.field private static final START_END:I = 0x2

.field private static final STRIDE:I = 0x4


# instance fields
.field private _tempArray:Landroidx/collection/MutableIntList;

.field private deletedNodeCount:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nodeInfo:Landroidx/collection/MutableLongList;

.field private root:I

.field private final terminator:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->Companion:Landroidx/compose/foundation/text/input/internal/IntIntervalTree$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;-><init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/internal/IntIntervalTree<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    new-instance v0, Landroidx/collection/MutableLongList;

    iget-object v1, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v1, v1, Landroidx/collection/LongList;->_size:I

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    iget-object v1, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v2, v0, Landroidx/collection/LongList;->_size:I

    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableLongList;->addAll(ILandroidx/collection/LongList;)Z

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v0, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    iget v0, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget p1, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    new-instance p1, Landroidx/collection/MutableLongList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableLongList;-><init>(IILjh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    const p1, 0x7fffffff

    const/high16 v3, -0x80000000

    invoke-direct {p0, p1, v3, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->Node-l-p996k(IILjava/lang/Object;I)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;-><init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    return-void
.end method

.method private final Node-l-p996k(IILjava/lang/Object;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;I)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v1, v0, Landroidx/collection/LongList;->_size:I

    int-to-long v2, p4

    const/16 p4, 0x20

    shl-long/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Landroidx/collection/MutableLongList;->add(J)Z

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/collection/MutableLongList;->add(J)Z

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    int-to-long v2, p1

    shl-long/2addr v2, p4

    int-to-long p1, p2

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableLongList;->add(J)Z

    iget-object p4, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {p4, p1, p2}, Landroidx/collection/MutableLongList;->add(J)Z

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static synthetic Node-l-p996k$default(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IILjava/lang/Object;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->Node-l-p996k(IILjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodesIfNeeded()V

    return-void
.end method

.method public static final synthetic access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTempArray()Landroidx/collection/MutableIntList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->removeNode-9hnwElY(IZ)V

    return-void
.end method

.method private final cleanDeletedNodes()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTempArray()Landroidx/collection/MutableIntList;

    move-result-object v1

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x4

    const/16 v8, 0x20

    if-ge v4, v2, :cond_2

    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    mul-int/lit8 v10, v4, 0x4

    invoke-virtual {v9, v10}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v9

    shr-long v8, v9, v8

    long-to-int v8, v8

    if-ne v8, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    sub-int v6, v4, v5

    mul-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroidx/collection/MutableIntList;->add(I)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v2, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v2

    iput v2, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    move v2, v7

    :goto_1
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v5, v4, Landroidx/collection/LongList;->_size:I

    if-ge v7, v5, :cond_5

    invoke-virtual {v4, v7}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    shr-long/2addr v4, v8

    long-to-int v4, v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    const-wide v9, 0xffffffffL

    if-eq v2, v7, :cond_4

    invoke-virtual {v4, v7}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    shr-long v11, v4, v8

    long-to-int v11, v11

    and-long/2addr v4, v9

    long-to-int v4, v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v4

    int-to-long v11, v11

    shl-long/2addr v11, v8

    int-to-long v13, v4

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    invoke-virtual {v5, v2, v11, v12}, Landroidx/collection/MutableLongList;->set(IJ)J

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v4, v5}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    shr-long v11, v4, v8

    long-to-int v11, v11

    and-long/2addr v4, v9

    long-to-int v4, v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v12, v2, 0x1

    invoke-static {v1, v11}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v11

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v4

    int-to-long v13, v11

    shl-long/2addr v13, v8

    move v11, v8

    move-wide v15, v9

    int-to-long v8, v4

    and-long/2addr v8, v15

    or-long/2addr v8, v13

    invoke-virtual {v5, v12, v8, v9}, Landroidx/collection/MutableLongList;->set(IJ)J

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v8, v7, 0x2

    invoke-virtual {v4, v8}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Landroidx/collection/MutableLongList;->set(IJ)J

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v5, v2, 0x3

    add-int/lit8 v8, v7, 0x3

    invoke-virtual {v4, v8}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Landroidx/collection/MutableLongList;->set(IJ)J

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    div-int/lit8 v5, v2, 0x4

    div-int/lit8 v8, v7, 0x4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v10, v7

    goto :goto_2

    :cond_4
    move v11, v8

    move-wide v15, v9

    invoke-virtual {v4, v7}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    shr-long v8, v4, v11

    long-to-int v8, v8

    and-long/2addr v4, v15

    long-to-int v4, v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v4

    int-to-long v8, v8

    shl-long/2addr v8, v11

    int-to-long v12, v4

    and-long/2addr v12, v15

    or-long/2addr v8, v12

    invoke-virtual {v5, v2, v8, v9}, Landroidx/collection/MutableLongList;->set(IJ)J

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v4, v5}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    shr-long v8, v4, v11

    long-to-int v8, v8

    and-long/2addr v4, v15

    long-to-int v4, v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v1, v8}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v8

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I

    move-result v4

    int-to-long v12, v8

    shl-long/2addr v12, v11

    move v10, v7

    int-to-long v6, v4

    and-long/2addr v6, v15

    or-long/2addr v6, v12

    invoke-virtual {v5, v9, v6, v7}, Landroidx/collection/MutableLongList;->set(IJ)J

    :goto_2
    add-int/lit8 v7, v10, 0x4

    add-int/lit8 v2, v2, 0x4

    move v8, v11

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4, v2, v5}, Landroidx/collection/MutableLongList;->removeRange(II)V

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput v3, v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    invoke-virtual {v1}, Landroidx/collection/MutableIntList;->clear()V

    return-void
.end method

.method private static final cleanDeletedNodes$map(Landroidx/collection/MutableIntList;I)I
    .locals 0

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result p0

    return p0
.end method

.method private final cleanDeletedNodesIfNeeded()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes()V

    :cond_0
    return-void
.end method

.method private final deleteNode-9hnwElY(IZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    iget p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodesIfNeeded()V

    :cond_0
    return-void
.end method

.method private final findNode-cKdZwxc(Ljava/lang/Object;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v0

    if-lt v0, p3, :cond_5

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTempArray()Landroidx/collection/MutableIntList;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_1
    :goto_0
    iget v1, v0, Landroidx/collection/IntList;->_size:I

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->pop-2SV_EgM(Landroidx/collection/MutableIntList;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v2

    if-ne v2, p3, :cond_2

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getItem-330cO7A(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->clear()V

    return v1

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v2

    if-lt v2, p2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v2, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, p3, :cond_3

    invoke-virtual {p0, v0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v2

    if-gt v2, p2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v2

    if-gt v2, p2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    if-lt v2, p3, :cond_1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    goto :goto_0

    :cond_4
    iget p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    return p0

    :cond_5
    :goto_1
    iget p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    return p0
.end method

.method private final forEachNodeInRange(IILnl3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v0

    if-lt v0, p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v0

    if-le v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->overlaps-XzpGiIY(III)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    if-lt v2, p1, :cond_6

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v2

    if-gt v2, p2, :cond_6

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v0

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    if-lt v2, p1, :cond_8

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_1

    :cond_9
    :goto_3
    return-void
.end method

.method public static synthetic forEachNodeInRange$default(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IILnl3;ILjava/lang/Object;)V
    .locals 5

    const/4 p5, 0x2

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p2, p1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result p4

    if-lt p4, p1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result p4

    if-le p4, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {p4, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_5

    if-eq v1, p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-static {p4, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, p5

    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p4

    goto :goto_1

    :cond_5
    invoke-static {p4}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->overlaps-XzpGiIY(III)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_7

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v1

    if-gt v1, p2, :cond_7

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p4

    goto :goto_0

    :cond_7
    move v1, p5

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_9

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p4

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_1

    :cond_a
    :goto_3
    return-void
.end method

.method private final forEachNodeMinMaxInRange(IILnl3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v0

    if-lt v0, p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v0

    if-le v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    if-lt v2, p1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v2

    if-gt v2, p2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    if-lt v2, p1, :cond_7

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_1

    :cond_8
    :goto_3
    return-void
.end method

.method public static synthetic forEachNodeMinMaxInRange$default(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IILnl3;ILjava/lang/Object;)V
    .locals 5

    const/4 p5, 0x2

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p2, p1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result p4

    if-lt p4, p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result p4

    if-le p4, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {p4, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_5

    if-eq v1, p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-static {p4, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, p5

    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p4

    goto :goto_1

    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_6

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v1

    if-gt v1, p2, :cond_6

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p4

    goto :goto_0

    :cond_6
    move v1, p5

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_8

    invoke-virtual {p0, p4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p4

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto/16 :goto_1

    :cond_9
    :goto_3
    return-void
.end method

.method private final getItem-330cO7A(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    div-int/lit8 p1, p1, 0x4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getTempArray()Landroidx/collection/MutableIntList;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->_tempArray:Landroidx/collection/MutableIntList;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->_tempArray:Landroidx/collection/MutableIntList;

    :cond_0
    return-object v0
.end method

.method private final getTotalNodeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget p0, p0, Landroidx/collection/LongList;->_size:I

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private final rebalanceAfterDeletion-cfX_BQo(II)V
    .locals 4

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-static {p1, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateLeft-330cO7A(I)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    :goto_1
    move v3, p2

    move p2, p1

    move p1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateRight-330cO7A(I)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p1

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateLeft-330cO7A(I)V

    iget p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateRight-330cO7A(I)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p1

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    if-ne v2, v1, :cond_6

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateLeft-330cO7A(I)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p1

    :cond_6
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateRight-330cO7A(I)V

    iget p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    return-void
.end method

.method private final rebalanceAfterInsertion-330cO7A(I)V
    .locals 5

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-static {p1, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateLeft-330cO7A(I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateRight-330cO7A(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateRight-330cO7A(I)V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rotateLeft-330cO7A(I)V

    goto/16 :goto_0

    :cond_5
    iget p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    return-void
.end method

.method private final removeNode-9hnwElY(IZ)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->transplant-cfX_BQo(II)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->transplant-cfX_BQo(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->lowestNode-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-static {v3, p1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->transplant-cfX_BQo(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->transplant-cfX_BQo(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setColor-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->updateNodeMinMax-330cO7A(I)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-direct {p0, v1, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rebalanceAfterDeletion-cfX_BQo(II)V

    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deleteNode-9hnwElY(IZ)V

    return-void
.end method

.method public static synthetic removeNode-9hnwElY$default(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->removeNode-9hnwElY(IZ)V

    return-void
.end method

.method private final rotateLeft-330cO7A(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-static {v1, p1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->updateNodeMinMax-330cO7A(I)V

    return-void
.end method

.method private final rotateRight-330cO7A(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-static {v1, p1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->updateNodeMinMax-330cO7A(I)V

    return-void
.end method

.method private final transplant-cfX_BQo(II)V
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p2, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final updateNodeMinMax-330cO7A(I)V
    .locals 3

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p1, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add-ZlWbn38(Landroidx/collection/MutableIntList;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/collection/MutableIntList;->add(I)Z

    return-void
.end method

.method public final addInterval(Ljava/lang/Object;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lt p2, p3, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->findNode-cKdZwxc(Ljava/lang/Object;II)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p2, p3, p1, v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->Node-l-p996k(IILjava/lang/Object;I)I

    move-result p1

    iget p2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget p3, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p2, v0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result p3

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v0

    if-gt p3, v0, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p3

    :goto_1
    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setParent-cfX_BQo(II)V

    iget p2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p3, p2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_4

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result p2

    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v0

    if-gt p2, v0, :cond_5

    invoke-virtual {p0, p3, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setLeft-cfX_BQo(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p3, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setRight-cfX_BQo(II)V

    :goto_2
    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->updateNodeMinMax-330cO7A(I)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->rebalanceAfterInsertion-330cO7A(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    const/4 v1, 0x4

    iget v2, v0, Landroidx/collection/LongList;->_size:I

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableLongList;->removeRange(II)V

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    return-void
.end method

.method public final copy()Landroidx/compose/foundation/text/input/internal/IntIntervalTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/text/input/internal/IntIntervalTree<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->cleanDeletedNodes()V

    new-instance v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;-><init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v3, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v3

    check-cast p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    iget-object v1, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v5, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, v5}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v1

    iget v3, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    sub-int/2addr v1, v3

    invoke-direct {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTotalNodeCount()I

    move-result v3

    iget v4, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->deletedNodeCount:I

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x4

    move v3, v1

    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v5, v4, Landroidx/collection/LongList;->_size:I

    if-ge v1, v5, :cond_8

    iget-object v5, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v5, v5, Landroidx/collection/LongList;->_size:I

    if-ge v3, v5, :cond_8

    invoke-virtual {v4, v1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_4
    iget-object v4, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {v4, v3}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v7

    shr-long v6, v7, v6

    long-to-int v4, v6

    if-ne v4, v5, :cond_5

    :goto_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    iget-object v6, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    return v2

    :cond_6
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    div-int/lit8 v5, v1, 0x4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->items:Ljava/util/List;

    div-int/lit8 v6, v3, 0x4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_8
    return v0
.end method

.method public final forAllIntervals(Ldm3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v1, v1, Landroidx/collection/LongList;->_size:I

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v3

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getItem-330cO7A(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final forEachIntervalInRange(IILdm3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ldm3<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTempArray()Landroidx/collection/MutableIntList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v1

    if-le v1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/4 v5, 0x2

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v3

    invoke-virtual {p0, v3, p1, p2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->overlaps-XzpGiIY(III)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntList;->add(I)Z

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, p1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v3

    if-gt v3, p2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, p1, :cond_8

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto/16 :goto_1

    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->sort()V

    iget-object p1, v0, Landroidx/collection/IntList;->content:[I

    iget p2, v0, Landroidx/collection/IntList;->_size:I

    :goto_4
    if-ge v2, p2, :cond_b

    aget v1, p1, v2

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getItem-330cO7A(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v3, v4, v1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->clear()V

    return-void
.end method

.method public final getColor-330cO7A(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final getEnd-330cO7A(I)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final getLeft-bLpG9ms(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getMax-330cO7A(I)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final getMin-330cO7A(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final getParent-bLpG9ms(I)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getRight-bLpG9ms(I)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getRoot-27flxzM()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    return p0
.end method

.method public final getStart-330cO7A(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final getTerminator-27flxzM()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    return p0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    iget v3, v3, Landroidx/collection/LongList;->_size:I

    if-ge v1, v3, :cond_2

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getColor-330cO7A(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v4

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x1f

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v2

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    invoke-direct {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getItem-330cO7A(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public final lowestNode-bLpG9ms(I)I
    .locals 2

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final mapIntervals(IILnl3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v1

    if-lt v1, p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v1

    if-le v1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/4 v5, 0x2

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v6

    if-gt v4, v6, :cond_5

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, p1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v3

    if-gt v3, p2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, p1, :cond_8

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto/16 :goto_1

    :cond_9
    :goto_3
    iget-object p1, v0, Landroidx/collection/IntList;->content:[I

    iget p2, v0, Landroidx/collection/IntList;->_size:I

    move p3, v2

    :goto_4
    if-ge p3, p2, :cond_a

    aget v1, p1, p3

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    return-void
.end method

.method public final next-bLpG9ms(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->lowestNode-bLpG9ms(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    :goto_0
    move v2, v0

    move v0, p1

    move p1, v2

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p1, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final overlaps-XzpGiIY(III)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result p0

    invoke-static {p2, p3, v0, p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTreeKt;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method public final pop-2SV_EgM(Landroidx/collection/MutableIntList;)I
    .locals 0

    iget p0, p1, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final removeInterval(Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lt p2, p3, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->findNode-cKdZwxc(Ljava/lang/Object;II)I

    move-result p1

    iget p2, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->terminator:I

    invoke-static {p1, p2}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->removeNode-9hnwElY$default(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setColor-9hnwElY(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, p2

    const/16 p2, 0x20

    shl-long/2addr v4, p2

    int-to-long v0, v0

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setEnd-9hnwElY(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setLeft-cfX_BQo(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, p2

    const/16 p2, 0x20

    shl-long/2addr v4, p2

    int-to-long v0, v0

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setMax-9hnwElY(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setMin-9hnwElY(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, p2

    const/16 p2, 0x20

    shl-long/2addr v4, p2

    int-to-long v0, v0

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setParent-cfX_BQo(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setRight-cfX_BQo(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method

.method public final setRoot-330cO7A(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->root:I

    return-void
.end method

.method public final setStart-9hnwElY(II)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->nodeInfo:Landroidx/collection/MutableLongList;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, p2

    const/16 p2, 0x20

    shl-long/2addr v4, p2

    int-to-long v0, v0

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    invoke-virtual {p0, p1, v0, v1}, Landroidx/collection/MutableLongList;->set(IJ)J

    return-void
.end method
