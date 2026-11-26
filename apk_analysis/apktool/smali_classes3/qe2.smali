.class public final synthetic Lqe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lxl3;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lqe2;->b:I

    iput-object p2, p0, Lqe2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqe2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object p0, p0, Lqe2;->d:Ljava/lang/Object;

    check-cast p0, Li21;

    check-cast p1, Lj21;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->d(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Li21;Lj21;)Lqq1;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lqe2;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqe2;->c:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Lqe2;->d:Ljava/lang/Object;

    check-cast p0, Lyads/h84;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/h84;Lyads/pe;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lqe2;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lqe2;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player$Commands;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->c0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
