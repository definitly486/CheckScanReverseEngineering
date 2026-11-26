.class final Landroidx/compose/foundation/layout/GridItemElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/GridItemNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private final column:I

.field private final columnSpan:I

.field private final row:I

.field private final rowSpan:I


# direct methods
.method public constructor <init>(IIIILandroidx/compose/ui/Alignment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    iput p2, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    iput p3, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    iput p4, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/GridItemNode;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/GridItemNode;

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    iget v2, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    iget v3, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    iget v4, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    iget-object v5, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/GridItemNode;-><init>(IIIILandroidx/compose/ui/Alignment;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/GridItemElement;->create()Landroidx/compose/foundation/layout/GridItemNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/GridItemElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    check-cast p1, Landroidx/compose/foundation/layout/GridItemElement;

    iget v3, p1, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    iget v3, p1, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    iget v3, p1, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    iget v3, p1, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    iget-object p1, p1, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getColumn()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    return p0
.end method

.method public final getColumnSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    return p0
.end method

.method public final getRow()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    return p0
.end method

.method public final getRowSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "gridItem"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "row"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "column"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rowSpan"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "columnSpan"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "alignment"

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/GridItemNode;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/GridItemElement;->row:I

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/GridItemNode;->setRow(I)V

    iget v0, p0, Landroidx/compose/foundation/layout/GridItemElement;->column:I

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/GridItemNode;->setColumn(I)V

    iget v0, p0, Landroidx/compose/foundation/layout/GridItemElement;->rowSpan:I

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/GridItemNode;->setRowSpan(I)V

    iget v0, p0, Landroidx/compose/foundation/layout/GridItemElement;->columnSpan:I

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/GridItemNode;->setColumnSpan(I)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/GridItemNode;->setAlignment(Landroidx/compose/ui/Alignment;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 26
    check-cast p1, Landroidx/compose/foundation/layout/GridItemNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/GridItemElement;->update(Landroidx/compose/foundation/layout/GridItemNode;)V

    return-void
.end method
