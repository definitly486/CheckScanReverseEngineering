.class public final Lio/appmetrica/analytics/impl/Gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage$Entry;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;->get(Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/String;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;->get(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;J[B)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    invoke-interface {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;->put(Ljava/lang/String;J[B)V

    return-void
.end method

.method public final remove(J)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;->remove(J)V

    return-void
.end method

.method public final removeOlderThan(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;->removeOlderThan(Ljava/lang/String;J)V

    return-void
.end method
