.class final Landroidx/compose/foundation/layout/GridItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private column:I

.field private columnSpan:I

.field private final measurable:Landroidx/compose/ui/layout/Measurable;

.field private offsetX:I

.field private offsetY:I

.field private placeable:Landroidx/compose/ui/layout/Placeable;

.field private row:I

.field private rowSpan:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/Measurable;IIIILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/compose/foundation/layout/GridItem;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 54
    iput p2, p0, Landroidx/compose/foundation/layout/GridItem;->row:I

    .line 55
    iput p3, p0, Landroidx/compose/foundation/layout/GridItem;->column:I

    .line 56
    iput p4, p0, Landroidx/compose/foundation/layout/GridItem;->rowSpan:I

    .line 57
    iput p5, p0, Landroidx/compose/foundation/layout/GridItem;->columnSpan:I

    .line 58
    iput-object p6, p0, Landroidx/compose/foundation/layout/GridItem;->alignment:Landroidx/compose/ui/Alignment;

    .line 59
    iput-object p7, p0, Landroidx/compose/foundation/layout/GridItem;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 60
    iput p8, p0, Landroidx/compose/foundation/layout/GridItem;->offsetX:I

    .line 61
    iput p9, p0, Landroidx/compose/foundation/layout/GridItem;->offsetY:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Measurable;IIIILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/Placeable;IIILjh2;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move v11, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object v2, p0

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    :goto_2
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/layout/GridItem;-><init>(Landroidx/compose/ui/layout/Measurable;IIIILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/Placeable;II)V

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItem;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getColumn()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->column:I

    return p0
.end method

.method public final getColumnSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->columnSpan:I

    return p0
.end method

.method public final getMeasurable()Landroidx/compose/ui/layout/Measurable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItem;->measurable:Landroidx/compose/ui/layout/Measurable;

    return-object p0
.end method

.method public final getOffsetX()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->offsetX:I

    return p0
.end method

.method public final getOffsetY()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->offsetY:I

    return p0
.end method

.method public final getPlaceable()Landroidx/compose/ui/layout/Placeable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridItem;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-object p0
.end method

.method public final getRow()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->row:I

    return p0
.end method

.method public final getRowSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridItem;->rowSpan:I

    return p0
.end method

.method public final setColumn(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->column:I

    return-void
.end method

.method public final setColumnSpan(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->columnSpan:I

    return-void
.end method

.method public final setOffsetX(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->offsetX:I

    return-void
.end method

.method public final setOffsetY(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->offsetY:I

    return-void
.end method

.method public final setPlaceable(Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridItem;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method

.method public final setRow(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->row:I

    return-void
.end method

.method public final setRowSpan(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridItem;->rowSpan:I

    return-void
.end method
