.class public final Lio/appmetrica/analytics/push/impl/J0;
.super Lio/appmetrica/analytics/push/impl/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/location/LocationManager;

.field public final synthetic c:Lio/appmetrica/analytics/push/location/LocationVerifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lio/appmetrica/analytics/push/impl/L0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/L0;Landroid/location/LocationManager;Lio/appmetrica/analytics/push/location/LocationVerifier;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/J0;->e:Lio/appmetrica/analytics/push/impl/L0;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/J0;->b:Landroid/location/LocationManager;

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/J0;->c:Lio/appmetrica/analytics/push/location/LocationVerifier;

    iput-object p4, p0, Lio/appmetrica/analytics/push/impl/J0;->d:Ljava/lang/String;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/l2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/J0;->e:Lio/appmetrica/analytics/push/impl/L0;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/J0;->b:Landroid/location/LocationManager;

    iget-object v2, v0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/J0;->e:Lio/appmetrica/analytics/push/impl/L0;

    new-instance v6, Lio/appmetrica/analytics/push/impl/K0;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/J0;->c:Lio/appmetrica/analytics/push/location/LocationVerifier;

    invoke-direct {v6, p1, v1}, Lio/appmetrica/analytics/push/impl/K0;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/appmetrica/analytics/push/location/LocationVerifier;)V

    iput-object v6, v0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/J0;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/J0;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/appmetrica/analytics/push/impl/l2;->a:Landroid/os/Looper;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
