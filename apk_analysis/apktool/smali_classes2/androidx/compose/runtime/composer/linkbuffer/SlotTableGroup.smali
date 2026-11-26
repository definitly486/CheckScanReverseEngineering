.class final Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionGroup;
.implements Ljava/lang/Iterable;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field private final group:I

.field private final table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    .line 14
    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    .line 15
    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;IIILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getVersion()I

    move-result p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;II)V

    return-void
.end method

.method private static final find$findAnchoredGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->ownsAnchor(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result p1

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    :goto_0
    if-lez v1, :cond_2

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    if-ne v1, v2, :cond_1

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;II)V

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    aget v1, v0, v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    const-string p0, "Traversing parent of group not in the slot table: "

    invoke-static {p1, p0}, Lh2;->b(ILjava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final find$findRelativeGroup(Landroidx/compose/runtime/tooling/CompositionGroup;I)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0, p1}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object p0
.end method

.method private final validateRead()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getVersion()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    if-eq v0, p0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->throwConcurrentModificationException()V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;

    iget v0, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->find$findAnchoredGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroupIdentity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroupIdentity;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroupIdentity;->getParentIdentity()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroupIdentity;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->find$findRelativeGroup(Landroidx/compose/runtime/tooling/CompositionGroup;I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public getData()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationOf(I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupDataIterator;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-direct {v2, v1, p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupDataIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ILandroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;)V

    return-object v2

    :cond_0
    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V

    return-object v0
.end method

.method public final getGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    return p0
.end method

.method public getGroupSize()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    const/4 v1, 0x0

    if-ltz p0, :cond_3

    new-instance v2, Landroidx/compose/runtime/IntStack;

    invoke-direct {v2}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    move v3, p0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-eq v3, p0, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    if-ltz v4, :cond_0

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x3

    aget v3, v0, v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->validateRead()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupObjectKey$runtime(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupKeyOf$runtime(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getNode()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupNode$runtime(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSlotsSize()I
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    const/4 v2, 0x0

    if-ltz v1, :cond_6

    new-instance v3, Landroidx/compose/runtime/IntStack;

    invoke-direct {v3}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    move v4, v1

    move v5, v2

    :goto_0
    iget-object v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v6

    add-int/lit8 v7, v4, 0x5

    aget v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget-object v8, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v8

    if-ne v6, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v6, 0xf

    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0xf

    if-le v7, v9, :cond_1

    invoke-static {v8}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v7

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v7, v6}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v7

    :cond_1
    :goto_1
    add-int/2addr v5, v7

    :cond_2
    if-eq v4, v1, :cond_3

    add-int/lit8 v6, v4, 0x1

    aget v6, v0, v6

    if-ltz v6, :cond_3

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x3

    aget v4, v0, v4

    if-ltz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, v3, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v4, :cond_5

    return v5

    :cond_5
    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v4

    goto :goto_0

    :cond_6
    return v2
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupHasAux$runtime(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupAux$runtime(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationOf(I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public final getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->version:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->firstChildOf$runtime(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->validateRead()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationOf(I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    new-instance v3, Landroidx/compose/runtime/composer/linkbuffer/AnchoredGroupPath;

    invoke-direct {v3, p0}, Landroidx/compose/runtime/composer/linkbuffer/AnchoredGroupPath;-><init>(I)V

    invoke-direct {v2, v1, p0, v0, v3}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ILandroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;)V

    return-object v2

    :cond_0
    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;->group:I

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->firstChildOf$runtime(I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V

    return-object v0
.end method
