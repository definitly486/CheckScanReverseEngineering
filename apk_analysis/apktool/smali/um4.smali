.class public final synthetic Lum4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lum4;->b:I

    iput-object p1, p0, Lum4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lum4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lum4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lum4;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lum4;->b:I

    iget-object v1, p0, Lum4;->f:Ljava/lang/Object;

    iget-object v2, p0, Lum4;->e:Ljava/lang/Object;

    iget-object v3, p0, Lum4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lum4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lll3;

    check-cast v3, Lll3;

    check-cast v2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    invoke-static {p0, v3, v2, v1, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->g(Lll3;Lll3;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    check-cast v2, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v3, v2, v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->e(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
