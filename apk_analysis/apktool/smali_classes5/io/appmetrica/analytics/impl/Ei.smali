.class public final Lio/appmetrica/analytics/impl/Ei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Q4;

.field public final b:Lio/appmetrica/analytics/impl/eo;

.field public final c:Lio/appmetrica/analytics/impl/Gi;

.field public final d:Lio/appmetrica/analytics/impl/s0;

.field public e:Lio/appmetrica/analytics/impl/fm;

.field public final f:Lio/appmetrica/analytics/impl/ok;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/eo;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/ok;)V
    .locals 6

    new-instance v5, Lio/appmetrica/analytics/impl/Gi;

    invoke-direct {v5, p1, p4}, Lio/appmetrica/analytics/impl/Gi;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/ok;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Ei;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/eo;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/ok;Lio/appmetrica/analytics/impl/Gi;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/eo;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/ok;Lio/appmetrica/analytics/impl/Gi;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    .line 16
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 17
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ei;->b:Lio/appmetrica/analytics/impl/eo;

    .line 18
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Ei;->f:Lio/appmetrica/analytics/impl/ok;

    .line 19
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;
    .locals 2

    .line 143
    iget v0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 144
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Mh;->d()Ljava/lang/String;

    move-result-object p1

    .line 146
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/Ch;
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->c()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->b:Lio/appmetrica/analytics/impl/eo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/co;->a:Lio/appmetrica/analytics/impl/Un;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Un;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/eo;->a:Lio/appmetrica/analytics/impl/zb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/zb;->a(Lio/appmetrica/analytics/impl/co;)[B

    move-result-object p0

    iget-object p1, p2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    new-instance v3, Lio/appmetrica/analytics/impl/a4;

    const/16 v1, 0x1703

    invoke-direct {v3, p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/Mh;->d()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iget-object v6, v3, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    new-instance v2, Lio/appmetrica/analytics/impl/Ch;

    new-instance v7, Lio/appmetrica/analytics/impl/Mh;

    new-instance p0, Lio/appmetrica/analytics/impl/Pf;

    iget-object p1, p2, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance p1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v0, p2, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-direct {v7, p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ch;)V
    .locals 2

    .line 165
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    .line 166
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ei;->e:Lio/appmetrica/analytics/impl/fm;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 168
    check-cast v1, Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gi;->a(Lio/appmetrica/analytics/impl/Ch;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V
    .locals 6

    .line 120
    sget-object v0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    .line 121
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->c()V

    .line 122
    invoke-static {p4}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-static {p4}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    .line 124
    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    .line 125
    invoke-static {p4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    .line 128
    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/Ch;

    .line 129
    new-instance v5, Lio/appmetrica/analytics/impl/Mh;

    .line 130
    new-instance p4, Lio/appmetrica/analytics/impl/Pf;

    .line 131
    iget-object v1, p2, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    .line 132
    invoke-direct {p4, v1}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    .line 133
    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 134
    iget-object v2, p2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 135
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 136
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    .line 137
    monitor-enter p2

    .line 138
    :try_start_0
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 139
    invoke-direct {v5, p4, v1, v2, v3}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p3

    .line 140
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    .line 141
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 142
    monitor-exit p2

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/em;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->e:Lio/appmetrica/analytics/impl/fm;

    .line 100
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 101
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 102
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 103
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 105
    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setLocationTracking(Z)V

    .line 107
    :cond_0
    invoke-static {p2}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 109
    iget-object p1, p1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 110
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setDataSendingEnabled(Z)V

    .line 111
    :cond_1
    invoke-static {p3}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 113
    iget-object p1, p1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 114
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 115
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 116
    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setAdvIdentifiersTracking(ZZ)V

    .line 117
    :cond_2
    invoke-static {}, Lio/appmetrica/analytics/impl/a6;->a()Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object p2, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 118
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 119
    invoke-virtual {p0, p1, p2, p4, p3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 160
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 161
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2

    .line 155
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 156
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 159
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .line 147
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 148
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CUSTOM_HOSTS"

    .line 151
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
