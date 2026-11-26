.class final Landroidx/compose/ui/viewinterop/BringIntoViewElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/viewinterop/BringIntoViewNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final onRequesterReady:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->create()Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/viewinterop/BringIntoViewNode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/ui/viewinterop/BringIntoViewNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    iget-object p1, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

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

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "requestRectangleBringIntoViewBridge"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->update(Landroidx/compose/ui/viewinterop/BringIntoViewNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/viewinterop/BringIntoViewNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->update(Lnl3;)V

    return-void
.end method
