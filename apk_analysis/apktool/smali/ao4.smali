.class public final synthetic Lao4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic c:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

.field public final synthetic d:Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao4;->b:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p2, p0, Lao4;->c:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iput-object p3, p0, Lao4;->d:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/Density;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lao4;->b:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v1, p0, Lao4;->c:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iget-object p0, p0, Lao4;->d:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->d(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object p0

    return-object p0
.end method
