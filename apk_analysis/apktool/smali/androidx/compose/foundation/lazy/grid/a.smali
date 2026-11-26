.class public final synthetic Landroidx/compose/foundation/lazy/grid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/a;->b:Lbm3;

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/a;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/a;->c:I

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/a;->b:Lbm3;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->a(Lbm3;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
