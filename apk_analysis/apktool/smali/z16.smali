.class public final synthetic Lz16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Lnl3;

.field public final synthetic m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic o:Lfm3;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLnl3;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lfm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz16;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lz16;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lz16;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Lz16;->e:Landroidx/compose/foundation/pager/PageSize;

    iput p5, p0, Lz16;->f:I

    iput p6, p0, Lz16;->g:F

    iput-object p7, p0, Lz16;->h:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p8, p0, Lz16;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p9, p0, Lz16;->j:Z

    iput-boolean p10, p0, Lz16;->k:Z

    iput-object p11, p0, Lz16;->l:Lnl3;

    iput-object p12, p0, Lz16;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p13, p0, Lz16;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iput-object p14, p0, Lz16;->o:Lfm3;

    iput p15, p0, Lz16;->p:I

    move/from16 p1, p16

    iput p1, p0, Lz16;->q:I

    move/from16 p1, p17

    iput p1, p0, Lz16;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v1, v0, Lz16;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Lz16;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lz16;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, v0, Lz16;->e:Landroidx/compose/foundation/pager/PageSize;

    iget v5, v0, Lz16;->f:I

    iget v6, v0, Lz16;->g:F

    iget-object v7, v0, Lz16;->h:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v8, v0, Lz16;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v9, v0, Lz16;->j:Z

    iget-boolean v10, v0, Lz16;->k:Z

    iget-object v11, v0, Lz16;->l:Lnl3;

    iget-object v12, v0, Lz16;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v13, v0, Lz16;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iget-object v14, v0, Lz16;->o:Lfm3;

    iget v15, v0, Lz16;->p:I

    move-object/from16 v16, v1

    iget v1, v0, Lz16;->q:I

    iget v0, v0, Lz16;->r:I

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLnl3;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lfm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
