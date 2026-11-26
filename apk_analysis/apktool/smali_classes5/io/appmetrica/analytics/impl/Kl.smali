.class public final Lio/appmetrica/analytics/impl/Kl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

.field public final b:Lio/appmetrica/analytics/impl/Pc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;Lio/appmetrica/analytics/impl/Pc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kl;->b:Lio/appmetrica/analytics/impl/Pc;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    const/16 v2, 0x32

    const/16 v3, 0xfa0

    const/16 v1, 0x1e

    move-object v5, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;-><init>(IIILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Pc;

    invoke-direct {p1, v4, v5}, Lio/appmetrica/analytics/impl/Pc;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;Lio/appmetrica/analytics/impl/Pc;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getCollectionLimitation()Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;->getMaxSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getCollectionLimitation()Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;->getMaxSize()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->logContainerLimitReached(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kl;->b:Lio/appmetrica/analytics/impl/Pc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lio/appmetrica/analytics/impl/Sc;->a:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    :goto_1
    const/16 v1, 0x1194

    if-le v0, v1, :cond_5

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kl;->b:Lio/appmetrica/analytics/impl/Pc;

    iget-object p3, p1, Lio/appmetrica/analytics/impl/Pc;->b:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Pc;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored"

    invoke-virtual {p3, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_5
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Sc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
