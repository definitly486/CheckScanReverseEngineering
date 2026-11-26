.class public final synthetic Lil4;
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

.field public final synthetic i:Lnl3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil4;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lil4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lil4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lil4;->e:Z

    iput-object p5, p0, Lil4;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Lil4;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p7, p0, Lil4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p8, p0, Lil4;->i:Lnl3;

    iput p9, p0, Lil4;->j:I

    iput p10, p0, Lil4;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lil4;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lil4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lil4;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v3, p0, Lil4;->e:Z

    iget-object v4, p0, Lil4;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v5, p0, Lil4;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v6, p0, Lil4;->h:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v7, p0, Lil4;->i:Lnl3;

    iget v8, p0, Lil4;->j:I

    iget v9, p0, Lil4;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
