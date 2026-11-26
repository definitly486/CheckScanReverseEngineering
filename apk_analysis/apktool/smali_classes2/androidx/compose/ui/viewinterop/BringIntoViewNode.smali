.class final Landroidx/compose/ui/viewinterop/BringIntoViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# instance fields
.field private onRequesterReady:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final requester:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    new-instance p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;-><init>(Landroidx/compose/ui/viewinterop/BringIntoViewNode;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->requester:Lnl3;

    return-void
.end method


# virtual methods
.method public final getOnRequesterReady()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    return-object p0
.end method

.method public final getRequester()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->requester:Lnl3;

    return-object p0
.end method

.method public onAttach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->requester:Lnl3;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setOnRequesterReady(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    return-void
.end method

.method public final update(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Lnl3;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->requester:Lnl3;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
