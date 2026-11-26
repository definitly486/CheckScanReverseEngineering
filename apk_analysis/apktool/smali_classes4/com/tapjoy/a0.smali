.class public final Lcom/tapjoy/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementRequestListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJPlacement;

.field public final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iget-object p0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/tapjoy/TJAdUnit;->preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJPlacementData;->setDidIncrementPreRender(Z)V

    :cond_0
    return-void
.end method

.method public final onContentReady()V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->a()V

    return-void
.end method

.method public final onContentRequestFailure(Lcom/tapjoy/TJError;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    return-void
.end method

.method public final onContentRequestSuccess(Lcom/tapjoy/TJPlacementData;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    const-string p1, "REQUEST"

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method public final onPlacementRequestSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method
