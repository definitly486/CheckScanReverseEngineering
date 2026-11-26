.class public Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static getInstance()Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->b:Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 30
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-static {p0, v0}, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->init(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->b:Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    if-nez v0, :cond_1

    const-class v0, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->b:Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;-><init>(Landroid/os/Bundle;)V

    sput-object v1, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->b:Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public getApplicationMetaData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->a:Landroid/os/Bundle;

    return-object p0
.end method
