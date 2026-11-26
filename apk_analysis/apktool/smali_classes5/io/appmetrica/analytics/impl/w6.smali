.class public final Lio/appmetrica/analytics/impl/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/fb;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x6;

.field public final b:Lio/appmetrica/analytics/impl/Mh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/w6;->a:Lio/appmetrica/analytics/impl/x6;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/x6;->a()Lio/appmetrica/analytics/impl/Mh;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/w6;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 6

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/w6;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/O8;->b:Lio/appmetrica/analytics/impl/Kl;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/O8;->a:Lio/appmetrica/analytics/impl/Sc;

    if-eqz v3, :cond_2

    iget-object v5, v4, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getKeyTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getValueTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {v4, v3, v2, v0}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v4, v3, v2, v0}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v1

    goto :goto_0

    :goto_3
    monitor-exit v1

    throw p0

    :cond_4
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/co;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lio/appmetrica/analytics/impl/w6;->a:Lio/appmetrica/analytics/impl/x6;

    .line 109
    iget-object v0, v0, Lio/appmetrica/analytics/impl/x6;->a:Lio/appmetrica/analytics/impl/Ei;

    .line 110
    iget-object p0, p0, Lio/appmetrica/analytics/impl/w6;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 111
    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/Ch;

    move-result-object p0

    .line 112
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    .line 113
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ei;->e:Lio/appmetrica/analytics/impl/fm;

    if-eqz v2, :cond_0

    .line 114
    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 115
    check-cast v2, Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Gi;->b(Lio/appmetrica/analytics/impl/Ch;)V

    .line 118
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
