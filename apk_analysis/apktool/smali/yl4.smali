.class public final synthetic Lyl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field public final synthetic e:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic i:Z

.field public final synthetic j:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic l:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic m:Lnl3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lnl3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyl4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lyl4;->c:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p3, p0, Lyl4;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    iput-object p4, p0, Lyl4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p5, p0, Lyl4;->f:Z

    iput-boolean p6, p0, Lyl4;->g:Z

    iput-object p7, p0, Lyl4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p8, p0, Lyl4;->i:Z

    iput-object p9, p0, Lyl4;->j:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p10, p0, Lyl4;->k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p11, p0, Lyl4;->l:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p12, p0, Lyl4;->m:Lnl3;

    iput p13, p0, Lyl4;->n:I

    iput p14, p0, Lyl4;->o:I

    iput p15, p0, Lyl4;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Lyl4;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lyl4;->c:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v3, v0, Lyl4;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    iget-object v4, v0, Lyl4;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v5, v0, Lyl4;->f:Z

    iget-boolean v6, v0, Lyl4;->g:Z

    iget-object v7, v0, Lyl4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v8, v0, Lyl4;->i:Z

    iget-object v9, v0, Lyl4;->j:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v10, v0, Lyl4;->k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v11, v0, Lyl4;->l:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v12, v0, Lyl4;->m:Lnl3;

    iget v13, v0, Lyl4;->n:I

    iget v14, v0, Lyl4;->o:I

    iget v15, v0, Lyl4;->p:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
