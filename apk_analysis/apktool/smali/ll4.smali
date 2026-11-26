.class public final synthetic Lll4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic h:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic i:Z

.field public final synthetic j:Lnl3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lll4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lll4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lll4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lll4;->e:Z

    iput-object p5, p0, Lll4;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p6, p0, Lll4;->g:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p7, p0, Lll4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p8, p0, Lll4;->i:Z

    iput-object p9, p0, Lll4;->j:Lnl3;

    iput p10, p0, Lll4;->k:I

    iput p11, p0, Lll4;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lll4;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lll4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lll4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v3, p0, Lll4;->e:Z

    iget-object v4, p0, Lll4;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v5, p0, Lll4;->g:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v6, p0, Lll4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, p0, Lll4;->i:Z

    iget-object v8, p0, Lll4;->j:Lnl3;

    iget v9, p0, Lll4;->k:I

    iget v10, p0, Lll4;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
