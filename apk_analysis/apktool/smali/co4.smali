.class public final synthetic Lco4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

.field public final synthetic e:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Lnl3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iput-object p2, p0, Lco4;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lco4;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iput-object p4, p0, Lco4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p5, p0, Lco4;->f:Z

    iput-object p6, p0, Lco4;->g:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput p7, p0, Lco4;->h:F

    iput-object p8, p0, Lco4;->i:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p9, p0, Lco4;->j:Z

    iput-object p10, p0, Lco4;->k:Lnl3;

    iput p11, p0, Lco4;->l:I

    iput p12, p0, Lco4;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lco4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iget-object v1, p0, Lco4;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lco4;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iget-object v3, p0, Lco4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, p0, Lco4;->f:Z

    iget-object v5, p0, Lco4;->g:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget v6, p0, Lco4;->h:F

    iget-object v7, p0, Lco4;->i:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v8, p0, Lco4;->j:Z

    iget-object v9, p0, Lco4;->k:Lnl3;

    iget v10, p0, Lco4;->l:I

    iget v11, p0, Lco4;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->f(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
