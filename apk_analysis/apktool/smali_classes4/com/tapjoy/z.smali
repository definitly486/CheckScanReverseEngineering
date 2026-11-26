.class public final Lcom/tapjoy/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isDidIncrementCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementCacheCount()V

    iget-object v0, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setDidIncrementCache(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isDidIncrementPreRender()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementPreRenderCount()V

    iget-object p0, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setDidIncrementPreRender(Z)V

    :cond_1
    return-void
.end method

.method public final onContentReady()V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->a()V

    return-void
.end method
