.class public final Lio/appmetrica/analytics/impl/Yl;
.super Lio/appmetrica/analytics/impl/z5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qm;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/pm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/z5;-><init>(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/pm;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->c()Lio/appmetrica/analytics/impl/vm;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->v()Lio/appmetrica/analytics/impl/sj;

    move-result-object v2

    sget-object v3, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Fa;->s()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v3

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->b()Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/pm;->b(Lio/appmetrica/analytics/impl/pm;)Lio/appmetrica/analytics/impl/pm;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/W5;-><init>(Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/z5;->a(Lio/appmetrica/analytics/impl/W5;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Yl;->a(Lio/appmetrica/analytics/impl/pm;)V

    return-void
.end method
