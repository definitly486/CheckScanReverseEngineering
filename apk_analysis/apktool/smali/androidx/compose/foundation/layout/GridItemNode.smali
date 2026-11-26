.class final Landroidx/compose/foundation/layout/GridItemNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# instance fields
.field private alignment:Landroidx/compose/ui/Alignment;

.field private column:I

.field private columnSpan:I

.field private row:I

.field private rowSpan:I


# direct methods
.method public constructor <init>(IIIILandroidx/compose/ui/Alignment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->row:I

    iput p2, p0, Landroidx/compose/foundation/layout/GridItemNode;->column:I

    iput p3, p0, Landroidx/compose/foundation/layout/GridItemNode;->rowSpan:I

    iput p4, p0, Landroidx/compose/foundation/layout/GridItemNode;->columnSpan:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/GridItemNode;->alignment:Landroidx/compose/ui/Alignment;

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItemNode;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getColumn()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemNode;->column:I

    return p0
.end method

.method public final getColumnSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemNode;->columnSpan:I

    return p0
.end method

.method public final getRow()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemNode;->row:I

    return p0
.end method

.method public final getRowSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItemNode;->rowSpan:I

    return p0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/GridItemNode;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/GridItemNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/GridItemNode;

    move-result-object p0

    return-object p0
.end method

.method public final setAlignment(Landroidx/compose/ui/Alignment;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->alignment:Landroidx/compose/ui/Alignment;

    return-void
.end method

.method public final setColumn(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->column:I

    return-void
.end method

.method public final setColumnSpan(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->columnSpan:I

    return-void
.end method

.method public final setRow(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->row:I

    return-void
.end method

.method public final setRowSpan(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItemNode;->rowSpan:I

    return-void
.end method
