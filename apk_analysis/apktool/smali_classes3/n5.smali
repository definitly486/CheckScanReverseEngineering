.class public final synthetic Ln5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Lcom/my/target/m1$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/m2;Lxda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln5;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 6
    iput-object p1, p0, Ln5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Ln5;->b:Ljava/lang/Object;

    check-cast p0, Lxda;

    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln5;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln5;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->b0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Ln5;->b:Ljava/lang/Object;

    check-cast p0, Lbm3;

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentKt;->a(Lbm3;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
