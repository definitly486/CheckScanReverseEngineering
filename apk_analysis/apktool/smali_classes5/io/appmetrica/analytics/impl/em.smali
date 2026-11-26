.class public final Lio/appmetrica/analytics/impl/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/fm;


# static fields
.field public static final k:Ljava/util/Map;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lio/appmetrica/analytics/impl/Ei;

.field public final c:Lio/appmetrica/analytics/impl/mm;

.field public final d:Landroid/os/Handler;

.field public e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final f:Lio/appmetrica/analytics/impl/cm;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/WeakHashMap;

.field public i:Ljava/util/HashMap;

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/bm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/bm;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/em;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/mm;Landroid/os/Handler;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "appmetrica_report_ad_url"

    const-string v5, "appmetrica_clids"

    const-string v0, "appmetrica_uuid"

    const-string v1, "appmetrica_device_id"

    const-string v2, "appmetrica_device_id_hash"

    const-string v3, "appmetrica_get_ad_url"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/em;->j:Z

    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/em;->d:Landroid/os/Handler;

    new-instance p1, Lio/appmetrica/analytics/impl/cm;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/cm;-><init>(Lio/appmetrica/analytics/impl/em;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/cm;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 4

    .line 211
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    .line 212
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->j:Lio/appmetrica/analytics/impl/Q;

    .line 213
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    .line 214
    const-string v2, "appmetrica_google_adv_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v3, "appmetrica_huawei_oaid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v3, "appmetrica_yandex_adv_id"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 215
    new-instance v3, Lio/appmetrica/analytics/AdvIdentifiersResult;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object v0

    .line 218
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object v1

    .line 219
    invoke-static {p0}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object p0

    invoke-direct {v3, v0, v1, p0}, Lio/appmetrica/analytics/AdvIdentifiersResult;-><init>(Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;)V

    return-object v3
.end method

.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;
    .locals 5

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-eqz v3, :cond_0

    .line 198
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mm;->c:Lio/appmetrica/analytics/impl/jm;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/jm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/StartupParamsItem;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 199
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->l:Lio/appmetrica/analytics/impl/L6;

    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/L6;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 200
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/ga;->a(Ljava/util/List;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 201
    new-instance p0, Lio/appmetrica/analytics/StartupParamsCallback$Result;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/StartupParamsCallback$Result;-><init>(Ljava/util/Map;)V

    return-object p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/em;->b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/em;->a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/appmetrica/analytics/StartupParamsCallback;->onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    goto :goto_2

    :cond_0
    const-string v1, "startup_error_key_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "startup_error_key_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lio/appmetrica/analytics/impl/Zl;->b:Lio/appmetrica/analytics/impl/Zl;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lio/appmetrica/analytics/impl/Zl;->d:Lio/appmetrica/analytics/impl/Zl;

    goto :goto_0

    :cond_2
    sget-object v1, Lio/appmetrica/analytics/impl/Zl;->c:Lio/appmetrica/analytics/impl/Zl;

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_6

    iget-object p1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/mm;->a()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lio/appmetrica/analytics/impl/em;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lio/appmetrica/analytics/impl/em;->i:Ljava/util/HashMap;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Clids error. Passed clids: %s, and clids from server are empty."

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    const-string p1, "INCONSISTENT_CLIDS"

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/StartupParamsCallback$Reason;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lio/appmetrica/analytics/impl/Zl;->b:Lio/appmetrica/analytics/impl/Zl;

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    sget-object p1, Lio/appmetrica/analytics/impl/em;->k:Ljava/util/Map;

    sget-object v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->UNKNOWN:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    :cond_7
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/em;->a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lio/appmetrica/analytics/StartupParamsCallback;->onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    :goto_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/s0;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/s0;->c:Z

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/s0;->d()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    .line 204
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    .line 205
    iget-object v1, v0, Lio/appmetrica/analytics/impl/s0;->f:Ljava/lang/Object;

    .line 206
    monitor-enter v1

    const/4 v2, 0x1

    .line 207
    :try_start_0
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/s0;->c:Z

    .line 208
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->c()V

    .line 209
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 210
    :cond_0
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    invoke-static {p3}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    invoke-static {p3, v2}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    .line 185
    iput-boolean v3, v1, Lio/appmetrica/analytics/impl/mm;->g:Z

    .line 186
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/mm;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 187
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/em;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    .line 188
    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Lio/appmetrica/analytics/impl/dm;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/dm;-><init>(Lio/appmetrica/analytics/impl/em;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 190
    invoke-virtual {p0, p2, v1, p3, v3}, Lio/appmetrica/analytics/impl/em;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/O6;Ljava/util/Map;Z)V

    goto :goto_1

    .line 191
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/em;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 192
    :goto_1
    monitor-exit v0

    return-void

    .line 193
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/lang/String;)V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/util/List;Lio/appmetrica/analytics/impl/O6;Ljava/util/Map;Z)V
    .locals 6

    .line 152
    new-instance v0, Lio/appmetrica/analytics/impl/P6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p2}, Lio/appmetrica/analytics/impl/P6;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/O6;)V

    .line 153
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 155
    new-instance v1, Lio/appmetrica/analytics/impl/ib;

    invoke-direct {v1, v0, p1, p3, p4}, Lio/appmetrica/analytics/impl/ib;-><init>(Lio/appmetrica/analytics/impl/P6;Ljava/util/List;Ljava/util/Map;Z)V

    const-string p1, "io.appmetrica.analytics.impl.IdentifiersData"

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    sget-object p1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    .line 157
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v5

    .line 158
    sget-object p1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 159
    new-instance v0, Lio/appmetrica/analytics/impl/a4;

    .line 160
    const-string v1, ""

    const/4 v4, 0x0

    .line 161
    const-string v2, ""

    const/16 v3, 0x600

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 162
    iput-object p2, v0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    .line 163
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    .line 164
    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 165
    invoke-virtual {p0, p2, p1, p4, p3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Vm;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 169
    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->i:Ljava/util/HashMap;

    .line 170
    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/util/HashMap;)V

    .line 171
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/mm;->g:Z

    .line 175
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    .line 327
    const-string v1, "appmetrica_clids"

    .line 328
    iget-object v0, v0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 330
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    invoke-static {v0}, Lio/appmetrica/analytics/impl/ub;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 332
    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->i:Ljava/util/HashMap;

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "Uuid"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v1

    const-string v2, "DeviceId"

    invoke-static {v0, v2}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v2

    const-string v3, "DeviceIdHash"

    invoke-static {v0, v3}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v3

    const-string v4, "AdUrlReport"

    invoke-static {v0, v4}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    const-string v5, "AdUrlGet"

    invoke-static {v0, v5}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v5

    const-string v6, "Clids"

    invoke-static {v0, v6}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v6

    const-string v7, "RequestClids"

    invoke-static {v0, v7}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v7

    const-string v8, "GAID"

    invoke-static {v0, v8}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v8

    const-string v9, "HOAID"

    invoke-static {v0, v9}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v9

    const-string v10, "YANDEX_ADV_ID"

    invoke-static {v0, v10}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v10

    const-string v11, "CUSTOM_SDK_HOSTS"

    invoke-static {v0, v11}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v11

    const-string v12, "ServerTimeOffset"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "NextStartupTime"

    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v16, v14

    invoke-static {v0}, Lio/appmetrica/analytics/impl/g4;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/ia;

    move-result-object v14

    const-string v15, "module_configs"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v15, p0

    move-object/from16 v18, v6

    iget-object v6, v15, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    monitor-enter v6

    :try_start_0
    iget-object v15, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    move-object/from16 p1, v0

    const-string v0, "appmetrica_uuid"

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-eqz v0, :cond_0

    iget-object v15, v6, Lio/appmetrica/analytics/impl/mm;->o:Lio/appmetrica/analytics/impl/Bo;

    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Bo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->o:Lio/appmetrica/analytics/impl/Bo;

    iget-object v15, v1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lio/appmetrica/analytics/impl/Bo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v15, "appmetrica_uuid"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const-string v0, "appmetrica_device_id"

    invoke-virtual {v6, v0, v2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    const-string v0, "appmetrica_device_id_hash"

    invoke-virtual {v6, v0, v3}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v15, "appmetrica_google_adv_id"

    invoke-virtual {v0, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_huawei_oaid"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_yandex_adv_id"

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->l:Lio/appmetrica/analytics/impl/L6;

    invoke-virtual {v0, v11}, Lio/appmetrica/analytics/impl/L6;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    invoke-virtual {v0, v14}, Lio/appmetrica/analytics/impl/ga;->a(Lio/appmetrica/analytics/impl/ia;)V

    invoke-static {v5}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_get_ad_url"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v4}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v5, "appmetrica_report_ad_url"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-wide v12, v6, Lio/appmetrica/analytics/impl/mm;->f:J

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->k:Lio/appmetrica/analytics/impl/Q3;

    iget-object v4, v6, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    iget-object v5, v7, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/ub;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, v6, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v4, "appmetrica_clids"

    move-object/from16 v5, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v6, Lio/appmetrica/analytics/impl/mm;->g:Z

    :cond_5
    move-wide/from16 v4, v16

    iput-wide v4, v6, Lio/appmetrica/analytics/impl/mm;->h:J

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/mm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    iget-object v1, v1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    iget-object v2, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/p4;->m()Lio/appmetrica/analytics/impl/m4;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lio/appmetrica/analytics/impl/m4;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/em;->h()V

    return-void

    :goto_2
    monitor-exit v6

    throw v0
.end method

.method public final b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/em;->b(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->h()V

    if-eqz p2, :cond_0

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/em;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 303
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 304
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ei;->b(Ljava/lang/String;)V

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    .line 307
    iget-object v1, v1, Lio/appmetrica/analytics/impl/mm;->d:Ljava/util/List;

    .line 308
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 310
    iget-object p1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    const/4 v1, 0x0

    .line 311
    iput-object v1, p1, Lio/appmetrica/analytics/impl/mm;->d:Ljava/util/List;

    .line 312
    iget-object p1, p1, Lio/appmetrica/analytics/impl/mm;->i:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/if;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/if;

    .line 313
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 314
    :cond_0
    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    .line 316
    iput-object p1, v1, Lio/appmetrica/analytics/impl/mm;->d:Ljava/util/List;

    .line 317
    iget-object v1, v1, Lio/appmetrica/analytics/impl/mm;->i:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/if;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/if;

    .line 318
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/util/List;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/util/List;)V

    .line 320
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 321
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/O6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/cm;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    const-string v0, "appmetrica_device_id"

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/ka;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->n:Lio/appmetrica/analytics/impl/fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ga;->b:Lio/appmetrica/analytics/impl/ia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/ka;

    iget-object v0, v1, Lio/appmetrica/analytics/impl/ia;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/ka;-><init>()V

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()J
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/mm;->f:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    const-string v0, "appmetrica_uuid"

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final h()V
    .locals 5

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback;

    if-eqz v2, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v3, v2}, Lio/appmetrica/analytics/impl/em;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/em;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/mm;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/em;->j:Z

    iget-object v1, p0, Lio/appmetrica/analytics/impl/em;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/em;->a:Ljava/util/List;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/cm;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lio/appmetrica/analytics/impl/em;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/O6;Ljava/util/Map;Z)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
