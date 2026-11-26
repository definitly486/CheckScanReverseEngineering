.class public final synthetic Lzn4;
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

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic i:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic l:Lnl3;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lnl3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzn4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iput-object p2, p0, Lzn4;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lzn4;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iput-object p4, p0, Lzn4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p5, p0, Lzn4;->f:Z

    iput p6, p0, Lzn4;->g:F

    iput-object p7, p0, Lzn4;->h:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p8, p0, Lzn4;->i:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p9, p0, Lzn4;->j:Z

    iput-object p10, p0, Lzn4;->k:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p11, p0, Lzn4;->l:Lnl3;

    iput p12, p0, Lzn4;->m:I

    iput p13, p0, Lzn4;->n:I

    iput p14, p0, Lzn4;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lzn4;->b:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;

    iget-object v2, v0, Lzn4;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lzn4;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iget-object v4, v0, Lzn4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v5, v0, Lzn4;->f:Z

    iget v6, v0, Lzn4;->g:F

    iget-object v7, v0, Lzn4;->h:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v8, v0, Lzn4;->i:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v9, v0, Lzn4;->j:Z

    iget-object v10, v0, Lzn4;->k:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v11, v0, Lzn4;->l:Lnl3;

    iget v12, v0, Lzn4;->m:I

    iget v13, v0, Lzn4;->n:I

    iget v14, v0, Lzn4;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->c(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
