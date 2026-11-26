.class public final synthetic Lko4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;Ljava/util/ArrayList;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    iput-object p2, p0, Lko4;->c:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lko4;->d:Z

    iput-wide p4, p0, Lko4;->e:J

    iput-object p6, p0, Lko4;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lko4;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lko4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    iget-object v1, p0, Lko4;->c:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lko4;->d:Z

    iget-wide v3, p0, Lko4;->e:J

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->b(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;Ljava/util/ArrayList;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
