.class public final synthetic Ljf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lrr5;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljf2;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljf2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxq5$a;)V
    .locals 4

    iget-object v0, p0, Ljf2;->b:Ljava/lang/Object;

    check-cast v0, Lo22;

    iget-object p0, p0, Ljf2;->c:Ljava/lang/Object;

    check-cast p0, Lcf3;

    sget-object v1, Lqo2;->b:Ld59;

    invoke-virtual {v1, v0}, Lb0;->plus(Lo22;)Lo22;

    move-result-object v0

    sget-object v1, Lc32;->ATOMIC:Lc32;

    new-instance v2, La97;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, La97;-><init>(Lcf3;Lxq5$a;Le02;)V

    sget-object p0, Lfr3;->b:Lfr3;

    invoke-static {p0, v0, v1, v2}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object p0

    new-instance v0, Lx87;

    invoke-direct {v0, p0}, Lx87;-><init>(La0;)V

    new-instance p0, Lf31;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljf2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Ljf2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->o0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
