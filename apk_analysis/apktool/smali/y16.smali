.class public final synthetic Ly16;
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

.field public final synthetic h:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Lnl3;

.field public final synthetic m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic o:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic p:Lfm3;

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLnl3;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Lfm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly16;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Ly16;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Ly16;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Ly16;->e:Landroidx/compose/foundation/pager/PageSize;

    iput p5, p0, Ly16;->f:I

    iput p6, p0, Ly16;->g:F

    iput-object p7, p0, Ly16;->h:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p8, p0, Ly16;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p9, p0, Ly16;->j:Z

    iput-boolean p10, p0, Ly16;->k:Z

    iput-object p11, p0, Ly16;->l:Lnl3;

    iput-object p12, p0, Ly16;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p13, p0, Ly16;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iput-object p14, p0, Ly16;->o:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p15, p0, Ly16;->p:Lfm3;

    move/from16 p1, p16

    iput p1, p0, Ly16;->q:I

    move/from16 p1, p17

    iput p1, p0, Ly16;->r:I

    move/from16 p1, p18

    iput p1, p0, Ly16;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v1, v0, Ly16;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Ly16;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Ly16;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, v0, Ly16;->e:Landroidx/compose/foundation/pager/PageSize;

    iget v5, v0, Ly16;->f:I

    iget v6, v0, Ly16;->g:F

    iget-object v7, v0, Ly16;->h:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v8, v0, Ly16;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v9, v0, Ly16;->j:Z

    iget-boolean v10, v0, Ly16;->k:Z

    iget-object v11, v0, Ly16;->l:Lnl3;

    iget-object v12, v0, Ly16;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v13, v0, Ly16;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iget-object v14, v0, Ly16;->o:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v15, v0, Ly16;->p:Lfm3;

    move-object/from16 v16, v1

    iget v1, v0, Ly16;->q:I

    move/from16 v17, v1

    iget v1, v0, Ly16;->r:I

    iget v0, v0, Ly16;->s:I

    move/from16 v18, v17

    move/from16 v17, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move/from16 v18, v0

    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/pager/PagerKt;->i(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLnl3;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Lfm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
