.class public final synthetic Lxm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic n:Lnl3;

.field public final synthetic o:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic p:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic q:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic r:Lfm3;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lnl3;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lfm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxm4;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lxm4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lxm4;->e:Z

    iput-object p5, p0, Lxm4;->f:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p6, p0, Lxm4;->g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p7, p0, Lxm4;->h:Z

    iput-object p8, p0, Lxm4;->i:Landroidx/compose/foundation/OverscrollEffect;

    iput p9, p0, Lxm4;->j:I

    iput p10, p0, Lxm4;->k:F

    iput-object p11, p0, Lxm4;->l:Landroidx/compose/foundation/pager/PageSize;

    iput-object p12, p0, Lxm4;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p13, p0, Lxm4;->n:Lnl3;

    iput-object p14, p0, Lxm4;->o:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p15, p0, Lxm4;->p:Landroidx/compose/ui/Alignment$Vertical;

    move-object/from16 p1, p16

    iput-object p1, p0, Lxm4;->q:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object/from16 p1, p17

    iput-object p1, p0, Lxm4;->r:Lfm3;

    move/from16 p1, p18

    iput p1, p0, Lxm4;->s:I

    move/from16 p1, p19

    iput p1, p0, Lxm4;->t:I

    move/from16 p1, p20

    iput p1, p0, Lxm4;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    check-cast v21, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v1, v0, Lxm4;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lxm4;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v3, v0, Lxm4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, v0, Lxm4;->e:Z

    iget-object v5, v0, Lxm4;->f:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v6, v0, Lxm4;->g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v7, v0, Lxm4;->h:Z

    iget-object v8, v0, Lxm4;->i:Landroidx/compose/foundation/OverscrollEffect;

    iget v9, v0, Lxm4;->j:I

    iget v10, v0, Lxm4;->k:F

    iget-object v11, v0, Lxm4;->l:Landroidx/compose/foundation/pager/PageSize;

    iget-object v12, v0, Lxm4;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v13, v0, Lxm4;->n:Lnl3;

    iget-object v14, v0, Lxm4;->o:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v15, v0, Lxm4;->p:Landroidx/compose/ui/Alignment$Vertical;

    move-object/from16 v16, v1

    iget-object v1, v0, Lxm4;->q:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object/from16 v17, v1

    iget-object v1, v0, Lxm4;->r:Lfm3;

    move-object/from16 v18, v1

    iget v1, v0, Lxm4;->s:I

    move/from16 v19, v1

    iget v1, v0, Lxm4;->t:I

    iget v0, v0, Lxm4;->u:I

    move/from16 v20, v19

    move/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v0

    invoke-static/range {v1 .. v22}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lnl3;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lfm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
