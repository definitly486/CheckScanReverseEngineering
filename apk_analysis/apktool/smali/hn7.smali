.class public final synthetic Lhn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public final synthetic d:Ln07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn7;->b:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iput-object p2, p0, Lhn7;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    iput-object p3, p0, Lhn7;->d:Ln07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhn7;->d:Ln07;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v1, p0, Lhn7;->b:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iget-object p0, p0, Lhn7;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->c(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Ln07;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lj59;

    move-result-object p0

    return-object p0
.end method
