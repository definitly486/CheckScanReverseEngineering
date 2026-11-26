.class public final synthetic Lhl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic h:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic i:Z

.field public final synthetic j:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic k:Lnl3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lhl4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lhl4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lhl4;->e:Z

    iput-object p5, p0, Lhl4;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Lhl4;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p7, p0, Lhl4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p8, p0, Lhl4;->i:Z

    iput-object p9, p0, Lhl4;->j:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p10, p0, Lhl4;->k:Lnl3;

    iput p11, p0, Lhl4;->l:I

    iput p12, p0, Lhl4;->m:I

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

    iget-object v0, p0, Lhl4;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lhl4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lhl4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v3, p0, Lhl4;->e:Z

    iget-object v4, p0, Lhl4;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v5, p0, Lhl4;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v6, p0, Lhl4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, p0, Lhl4;->i:Z

    iget-object v8, p0, Lhl4;->j:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v9, p0, Lhl4;->k:Lnl3;

    iget v10, p0, Lhl4;->l:I

    iget v11, p0, Lhl4;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/lazy/LazyDslKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
