.class final Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;
.super Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;
.source "SourceFile"


# instance fields
.field private final index:I

.field private final parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;

    iget-object v0, p1, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIdentity(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroupIdentity;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;->getIdentity(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Ljava/lang/Object;

    move-result-object p1

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    invoke-direct {v0, p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroupIdentity;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    return p0
.end method

.method public final getParent()Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->index:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;->parent:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
