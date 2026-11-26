.class final Landroidx/compose/ui/layout/OnFirstVisibleNode$updateViewport$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/OnFirstVisibleNode;->updateViewport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/layout/OnFirstVisibleNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/OnFirstVisibleNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnFirstVisibleNode$updateViewport$1;->this$0:Landroidx/compose/ui/layout/OnFirstVisibleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnFirstVisibleNode$updateViewport$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/layout/OnFirstVisibleNode$updateViewport$1;->this$0:Landroidx/compose/ui/layout/OnFirstVisibleNode;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnFirstVisibleNode;->getViewportBounds()Landroidx/compose/ui/layout/LayoutBoundsHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutBoundsHolder;->getBounds()Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/OnFirstVisibleNode;->setLastViewport(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V

    return-void
.end method
