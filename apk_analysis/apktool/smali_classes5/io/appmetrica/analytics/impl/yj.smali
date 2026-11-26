.class public final Lio/appmetrica/analytics/impl/yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/u4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/t4;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/yj;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/uj;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/uj;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/uj;

    new-instance p1, Lio/appmetrica/analytics/impl/b5;

    iget-object p4, p3, Lio/appmetrica/analytics/impl/d4;->b:Ljava/lang/String;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/d4;->a:Ljava/lang/String;

    invoke-direct {p1, p4, p3}, Lio/appmetrica/analytics/impl/b5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lio/appmetrica/analytics/impl/o5;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b5;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Eg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/impl/Eg;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
