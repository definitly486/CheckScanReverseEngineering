.class final Landroidx/compose/foundation/layout/GridTrackSizes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final columnGapPx:I

.field private final columnWidths:[I

.field private final rowGapPx:I

.field private final rowHeights:[I

.field private final totalHeight:I

.field private final totalWidth:I


# direct methods
.method public constructor <init>([I[IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->columnWidths:[I

    iput-object p2, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->rowHeights:[I

    iput p3, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->totalWidth:I

    iput p4, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->totalHeight:I

    iput p5, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->columnGapPx:I

    iput p6, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->rowGapPx:I

    return-void
.end method


# virtual methods
.method public final getColumnGapPx()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->columnGapPx:I

    return p0
.end method

.method public final getColumnWidths()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->columnWidths:[I

    return-object p0
.end method

.method public final getRowGapPx()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->rowGapPx:I

    return p0
.end method

.method public final getRowHeights()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->rowHeights:[I

    return-object p0
.end method

.method public final getTotalHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->totalHeight:I

    return p0
.end method

.method public final getTotalWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridTrackSizes;->totalWidth:I

    return p0
.end method
