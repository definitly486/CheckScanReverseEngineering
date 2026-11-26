.class public final Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->access$getInstance$cp()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "instance"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->access$getInstance$cp()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object p0

    if-nez p0, :cond_1

    const-class p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->access$getInstance$cp()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;-><init>(Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    invoke-static {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->access$setInstance$cp(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-static {p1}, Lio/appmetrica/analytics/network/internal/NetworkClientServiceLocator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final init(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->access$setInstance$cp(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V

    return-void
.end method
