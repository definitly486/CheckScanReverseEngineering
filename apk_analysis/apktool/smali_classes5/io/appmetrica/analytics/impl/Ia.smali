.class public final Lio/appmetrica/analytics/impl/Ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ia;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    const-string p1, "google"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ia;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ia;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 3

    const-string v0, "com.android.installreferrer.api.InstallReferrerClient"

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Ha;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ha;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ia;->a:Landroid/content/Context;

    :try_start_0
    invoke-static {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p0

    new-instance v1, Lio/appmetrica/analytics/impl/Ga;

    invoke-direct {v1, v0, p0, p1}, Lio/appmetrica/analytics/impl/Ga;-><init>(Lio/appmetrica/analytics/impl/Ha;Lcom/android/installreferrer/api/InstallReferrerClient;Lio/appmetrica/analytics/impl/qg;)V

    invoke-virtual {p0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/Cj;

    const-string v2, "Failed to get referrer from Google Play referrer library"

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    invoke-direct {v0, v2, p0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/wg;

    const-string v0, "Google Play Install Referrer library is not detected"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method
