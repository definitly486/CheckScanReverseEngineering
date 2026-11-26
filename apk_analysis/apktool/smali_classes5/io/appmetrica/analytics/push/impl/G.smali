.class public final Lio/appmetrica/analytics/push/impl/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/C;

.field public final b:Lio/appmetrica/analytics/push/impl/E;

.field public final c:Ljava/util/concurrent/CountDownLatch;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/C;Lio/appmetrica/analytics/push/impl/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/G;->a:Lio/appmetrica/analytics/push/impl/C;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/G;->b:Lio/appmetrica/analytics/push/impl/E;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/G;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/G;->d:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/push/impl/G;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/G;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/G;->b:Lio/appmetrica/analytics/push/impl/E;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/push/impl/E;->a(Landroid/content/Context;Landroid/os/Bundle;)J

    move-result-wide v0

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/G;->d:Landroid/os/Handler;

    new-instance v3, Lkc2;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lkc2;-><init>(Ljava/lang/Object;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/G;->a:Lio/appmetrica/analytics/push/impl/C;

    invoke-interface {v2, p1, p2}, Lio/appmetrica/analytics/push/impl/C;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/G;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0, v0, v1, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
