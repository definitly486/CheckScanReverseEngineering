.class public final synthetic Lx52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lxl3;
.implements Lcom/my/target/c1$a;
.implements Lyads/jq2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lx52;->b:I

    iput-object p1, p0, Lx52;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/iq2;)V
    .locals 0

    iget-object p0, p0, Lx52;->c:Ljava/lang/Object;

    check-cast p0, Lyads/eq2;

    invoke-virtual {p0, p1}, Lyads/eq2;->b(Lyads/iq2;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx52;->c:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk78;

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lx52;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/bg;

    sget v0, Lcom/my/target/bg;->z:I

    iput-object p1, p0, Lcom/my/target/bg;->x:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lx52;->b:I

    iget-object p0, p0, Lx52;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->S(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->f0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx52;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->f(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
