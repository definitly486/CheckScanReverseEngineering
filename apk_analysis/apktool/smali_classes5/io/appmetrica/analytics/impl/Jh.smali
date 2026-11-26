.class public final Lio/appmetrica/analytics/impl/Jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/u4;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/j5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/j5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/j5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jh;->a:Lio/appmetrica/analytics/impl/j5;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/t4;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Jh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Dg;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Dg;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/b5;

    iget-object v1, p3, Lio/appmetrica/analytics/impl/d4;->b:Ljava/lang/String;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/d4;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Lio/appmetrica/analytics/impl/b5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lio/appmetrica/analytics/impl/Fg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jh;->a:Lio/appmetrica/analytics/impl/j5;

    invoke-direct {p3, p0}, Lio/appmetrica/analytics/impl/Fg;-><init>(Lio/appmetrica/analytics/impl/j5;)V

    monitor-enter p2

    :try_start_0
    iget-object p0, p2, Lio/appmetrica/analytics/impl/o5;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p4, p3, p0}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/a8;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Ua;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Eg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lio/appmetrica/analytics/impl/Dg;

    invoke-direct {p2, p1, p0}, Lio/appmetrica/analytics/impl/Dg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Eg;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
