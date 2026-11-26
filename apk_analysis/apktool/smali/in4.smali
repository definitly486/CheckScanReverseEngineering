.class public final synthetic Lin4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic l:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic m:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic n:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic o:Lnl3;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lnl3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lin4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lin4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lin4;->e:Z

    iput-boolean p5, p0, Lin4;->f:Z

    iput-object p6, p0, Lin4;->g:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p7, p0, Lin4;->h:Z

    iput-object p8, p0, Lin4;->i:Landroidx/compose/foundation/OverscrollEffect;

    iput p9, p0, Lin4;->j:I

    iput-object p10, p0, Lin4;->k:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p11, p0, Lin4;->l:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p12, p0, Lin4;->m:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p13, p0, Lin4;->n:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p14, p0, Lin4;->o:Lnl3;

    iput p15, p0, Lin4;->p:I

    move/from16 p1, p16

    iput p1, p0, Lin4;->q:I

    move/from16 p1, p17

    iput p1, p0, Lin4;->r:I

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

    iget-object v1, v0, Lin4;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lin4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Lin4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, v0, Lin4;->e:Z

    iget-boolean v5, v0, Lin4;->f:Z

    iget-object v6, v0, Lin4;->g:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, v0, Lin4;->h:Z

    iget-object v8, v0, Lin4;->i:Landroidx/compose/foundation/OverscrollEffect;

    iget v9, v0, Lin4;->j:I

    iget-object v10, v0, Lin4;->k:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v11, v0, Lin4;->l:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v12, v0, Lin4;->m:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v13, v0, Lin4;->n:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v14, v0, Lin4;->o:Lnl3;

    iget v15, v0, Lin4;->p:I

    move-object/from16 v16, v1

    iget v1, v0, Lin4;->q:I

    iget v0, v0, Lin4;->r:I

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
