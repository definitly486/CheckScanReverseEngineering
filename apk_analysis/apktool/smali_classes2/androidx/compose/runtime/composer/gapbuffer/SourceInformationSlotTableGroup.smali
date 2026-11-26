.class final Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;
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
.field private final compositionGroups:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

.field private final key:Ljava/lang/Object;

.field private final parent:I

.field private final sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

.field private final table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    iput-object p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    iput-object p4, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->key:Ljava/lang/Object;

    iput-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->compositionGroups:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;

    iget v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->compositionGroups:Ljava/lang/Iterable;

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

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupDataIterator;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupDataIterator;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;)V

    return-object v0
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;->getIdentity(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getIdentityPath()Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getNode()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParent()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    return p0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSourceInformation()Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    return-object p0
.end method

.method public final getTable()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    xor-int/lit8 p0, v0, 0x1

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

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->parent:I

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V

    return-object v0
.end method
