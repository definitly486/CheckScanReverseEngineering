.class public final Lio/appmetrica/analytics/impl/lh;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast p1, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/v5;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
