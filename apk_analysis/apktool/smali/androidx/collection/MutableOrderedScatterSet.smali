.class public final Landroidx/collection/MutableOrderedScatterSet;
.super Landroidx/collection/OrderedScatterSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/OrderedScatterSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(IILjh2;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/OrderedScatterSet;-><init>(Ljh2;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Capacity must be a positive value."

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    return-void
.end method

.method private final findAbsoluteInsertIndex(Ljava/lang/Object;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v4, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    iget v5, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    and-int v6, v4, v5

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v9, v6, 0x3

    and-int/lit8 v10, v6, 0x7

    shl-int/lit8 v10, v10, 0x3

    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v14, v8, v9

    rsub-int/lit8 v8, v10, 0x40

    shl-long v8, v14, v8

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v3

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v3

    xor-long v2, v8, v16

    sub-long v14, v2, v14

    not-long v2, v2

    and-long/2addr v2, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v14

    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v19, v2, v16

    if-eqz v19, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v6, v16

    and-int v16, v16, v5

    iget-object v12, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v12, v12, v16

    invoke-static {v12, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    return v16

    :cond_1
    const-wide/16 v16, 0x1

    sub-long v16, v2, v16

    and-long v2, v2, v16

    goto :goto_2

    :cond_2
    not-long v2, v8

    const/4 v12, 0x6

    shl-long/2addr v2, v12

    and-long/2addr v2, v8

    and-long/2addr v2, v14

    cmp-long v2, v2, v16

    if-eqz v2, :cond_6

    invoke-direct {v0, v4}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    iget v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v3, v1, 0x3

    aget-wide v7, v2, v3

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long v2, v7, v2

    and-long/2addr v2, v5

    const-wide/16 v7, 0xfe

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/collection/MutableOrderedScatterSet;->adjustStorage$collection()V

    invoke-direct {v0, v4}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    iget v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v4, v1, 0x3

    aget-wide v7, v3, v4

    and-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x3

    shr-long v14, v7, v9

    and-long/2addr v14, v5

    const-wide/16 v16, 0x80

    cmp-long v12, v14, v16

    if-nez v12, :cond_5

    move/from16 v19, v13

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    :goto_4
    sub-int v2, v2, v19

    iput v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shl-long/2addr v5, v9

    not-long v5, v5

    and-long/2addr v5, v7

    shl-long v7, v10, v9

    or-long/2addr v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v2, v1, -0x7

    and-int/2addr v2, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x3

    aput-wide v5, v3, v0

    return v1

    :cond_6
    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    and-int/2addr v6, v5

    move/from16 v3, v18

    goto/16 :goto_1
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v2, v3

    rsub-int/lit8 v2, v4, 0x40

    shl-long v2, v7, v2

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    and-int p0, p1, v0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private final fixupNodes([I)V
    .locals 11

    .line 77
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 78
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v1, :cond_2

    .line 79
    aget-wide v4, v0, v2

    const/16 v6, 0x1f

    shr-long v7, v4, v6

    const-wide/32 v9, 0x7fffffff

    and-long/2addr v7, v9

    long-to-int v7, v7

    and-long v8, v4, v9

    long-to-int v8, v8

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    and-long/2addr v4, v9

    if-ne v7, v3, :cond_0

    move v7, v3

    goto :goto_1

    .line 80
    :cond_0
    aget v7, p1, v7

    :goto_1
    int-to-long v9, v7

    or-long/2addr v4, v9

    shl-long/2addr v4, v6

    if-ne v8, v3, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    aget v3, p1, v8

    :goto_2
    int-to-long v6, v3

    or-long v3, v4, v6

    .line 82
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    if-eq v0, v3, :cond_3

    aget v0, p1, v0

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 84
    :cond_3
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-eq v0, v3, :cond_4

    aget p1, p1, v0

    iput p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_4
    return-void
.end method

.method private final fixupNodes([J)V
    .locals 13

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0xffffffffL

    const v5, 0x7fffffff

    if-ge v2, v1, :cond_2

    aget-wide v6, v0, v2

    const/16 v8, 0x1f

    shr-long v9, v6, v8

    const-wide/32 v11, 0x7fffffff

    and-long/2addr v9, v11

    long-to-int v9, v9

    and-long v10, v6, v11

    long-to-int v10, v10

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    and-long/2addr v6, v11

    if-ne v9, v5, :cond_0

    move v9, v5

    goto :goto_1

    :cond_0
    aget-wide v11, p1, v9

    and-long/2addr v11, v3

    long-to-int v9, v11

    :goto_1
    int-to-long v11, v9

    or-long/2addr v6, v11

    shl-long/2addr v6, v8

    if-ne v10, v5, :cond_1

    goto :goto_2

    :cond_1
    aget-wide v8, p1, v10

    and-long/2addr v3, v8

    long-to-int v5, v3

    :goto_2
    int-to-long v3, v5

    or-long/2addr v3, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    if-eq v0, v5, :cond_3

    aget-wide v0, p1, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    :cond_3
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-eq v0, v5, :cond_4

    aget-wide v0, p1, v0

    and-long/2addr v0, v3

    long-to-int p1, v0

    iput p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_4
    return-void
.end method

.method private final initializeGrowth()V
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [J

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    aget-wide v2, v0, v1

    const-wide/16 v4, 0xff

    shl-long/2addr v4, p1

    not-long v6, v4

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    invoke-direct {p0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x7

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeMetadata(I)V

    if-nez p1, :cond_1

    sget-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v1, p1, [Ljava/lang/Object;

    :goto_1
    iput-object v1, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    if-nez p1, :cond_2

    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object p1

    goto :goto_2

    :cond_2
    new-array v1, p1, [J

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v1, v0, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    move-object p1, v1

    :goto_2
    iput-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    return-void
.end method

.method private final moveNodeToHead(I)V
    .locals 10

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    int-to-long v2, v1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide v6, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v2, v6

    aput-wide v2, v0, p1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    aget-wide v6, v0, v1

    const-wide v8, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v6, v8

    int-to-long v8, p1

    and-long v3, v8, v4

    const/16 v5, 0x1f

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    aput-wide v3, v0, v1

    :cond_0
    iput p1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-ne v0, v2, :cond_1

    iput p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_1
    return-void
.end method

.method private final removeNode(I)V
    .locals 12

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    aget-wide v1, v0, p1

    const/16 v3, 0x1f

    shr-long v4, v1, v3

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    and-long/2addr v1, v6

    long-to-int v1, v1

    const v2, 0x7fffffff

    if-eq v4, v2, :cond_0

    aget-wide v8, v0, v4

    const-wide/32 v10, -0x80000000

    and-long/2addr v8, v10

    int-to-long v10, v1

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    aput-wide v8, v0, v4

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    :goto_0
    if-eq v1, v2, :cond_1

    aget-wide v8, v0, v1

    const-wide v10, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v8, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    shl-long v2, v4, v3

    or-long/2addr v2, v8

    aput-wide v2, v0, v1

    goto :goto_1

    :cond_1
    iput v4, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :goto_1
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->head:I

    int-to-long v3, v2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide v7, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v3, v7

    aput-wide v3, p1, v1

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    aget-wide v7, p1, v2

    const-wide v9, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v7, v9

    int-to-long v9, v1

    and-long v4, v9, v5

    const/16 v6, 0x1f

    shl-long/2addr v4, v6

    or-long/2addr v4, v7

    aput-wide v4, p1, v2

    :cond_0
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    iget p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-ne p1, v3, :cond_1

    iput v1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Landroidx/collection/ObjectList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Landroidx/collection/ObjectList;)V

    .line 34
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Landroidx/collection/OrderedScatterSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Landroidx/collection/OrderedScatterSet;)V

    .line 28
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Landroidx/collection/ScatterSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 30
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 31
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 22
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Lzo7;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 24
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Lzo7;)V

    .line 25
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign([Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final adjustStorage$collection()V
    .locals 7

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    int-to-long v1, v1

    const-wide/16 v3, 0x20

    mul-long/2addr v1, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x19

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/MutableOrderedScatterSet;->dropDeletes$collection()V

    return-void

    :cond_0
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->resizeStorage$collection(I)V

    return-void
.end method

.method public final asMutableSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper;

    invoke-direct {v0, p0}, Landroidx/collection/MutableOrderedSetWrapper;-><init>(Landroidx/collection/MutableOrderedScatterSet;)V

    return-object v0
.end method

.method public final clear()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v2, :cond_0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v1, v2, v3}, Laq5;->w([JJ)V

    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v3

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v2

    not-long v8, v6

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    :cond_0
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    invoke-static {v2, v1, v0, v3}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1, v2}, Laq5;->w([JJ)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    invoke-direct {p0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    iget-object v4, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    new-array v5, v2, [J

    const/4 v6, 0x0

    const-wide v7, 0x7fffffff7fffffffL

    invoke-static {v5, v6, v2, v7, v8}, Ljava/util/Arrays;->fill([JIIJ)V

    add-int/lit8 v9, v2, 0x7

    shr-int/lit8 v9, v9, 0x3

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_1

    aget-wide v11, v1, v10

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    not-long v13, v11

    const/4 v15, 0x7

    ushr-long/2addr v11, v15

    add-long/2addr v13, v11

    const-wide v11, -0x101010101010102L

    and-long/2addr v11, v13

    aput-wide v11, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    array-length v9, v1

    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v9, v9, -0x2

    aget-wide v11, v1, v9

    const-wide v13, 0xffffffffffffffL

    and-long/2addr v11, v13

    const-wide/high16 v13, -0x100000000000000L

    or-long/2addr v11, v13

    aput-wide v11, v1, v9

    aget-wide v11, v1, v6

    aput-wide v11, v1, v10

    move v9, v6

    :goto_1
    if-eq v9, v2, :cond_a

    shr-int/lit8 v10, v9, 0x3

    aget-wide v11, v1, v10

    and-int/lit8 v13, v9, 0x7

    shl-int/lit8 v13, v13, 0x3

    shr-long/2addr v11, v13

    const-wide/16 v14, 0xff

    and-long/2addr v11, v14

    const-wide/16 v16, 0x80

    cmp-long v18, v11, v16

    if-nez v18, :cond_2

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v18, 0xfe

    cmp-long v11, v11, v18

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    aget-object v11, v3, v9

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_3

    :cond_4
    move v11, v6

    :goto_3
    const v12, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v11, v12

    shl-int/lit8 v12, v11, 0x10

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v11, 0x7

    move/from16 v18, v6

    invoke-direct {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v6

    and-int/2addr v12, v2

    sub-int v19, v6, v12

    and-int v19, v19, v2

    move-wide/from16 v20, v7

    div-int/lit8 v7, v19, 0x8

    sub-int v8, v9, v12

    and-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x8

    const/16 v12, 0x20

    if-ne v7, v8, :cond_6

    and-int/lit8 v6, v11, 0x7f

    int-to-long v6, v6

    aget-wide v16, v1, v10

    shl-long/2addr v14, v13

    not-long v14, v14

    and-long v14, v16, v14

    shl-long/2addr v6, v13

    or-long/2addr v6, v14

    aput-wide v6, v1, v10

    aget-wide v6, v5, v9

    cmp-long v6, v6, v20

    if-nez v6, :cond_5

    int-to-long v6, v9

    shl-long v10, v6, v12

    or-long/2addr v6, v10

    aput-wide v6, v5, v9

    :cond_5
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-wide v7, v1, v18

    aput-wide v7, v1, v6

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v18

    move-wide/from16 v7, v20

    goto :goto_1

    :cond_6
    shr-int/lit8 v7, v6, 0x3

    aget-wide v22, v1, v7

    and-int/lit8 v8, v6, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v24, v22, v8

    and-long v24, v24, v14

    cmp-long v19, v24, v16

    move/from16 v24, v12

    const-wide v25, -0x100000000L

    const-wide v27, 0xffffffffL

    if-nez v19, :cond_8

    and-int/lit8 v11, v11, 0x7f

    move-wide/from16 v29, v14

    int-to-long v14, v11

    move/from16 v19, v13

    shl-long v12, v29, v8

    not-long v11, v12

    and-long v11, v22, v11

    shl-long v13, v14, v8

    or-long/2addr v11, v13

    aput-wide v11, v1, v7

    aget-wide v7, v1, v10

    shl-long v11, v29, v19

    not-long v11, v11

    and-long/2addr v7, v11

    shl-long v11, v16, v19

    or-long/2addr v7, v11

    aput-wide v7, v1, v10

    aget-object v7, v3, v9

    aput-object v7, v3, v6

    const/4 v7, 0x0

    aput-object v7, v3, v9

    aget-wide v7, v4, v9

    aput-wide v7, v4, v6

    const-wide v7, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v7, v4, v9

    aget-wide v7, v5, v9

    shr-long v7, v7, v24

    and-long v7, v7, v27

    long-to-int v7, v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_7

    aget-wide v10, v5, v7

    and-long v10, v10, v25

    int-to-long v12, v6

    or-long/2addr v10, v12

    aput-wide v10, v5, v7

    aget-wide v7, v5, v9

    and-long v7, v7, v27

    or-long v7, v7, v25

    aput-wide v7, v5, v9

    goto :goto_5

    :cond_7
    const-wide v7, 0x7fffffff00000000L

    int-to-long v10, v6

    or-long/2addr v7, v10

    aput-wide v7, v5, v9

    :goto_5
    int-to-long v7, v9

    shl-long v7, v7, v24

    const-wide/32 v10, 0x7fffffff

    or-long/2addr v7, v10

    aput-wide v7, v5, v6

    goto :goto_7

    :cond_8
    move-wide/from16 v29, v14

    and-int/lit8 v10, v11, 0x7f

    int-to-long v10, v10

    shl-long v12, v29, v8

    not-long v12, v12

    and-long v12, v22, v12

    shl-long/2addr v10, v8

    or-long/2addr v10, v12

    aput-wide v10, v1, v7

    aget-object v7, v3, v6

    aget-object v8, v3, v9

    aput-object v8, v3, v6

    aput-object v7, v3, v9

    aget-wide v7, v4, v6

    aget-wide v10, v4, v9

    aput-wide v10, v4, v6

    aput-wide v7, v4, v9

    aget-wide v7, v5, v9

    shr-long v7, v7, v24

    and-long v7, v7, v27

    long-to-int v7, v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_9

    aget-wide v10, v5, v7

    and-long v10, v10, v25

    int-to-long v12, v6

    or-long/2addr v10, v12

    aput-wide v10, v5, v7

    aget-wide v10, v5, v9

    shl-long v12, v12, v24

    and-long v10, v10, v27

    or-long/2addr v10, v12

    aput-wide v10, v5, v9

    goto :goto_6

    :cond_9
    int-to-long v7, v6

    shl-long v10, v7, v24

    or-long/2addr v7, v10

    aput-wide v7, v5, v9

    move v7, v9

    :goto_6
    int-to-long v7, v7

    shl-long v7, v7, v24

    int-to-long v10, v9

    or-long/2addr v7, v10

    aput-wide v7, v5, v6

    add-int/lit8 v9, v9, -0x1

    :goto_7
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-wide v7, v1, v18

    aput-wide v7, v1, v6

    goto/16 :goto_4

    :cond_a
    invoke-direct {v0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    invoke-direct {v0, v5}, Landroidx/collection/MutableOrderedScatterSet;->fixupNodes([J)V

    return-void
.end method

.method public final minusAssign(Landroidx/collection/ObjectList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    iget-object v0, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 137
    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 138
    aget-object v2, v0, v1

    .line 139
    invoke-virtual {p0, v2}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Landroidx/collection/OrderedScatterSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iget-object v0, p1, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 125
    iget-object v1, p1, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 126
    iget p1, p1, Landroidx/collection/OrderedScatterSet;->tail:I

    :goto_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_0

    .line 127
    aget-wide v2, v1, p1

    const/16 v4, 0x1f

    shr-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 128
    aget-object p1, v0, p1

    .line 129
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Landroidx/collection/ScatterSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 131
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 132
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 133
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 134
    aget-object v9, v0, v9

    .line 135
    invoke-virtual {p0, v9}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final minusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    iget v3, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    iget-object v4, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v6, v1, 0x7

    shl-int/lit8 v6, v6, 0x3

    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v4, v5

    rsub-int/lit8 v4, v6, 0x40

    shl-long v4, v9, v4

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v2

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    iget-object v11, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_2

    :cond_2
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const/4 v10, -0x1

    :goto_3
    if-ltz v10, :cond_3

    invoke-virtual {p0, v10}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final minusAssign(Lzo7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 119
    invoke-virtual {p0, v2}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/ObjectList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v0, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 93
    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 94
    aget-object v2, v0, v1

    .line 95
    invoke-virtual {p0, v2}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/OrderedScatterSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-object v0, p1, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 78
    iget-object v1, p1, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 79
    iget p1, p1, Landroidx/collection/OrderedScatterSet;->tail:I

    :goto_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_0

    .line 80
    aget-wide v2, v1, p1

    const/16 v4, 0x1f

    shr-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 81
    aget-object p1, v0, p1

    .line 82
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/ScatterSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    invoke-virtual {p0, v9}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v0

    .line 84
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 85
    iget-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    int-to-long v2, v1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide v6, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v2, v6

    .line 86
    aput-wide v2, p1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 87
    aget-wide v6, p1, v1

    const-wide v8, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v6, v8

    int-to-long v8, v0

    and-long v3, v8, v4

    const/16 v5, 0x1f

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    .line 88
    aput-wide v3, p1, v1

    .line 89
    :cond_0
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 90
    iget p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-ne p1, v2, :cond_1

    .line 91
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_1
    return-void
.end method

.method public final plusAssign(Lzo7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 72
    invoke-virtual {p0, v2}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const v4, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x7f

    iget v5, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    ushr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    move v6, v2

    :goto_1
    iget-object v7, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    shl-int/lit8 v9, v9, 0x3

    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v13, v7, v8

    rsub-int/lit8 v7, v9, 0x40

    shl-long v7, v13, v7

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v4

    const-wide v13, 0x101010101010101L

    mul-long/2addr v9, v13

    xor-long/2addr v9, v7

    sub-long v13, v9, v13

    not-long v9, v9

    and-long/2addr v9, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v13

    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v11, v9, v15

    if-eqz v11, :cond_2

    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v3

    and-int/2addr v11, v5

    iget-object v15, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v15, v15, v11

    invoke-static {v15, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v15, 0x1

    sub-long v15, v9, v15

    and-long/2addr v9, v15

    goto :goto_2

    :cond_2
    not-long v9, v7

    const/4 v11, 0x6

    shl-long/2addr v9, v11

    and-long/2addr v7, v9

    and-long/2addr v7, v13

    cmp-long v7, v7, v15

    if-eqz v7, :cond_5

    const/4 v11, -0x1

    :goto_3
    if-ltz v11, :cond_3

    move v2, v12

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0, v11}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_4
    return v2

    :cond_5
    add-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v6

    and-int/2addr v3, v5

    goto :goto_1
.end method

.method public final removeAll(Landroidx/collection/ObjectList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Landroidx/collection/ObjectList;)V

    .line 34
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Landroidx/collection/OrderedScatterSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Landroidx/collection/OrderedScatterSet;)V

    .line 28
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Landroidx/collection/ScatterSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 30
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Landroidx/collection/ScatterSet;)V

    .line 31
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 24
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Iterable;)V

    .line 25
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Lzo7;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Lzo7;)V

    .line 22
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign([Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeElementAt(I)V
    .locals 12

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v4, v0, v2

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v3

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0xfe

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, p1, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    aput-wide v3, v0, v1

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    aget-wide v1, v0, p1

    const/16 v3, 0x1f

    shr-long v4, v1, v3

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    and-long/2addr v1, v6

    long-to-int v1, v1

    const v2, 0x7fffffff

    if-eq v4, v2, :cond_0

    aget-wide v8, v0, v4

    const-wide/32 v10, -0x80000000

    and-long/2addr v8, v10

    int-to-long v10, v1

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    aput-wide v8, v0, v4

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    :goto_0
    if-eq v1, v2, :cond_1

    aget-wide v8, v0, v1

    const-wide v10, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v8, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    shl-long v2, v4, v3

    or-long/2addr v2, v8

    aput-wide v2, v0, v1

    goto :goto_1

    :cond_1
    iput v4, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :goto_1
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v1, v0, p1

    return-void
.end method

.method public final removeIf(Lnl3;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v11, v0, v10

    invoke-interface {p1, v11}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0, v10}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget-object v2, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v4, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    new-array v5, v4, [I

    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeStorage(I)V

    iget-object v6, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget-object v7, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    iget-object v8, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v9, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v4, :cond_2

    shr-int/lit8 v12, v11, 0x3

    aget-wide v12, v1, v12

    and-int/lit8 v14, v11, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const-wide/16 v16, 0x80

    cmp-long v12, v12, v16

    if-gez v12, :cond_1

    aget-object v12, v2, v11

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    const v16, -0x3361d2af    # -8.293031E7f

    mul-int v13, v13, v16

    shl-int/lit8 v16, v13, 0x10

    xor-int v13, v13, v16

    ushr-int/lit8 v10, v13, 0x7

    invoke-direct {v0, v10}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v10

    and-int/lit8 v13, v13, 0x7f

    move-wide/from16 v16, v14

    int-to-long v14, v13

    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v18, v10, 0x7

    shl-int/lit8 v18, v18, 0x3

    aget-wide v19, v6, v13

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    shl-long v1, v16, v18

    not-long v1, v1

    and-long v1, v19, v1

    shl-long v14, v14, v18

    or-long/2addr v1, v14

    aput-wide v1, v6, v13

    add-int/lit8 v13, v10, -0x7

    and-int/2addr v13, v9

    and-int/lit8 v14, v9, 0x7

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x3

    aput-wide v1, v6, v13

    aput-object v12, v7, v10

    aget-wide v1, v3, v11

    aput-wide v1, v8, v10

    aput v10, v5, v11

    goto :goto_2

    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto :goto_0

    :cond_2
    invoke-direct {v0, v5}, Landroidx/collection/MutableOrderedScatterSet;->fixupNodes([I)V

    return-void
.end method

.method public final retainAll(Landroidx/collection/OrderedScatterSet;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 108
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 109
    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 110
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    move v6, v5

    .line 111
    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 112
    aget-object v13, v1, v12

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroidx/collection/OrderedScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 113
    invoke-virtual {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    goto :goto_2

    :cond_0
    move-object/from16 v14, p1

    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p1

    if-ne v9, v10, :cond_4

    goto :goto_3

    :cond_3
    move-object/from16 v14, p1

    :goto_3
    if-eq v6, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_4
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    if-eq v2, v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v5
.end method

.method public final retainAll(Landroidx/collection/ScatterSet;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 116
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 117
    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 118
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    move v6, v5

    .line 119
    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 120
    aget-object v13, v1, v12

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 121
    invoke-virtual {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    goto :goto_2

    :cond_0
    move-object/from16 v14, p1

    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p1

    if-ne v9, v10, :cond_4

    goto :goto_3

    :cond_3
    move-object/from16 v14, p1

    :goto_3
    if-eq v6, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :cond_4
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    if-eq v2, v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v5
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 124
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 125
    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 126
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    move v6, v5

    .line 127
    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 128
    move-object/from16 v13, p1

    check-cast v13, Ljava/lang/Iterable;

    aget-object v14, v1, v12

    invoke-static {v13, v14}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 129
    invoke-virtual {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_0
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_3

    :cond_2
    if-eq v6, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_3
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    if-eq v2, v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v5
.end method

.method public final retainAll(Lnl3;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v2

    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    move v6, v5

    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v13, v1, v12

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    goto :goto_2

    :cond_0
    move-object/from16 v14, p1

    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p1

    if-ne v9, v10, :cond_4

    goto :goto_3

    :cond_3
    move-object/from16 v14, p1

    :goto_3
    if-eq v6, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    if-eq v2, v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v5
.end method

.method public final trim()I
    .locals 2

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result v1

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/MutableOrderedScatterSet;->resizeStorage$collection(I)V

    iget p0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final trimToSize(I)V
    .locals 6

    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    if-le v2, p1, :cond_0

    if-eqz v2, :cond_0

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p0, v1}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
