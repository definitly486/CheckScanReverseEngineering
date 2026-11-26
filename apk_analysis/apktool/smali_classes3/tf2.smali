.class public final synthetic Ltf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;
.implements Lw08;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ltf2;->b:Ljava/lang/Object;

    iput-object p2, p0, Ltf2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Loz7$a;)V
    .locals 3

    iget-object v0, p0, Ltf2;->b:Ljava/lang/Object;

    check-cast v0, Lo22;

    iget-object p0, p0, Ltf2;->c:Ljava/lang/Object;

    check-cast p0, Lbm3;

    sget-object v1, Lgx2;->b:Lgx2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object v0

    sget-object v1, Lqo2;->a:Loi2;

    if-eq v0, v1, :cond_0

    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    :cond_0
    new-instance v1, Lj97;

    invoke-direct {v1, v0, p1}, Lj97;-><init>(Lo22;Loz7$a;)V

    new-instance v0, Lx87;

    invoke-direct {v0, v1}, Lx87;-><init>(La0;)V

    new-instance v2, Lf31;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    sget-object p1, Lc32;->DEFAULT:Lc32;

    invoke-virtual {v1, p1, v1, p0}, La0;->m0(Lc32;La0;Lbm3;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltf2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Ltf2;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->Y(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public onTransformationInfoUpdate(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 1

    iget-object v0, p0, Ltf2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object p0, p0, Ltf2;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    invoke-static {v0, p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->f(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
