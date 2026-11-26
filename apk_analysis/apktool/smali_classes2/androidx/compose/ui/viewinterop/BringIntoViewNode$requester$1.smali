.class final Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/BringIntoViewNode;-><init>(Lnl3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/ui/geometry/Rect;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/viewinterop/BringIntoViewNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/viewinterop/BringIntoViewNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;->this$0:Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;->invoke(Landroidx/compose/ui/geometry/Rect;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/geometry/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;->this$0:Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;->this$0:Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1$1;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1;->this$0:Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1$1;-><init>(Landroidx/compose/ui/viewinterop/BringIntoViewNode;Landroidx/compose/ui/geometry/Rect;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method
