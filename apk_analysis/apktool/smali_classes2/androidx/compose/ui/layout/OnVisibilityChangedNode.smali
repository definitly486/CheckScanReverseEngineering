.class public final Landroidx/compose/ui/layout/OnVisibilityChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/UnplacedAwareModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private callback:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

.field private job:Lmb4;

.field private lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

.field private lastReportedResult:Z

.field private lastResult:Z

.field private lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

.field private minDurationMs:J

.field private minFractionVisible:F

.field private final rectChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;


# direct methods
.method public constructor <init>(JFLandroidx/compose/ui/layout/LayoutBoundsHolder;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Landroidx/compose/ui/layout/LayoutBoundsHolder;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minDurationMs:J

    iput p3, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minFractionVisible:F

    iput-object p5, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->callback:Lnl3;

    iput-object p4, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    new-instance p1, Landroidx/compose/ui/layout/OnVisibilityChangedNode$rectChanged$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode$rectChanged$1;-><init>(Landroidx/compose/ui/layout/OnVisibilityChangedNode;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->rectChanged:Lnl3;

    return-void
.end method


# virtual methods
.method public final checkVisibility(FLandroidx/compose/ui/spatial/RelativeLayoutBounds;Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V
    .locals 2

    iput-object p2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    if-nez p3, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->fractionVisibleIn(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)F

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/spatial/RelativeLayoutBounds;->fractionVisibleInWindow()F

    move-result p2

    :goto_0
    cmpl-float p1, p2, p1

    if-gtz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iget-boolean p2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    if-eq p1, p2, :cond_6

    iput-boolean p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    iget-object p2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2, p3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object p3, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    iget-boolean p2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastReportedResult:Z

    if-eq p1, p2, :cond_6

    if-eqz p1, :cond_5

    iget-wide p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minDurationMs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p1

    new-instance p2, Landroidx/compose/ui/layout/OnVisibilityChangedNode$checkVisibility$1;

    invoke-direct {p2, p0, p3}, Landroidx/compose/ui/layout/OnVisibilityChangedNode$checkVisibility$1;-><init>(Landroidx/compose/ui/layout/OnVisibilityChangedNode;Le02;)V

    const/4 v0, 0x3

    invoke-static {p1, p3, p3, p2, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->triggerCallback()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final fireExitIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    iget-boolean v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastReportedResult:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->triggerCallback()V

    :cond_1
    return-void
.end method

.method public final forceUpdate()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minFractionVisible:F

    iget-object v2, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    invoke-virtual {p0, v1, v0, v2}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->checkVisibility(FLandroidx/compose/ui/spatial/RelativeLayoutBounds;Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V

    :cond_0
    return-void
.end method

.method public final getCallback()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->callback:Lnl3;

    return-object p0
.end method

.method public final getHandle()Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-object p0
.end method

.method public final getJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    return-object p0
.end method

.method public final getLastBounds()Landroidx/compose/ui/spatial/RelativeLayoutBounds;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-object p0
.end method

.method public final getLastReportedResult()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastReportedResult:Z

    return p0
.end method

.method public final getLastResult()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    return p0
.end method

.method public final getLastViewport()Landroidx/compose/ui/spatial/RelativeLayoutBounds;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-object p0
.end method

.method public final getMinDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minDurationMs:J

    return-wide v0
.end method

.method public final getMinFractionVisible()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minFractionVisible:F

    return p0
.end method

.method public final getRectChanged()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->rectChanged:Lnl3;

    return-object p0
.end method

.method public final getViewportBounds()Landroidx/compose/ui/layout/LayoutBoundsHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    return-object p0
.end method

.method public onAttach()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    const-wide/16 v4, 0x0

    iget-object v6, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->rectChanged:Lnl3;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;->registerOnLayoutRectChanged(Landroidx/compose/ui/node/DelegatableNode;JJLnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->updateViewport()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->fireExitIfNeeded()V

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->updateViewport()V

    return-void
.end method

.method public onReset()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->fireExitIfNeeded()V

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    iput-object v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    iput-object v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-void
.end method

.method public onUnplaced()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->fireExitIfNeeded()V

    return-void
.end method

.method public final setCallback(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->callback:Lnl3;

    return-void
.end method

.method public final setHandle(Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final setJob(Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    return-void
.end method

.method public final setLastBounds(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-void
.end method

.method public final setLastReportedResult(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastReportedResult:Z

    return-void
.end method

.method public final setLastResult(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    return-void
.end method

.method public final setLastViewport(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-void
.end method

.method public final setMinDurationMs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minDurationMs:J

    return-void
.end method

.method public final setMinFractionVisible(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->minFractionVisible:F

    return-void
.end method

.method public final setViewportBounds(Landroidx/compose/ui/layout/LayoutBoundsHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->updateViewport()V

    return-void
.end method

.method public final triggerCallback()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->job:Lmb4;

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->callback:Lnl3;

    iget-boolean v1, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastResult:Z

    iput-boolean v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastReportedResult:Z

    return-void
.end method

.method public final updateViewport()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->viewportBounds:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->lastViewport:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode;->forceUpdate()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/compose/ui/layout/OnVisibilityChangedNode$updateViewport$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/OnVisibilityChangedNode$updateViewport$1;-><init>(Landroidx/compose/ui/layout/OnVisibilityChangedNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lll3;)V

    return-void
.end method
