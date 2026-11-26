.class final Landroidx/compose/runtime/composer/linkbuffer/DataIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final group:I

.field private index:I

.field private final table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->group:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupSlotRange$runtime(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0xf

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->end:I

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupFlags$runtime(I)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/GroupFlagsKt;->utilitySlotsCountForFlags(I)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->end:I

    return p0
.end method

.method public final getGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->group:I

    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    return p0
.end method

.method public final getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->end:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->group:I

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->groupSlotAtIndex$runtime(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/DataIterator;->index:I

    return-void
.end method
