.class public final synthetic Lug8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/IntSize;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/IntSize;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug8;->b:Landroidx/compose/ui/unit/IntSize;

    iput-boolean p2, p0, Lug8;->c:Z

    iput-boolean p3, p0, Lug8;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lug8;->d:Z

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;

    iget-object v1, p0, Lug8;->b:Landroidx/compose/ui/unit/IntSize;

    iget-boolean p0, p0, Lug8;->c:Z

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SwipeToDismissBoxKt;->b(Landroidx/compose/ui/unit/IntSize;ZZLandroidx/compose/foundation/gestures/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method
