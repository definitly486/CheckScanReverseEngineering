.class public final Lio/appmetrica/analytics/impl/om;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ma;

.field public final b:Lio/appmetrica/analytics/impl/ja;

.field public final c:Lio/appmetrica/analytics/impl/Oi;

.field public final d:Lio/appmetrica/analytics/impl/Je;

.field public final e:Lio/appmetrica/analytics/impl/Xm;

.field public final f:Lio/appmetrica/analytics/impl/t3;

.field public final g:Lio/appmetrica/analytics/impl/D2;

.field public final h:Lio/appmetrica/analytics/impl/vb;

.field public final i:Lio/appmetrica/analytics/impl/Um;

.field public final j:Lio/appmetrica/analytics/impl/Dd;

.field public final k:Lio/appmetrica/analytics/impl/Q9;


# direct methods
.method public constructor <init>()V
    .locals 12

    new-instance v1, Lio/appmetrica/analytics/impl/vb;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/vb;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Ma;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Ma;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/ja;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/ja;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/Oi;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Oi;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/Je;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Je;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/Xm;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Xm;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/t3;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/t3;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/D2;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/D2;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/Um;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/Um;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/Dd;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/Dd;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/Q9;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/Q9;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/appmetrica/analytics/impl/om;-><init>(Lio/appmetrica/analytics/impl/vb;Lio/appmetrica/analytics/impl/Ma;Lio/appmetrica/analytics/impl/ja;Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/Je;Lio/appmetrica/analytics/impl/Xm;Lio/appmetrica/analytics/impl/t3;Lio/appmetrica/analytics/impl/D2;Lio/appmetrica/analytics/impl/Um;Lio/appmetrica/analytics/impl/Dd;Lio/appmetrica/analytics/impl/Q9;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/vb;Lio/appmetrica/analytics/impl/Ma;Lio/appmetrica/analytics/impl/ja;Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/Je;Lio/appmetrica/analytics/impl/Xm;Lio/appmetrica/analytics/impl/t3;Lio/appmetrica/analytics/impl/D2;Lio/appmetrica/analytics/impl/Um;Lio/appmetrica/analytics/impl/Dd;Lio/appmetrica/analytics/impl/Q9;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lio/appmetrica/analytics/impl/om;->a:Lio/appmetrica/analytics/impl/Ma;

    .line 62
    iput-object p3, p0, Lio/appmetrica/analytics/impl/om;->b:Lio/appmetrica/analytics/impl/ja;

    .line 63
    iput-object p4, p0, Lio/appmetrica/analytics/impl/om;->c:Lio/appmetrica/analytics/impl/Oi;

    .line 64
    iput-object p5, p0, Lio/appmetrica/analytics/impl/om;->d:Lio/appmetrica/analytics/impl/Je;

    .line 65
    iput-object p6, p0, Lio/appmetrica/analytics/impl/om;->e:Lio/appmetrica/analytics/impl/Xm;

    .line 66
    iput-object p7, p0, Lio/appmetrica/analytics/impl/om;->f:Lio/appmetrica/analytics/impl/t3;

    .line 67
    iput-object p8, p0, Lio/appmetrica/analytics/impl/om;->g:Lio/appmetrica/analytics/impl/D2;

    .line 68
    iput-object p1, p0, Lio/appmetrica/analytics/impl/om;->h:Lio/appmetrica/analytics/impl/vb;

    .line 69
    iput-object p9, p0, Lio/appmetrica/analytics/impl/om;->i:Lio/appmetrica/analytics/impl/Um;

    .line 70
    iput-object p10, p0, Lio/appmetrica/analytics/impl/om;->j:Lio/appmetrica/analytics/impl/Dd;

    .line 71
    iput-object p11, p0, Lio/appmetrica/analytics/impl/om;->k:Lio/appmetrica/analytics/impl/Q9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/tb;)V
    .locals 11

    const-string v0, "urls"

    const-string v1, "permissions_collecting"

    const-string v2, "queries"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "list"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "host"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "url"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->g:Ljava/lang/String;

    :cond_0
    const-string v2, "distribution_customization"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    check-cast v5, Lorg/json/JSONObject;

    const-string v2, "clids"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "value"

    if-eqz v2, :cond_3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->j:Ljava/lang/String;

    :cond_3
    const-string v2, "locale"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v2, :cond_4

    const-string v8, "country"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v8, "reliable"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v7

    :goto_1
    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->m:Ljava/lang/String;

    const-string v2, "time"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_1
    const-string v5, "max_valid_difference_seconds"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->l:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    new-instance v2, Lio/appmetrica/analytics/impl/Lm;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Lm;-><init>()V

    const-string v5, "stat_sending"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-wide v8, v2, Lio/appmetrica/analytics/impl/Lm;->a:J

    const-string v10, "disabled_reporting_interval_seconds"

    invoke-static {v5, v10, v8, v9}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v2, Lio/appmetrica/analytics/impl/Lm;->a:J

    :cond_6
    iget-object v5, p0, Lio/appmetrica/analytics/impl/om;->e:Lio/appmetrica/analytics/impl/Xm;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lio/appmetrica/analytics/impl/Wm;

    iget-wide v8, v2, Lio/appmetrica/analytics/impl/Lm;->a:J

    invoke-direct {v5, v8, v9}, Lio/appmetrica/analytics/impl/Wm;-><init>(J)V

    iput-object v5, p1, Lio/appmetrica/analytics/impl/tm;->p:Lio/appmetrica/analytics/impl/Wm;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/om;->b:Lio/appmetrica/analytics/impl/ja;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Hm;-><init>()V

    :try_start_2
    const-string v5, "features"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v8, Lio/appmetrica/analytics/impl/x4;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/x4;-><init>()V

    iget-boolean v9, v2, Lio/appmetrica/analytics/impl/Hm;->a:Z

    invoke-static {v5, v1, v9}, Lio/appmetrica/analytics/impl/ja;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lio/appmetrica/analytics/impl/x4;->a:Z

    const-string v9, "features_collecting"

    iget-boolean v10, v2, Lio/appmetrica/analytics/impl/Hm;->b:Z

    invoke-static {v5, v9, v10}, Lio/appmetrica/analytics/impl/ja;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lio/appmetrica/analytics/impl/x4;->b:Z

    const-string v9, "google_aid"

    iget-boolean v10, v2, Lio/appmetrica/analytics/impl/Hm;->c:Z

    invoke-static {v5, v9, v10}, Lio/appmetrica/analytics/impl/ja;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lio/appmetrica/analytics/impl/x4;->c:Z

    const-string v9, "sim_info"

    iget-boolean v10, v2, Lio/appmetrica/analytics/impl/Hm;->d:Z

    invoke-static {v5, v9, v10}, Lio/appmetrica/analytics/impl/ja;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lio/appmetrica/analytics/impl/x4;->d:Z

    const-string v9, "huawei_oaid"

    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Hm;->e:Z

    invoke-static {v5, v9, v2}, Lio/appmetrica/analytics/impl/ja;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v8, Lio/appmetrica/analytics/impl/x4;->e:Z

    const-string v2, "ssl_pinning"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "enabled"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    iput-object v2, v8, Lio/appmetrica/analytics/impl/x4;->f:Ljava/lang/Boolean;

    new-instance v2, Lio/appmetrica/analytics/impl/z4;

    invoke-direct {v2, v8}, Lio/appmetrica/analytics/impl/z4;-><init>(Lio/appmetrica/analytics/impl/x4;)V

    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->b:Lio/appmetrica/analytics/impl/z4;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_8
    iget-object v2, p0, Lio/appmetrica/analytics/impl/om;->a:Lio/appmetrica/analytics/impl/Ma;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    const-string v2, "query_hosts"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :try_start_7
    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v4, "get_ad"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-object v4, v7

    :goto_3
    :try_start_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iput-object v4, p1, Lio/appmetrica/analytics/impl/tm;->d:Ljava/lang/String;

    :cond_9
    const-string v4, "report"

    invoke-static {v2, v4}, Lio/appmetrica/analytics/impl/Ma;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_a

    iput-object v4, p1, Lio/appmetrica/analytics/impl/tm;->e:Ljava/util/List;

    :cond_a
    const-string v4, "report_ad"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    :try_start_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-object v7, p1, Lio/appmetrica/analytics/impl/tm;->f:Ljava/lang/String;

    :cond_b
    const-string v0, "startup"

    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/Ma;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_c

    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->c:Ljava/util/List;

    :cond_c
    const-string v0, "diagnostic"

    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/Ma;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_d

    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->n:Ljava/util/List;

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lio/appmetrica/analytics/impl/Ma;->a:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v2, v5}, Lio/appmetrica/analytics/impl/Ma;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->o:Ljava/util/Map;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    :cond_10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->c:Lio/appmetrica/analytics/impl/Oi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    const-string v2, "retry_policy"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget v4, v0, Lio/appmetrica/analytics/impl/Mm;->w:I

    iget v5, v0, Lio/appmetrica/analytics/impl/Mm;->x:I

    if-eqz v2, :cond_11

    const-string v5, "max_interval_seconds"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iget v0, v0, Lio/appmetrica/analytics/impl/Mm;->x:I

    const-string v5, "exponential_multiplier"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    :cond_11
    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    invoke-direct {v0, v4, v5}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->q:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->d:Lio/appmetrica/analytics/impl/Je;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/tm;->b:Lio/appmetrica/analytics/impl/z4;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/z4;->a:Z

    if-eqz v0, :cond_13

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/Jm;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Jm;-><init>()V

    iget-wide v4, v1, Lio/appmetrica/analytics/impl/Jm;->a:J

    if-eqz v0, :cond_12

    const-string v2, "check_interval_seconds"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-wide v1, v1, Lio/appmetrica/analytics/impl/Jm;->b:J

    const-string v6, "force_send_interval_seconds"

    invoke-virtual {v0, v6, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_5

    :cond_12
    iget-wide v0, v1, Lio/appmetrica/analytics/impl/Jm;->b:J

    :goto_5
    new-instance v2, Lio/appmetrica/analytics/impl/He;

    invoke-direct {v2, v4, v5, v0, v1}, Lio/appmetrica/analytics/impl/He;-><init>(JJ)V

    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->k:Lio/appmetrica/analytics/impl/He;

    :cond_13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->f:Lio/appmetrica/analytics/impl/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/Em;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Em;-><init>()V

    const-string v2, "cache_control"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-wide v4, v1, Lio/appmetrica/analytics/impl/Em;->a:J

    const-string v6, "last_known_location_ttl"

    invoke-static {v2, v6, v4, v5}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lio/appmetrica/analytics/impl/Em;->a:J

    :cond_14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t3;->a:Lio/appmetrica/analytics/impl/s3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/q3;

    iget-wide v1, v1, Lio/appmetrica/analytics/impl/Em;->a:J

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/q3;-><init>(J)V

    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->r:Lio/appmetrica/analytics/impl/q3;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->g:Lio/appmetrica/analytics/impl/D2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/D2;->a(Lio/appmetrica/analytics/impl/tm;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->i:Lio/appmetrica/analytics/impl/Um;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "startup_update"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/Km;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Km;-><init>()V

    const-string v4, "interval_seconds"

    invoke-static {v1, v4, v3}, Lio/appmetrica/analytics/impl/ub;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lio/appmetrica/analytics/impl/Km;->a:I

    :cond_15
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Um;->a:Lio/appmetrica/analytics/impl/Tm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Sm;

    iget v1, v2, Lio/appmetrica/analytics/impl/Km;->a:I

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sm;-><init>(I)V

    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->t:Lio/appmetrica/analytics/impl/Sm;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/om;->j:Lio/appmetrica/analytics/impl/Dd;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Dd;->a:Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Nk;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/Cd;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/Cd;-><init>(Lio/appmetrica/analytics/impl/tb;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v1, v3}, Lio/appmetrica/analytics/impl/Cd;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_17
    iput-object v2, p1, Lio/appmetrica/analytics/impl/tm;->u:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/om;->k:Lio/appmetrica/analytics/impl/Q9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q9;->a:Lio/appmetrica/analytics/impl/P9;

    new-instance v0, Lio/appmetrica/analytics/impl/Gm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Gm;-><init>()V

    const-string v1, "external_attribution"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Gm;->a:J

    const-string v3, "collecting_interval_seconds"

    invoke-static {p2, v3, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Gm;->a:J

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/O9;

    iget-wide v0, v0, Lio/appmetrica/analytics/impl/Gm;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/O9;-><init>(J)V

    iput-object p0, p1, Lio/appmetrica/analytics/impl/tm;->v:Lio/appmetrica/analytics/impl/O9;

    return-void
.end method
