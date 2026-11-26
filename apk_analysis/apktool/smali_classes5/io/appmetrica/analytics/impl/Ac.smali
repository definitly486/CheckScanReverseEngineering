.class public final Lio/appmetrica/analytics/impl/Ac;
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Ac;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Bc;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Bc;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/impl/Cc;

    iget-object v0, p3, Lio/appmetrica/analytics/impl/d4;->b:Ljava/lang/String;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/d4;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lio/appmetrica/analytics/impl/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lio/appmetrica/analytics/impl/Fg;

    new-instance v0, Lio/appmetrica/analytics/impl/Ec;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ec;-><init>()V

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/Fg;-><init>(Lio/appmetrica/analytics/impl/j5;)V

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/o5;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p4, p3, v0}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/a8;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Ua;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Eg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lio/appmetrica/analytics/impl/Bc;

    invoke-direct {p2, p1, p0}, Lio/appmetrica/analytics/impl/Bc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Eg;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
