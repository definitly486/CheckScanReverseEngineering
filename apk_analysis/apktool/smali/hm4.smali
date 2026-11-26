.class public final synthetic Lhm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lp07;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lp07;Ljava/util/List;Lnl3;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhm4;->b:Ljava/util/List;

    iput-object p2, p0, Lhm4;->c:Lp07;

    iput-object p3, p0, Lhm4;->d:Ljava/util/List;

    iput-object p4, p0, Lhm4;->e:Lnl3;

    iput p5, p0, Lhm4;->f:I

    iput-object p6, p0, Lhm4;->g:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lhm4;->g:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    iget-object v0, p0, Lhm4;->b:Ljava/util/List;

    iget-object v1, p0, Lhm4;->c:Lp07;

    iget-object v2, p0, Lhm4;->d:Ljava/util/List;

    iget-object v3, p0, Lhm4;->e:Lnl3;

    iget v4, p0, Lhm4;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->a(Ljava/util/List;Lp07;Ljava/util/List;Lnl3;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
