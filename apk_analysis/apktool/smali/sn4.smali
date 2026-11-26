.class public final synthetic Lsn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListMeasureResult;


# direct methods
.method public synthetic constructor <init>(Lnl3;ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsn4;->b:Lnl3;

    iput p2, p0, Lsn4;->c:I

    iput-object p3, p0, Lsn4;->d:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsn4;->d:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    iget-object v1, p0, Lsn4;->b:Lnl3;

    iget p0, p0, Lsn4;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;->a(Lnl3;ILandroidx/compose/foundation/lazy/LazyListMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
