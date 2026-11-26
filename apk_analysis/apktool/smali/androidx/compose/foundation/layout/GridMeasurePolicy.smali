.class public final Landroidx/compose/foundation/layout/GridMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final $stable:I


# instance fields
.field private final configState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lnl3<",
            "Landroidx/compose/foundation/layout/GridConfigurationScope;",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/GridConfigurationScope;",
            "Lj59;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridMeasurePolicy;->configState:Landroidx/compose/runtime/State;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/GridMeasurePolicy;->measure_3p2s80s$lambda$0(Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 11

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/GridTrackSizes;->getColumnWidths()[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/GridTrackSizes;->getColumnGapPx()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/GridKt;->access$calculateTrackOffsets([II)[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/GridTrackSizes;->getRowHeights()[I

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/GridTrackSizes;->getRowGapPx()I

    move-result p0

    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/GridKt;->access$calculateTrackOffsets([II)[I

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->getGridItems()Landroidx/collection/MutableObjectList;

    move-result-object p1

    iget-object v1, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v1, v2

    check-cast v3, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/GridItem;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v4

    aget v4, v0, v4

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/GridItem;->getOffsetX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v4

    aget v4, p0, v4

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/GridItem;->getOffsetY()I

    move-result v3

    add-int v7, v4, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v4, p2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p2, v4

    goto :goto_0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;JLjh2;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridMeasurePolicy;->configState:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnl3;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getColumnSpecs()Landroidx/collection/MutableLongList;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getRowSpecs()Landroidx/collection/MutableLongList;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getFlow-ITJdzs4()I

    move-result v2

    invoke-static {p2, p0, v1, v2}, Landroidx/compose/foundation/layout/GridKt;->access$resolveGridItemIndices-pclAfdo(Ljava/util/List;Landroidx/collection/LongList;Landroidx/collection/LongList;I)Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->getGridItems()Landroidx/collection/MutableObjectList;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getColumnSpecs()Landroidx/collection/MutableLongList;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getRowSpecs()Landroidx/collection/MutableLongList;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->getGridSize-YbymL2g()J

    move-result-wide v5

    const/16 p2, 0x20

    shr-long/2addr v5, p2

    long-to-int v5, v5

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->getGridSize-YbymL2g()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getColumnGap-D9Ej5fM()F

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->getRowGap-D9Ej5fM()F

    move-result v10

    move-object v1, p1

    move-wide v7, p3

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/layout/GridKt;->access$calculateGridTrackSizes-cMe430U(Landroidx/compose/ui/unit/Density;Landroidx/collection/MutableObjectList;Landroidx/collection/LongList;Landroidx/collection/LongList;IIJFF)Landroidx/compose/foundation/layout/GridTrackSizes;

    move-result-object p1

    move-object v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->getGridItems()Landroidx/collection/MutableObjectList;

    move-result-object p2

    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p3

    invoke-static {p2, p1, p3}, Landroidx/compose/foundation/layout/GridKt;->access$measureItems(Landroidx/collection/MutableObjectList;Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getTotalWidth()I

    move-result p2

    invoke-static {v7, v8, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getTotalHeight()I

    move-result p2

    invoke-static {v7, v8, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v2

    new-instance v4, Landroidx/compose/foundation/layout/v;

    invoke-direct {v4, p1, p0}, Landroidx/compose/foundation/layout/v;-><init>(Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
