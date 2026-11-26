.class final Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;
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
.field private final group:Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

.field private index:I

.field private final parent:I

.field private final path:Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;

.field private final table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ILandroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->parent:I

    iput-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    iput-object p4, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getVersion()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->version:I

    return-void
.end method


# virtual methods
.method public final getGroup()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    return-object p0
.end method

.method public final getParent()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->parent:I

    return p0
.end method

.method public final getPath()Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;

    return-object p0
.end method

.method public final getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public next()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    check-cast v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->version:I

    invoke-direct {v1, v2, v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;II)V

    return-object v1

    :cond_1
    instance-of v1, v0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->parent:I

    check-cast v0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    new-instance v4, Landroidx/compose/runtime/composer/linkbuffer/RelativeGroupPath;

    iget-object v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->index:I

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v4, v5, p0}, Landroidx/compose/runtime/composer/linkbuffer/RelativeGroupPath;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;I)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationSlotTableGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ILandroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupPath;)V

    return-object v1

    :cond_2
    const-string p0, "Unexpected group information structure"

    invoke-static {p0}, Lav;->b(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SourceInformationGroupIterator;->next()Landroidx/compose/runtime/tooling/CompositionGroup;

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
