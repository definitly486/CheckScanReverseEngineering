.class final Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field private nextGroup:I

.field private final table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->nextGroup:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getVersion()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->version:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getHasEditor()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->throwConcurrentModificationException()V

    :cond_0
    return-void
.end method

.method private final validateRead()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getVersion()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->version:I

    if-eq v0, p0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->throwConcurrentModificationException()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->nextGroup:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 3

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->validateRead()V

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->nextGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->nextSiblingOf$runtime(I)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->nextGroup:I

    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->version:I

    invoke-direct {v1, v2, v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;II)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/GroupIterator;->next()Landroidx/compose/runtime/tooling/CompositionGroup;

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
