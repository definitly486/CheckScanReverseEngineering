.class public final Lio/appmetrica/analytics/impl/mm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashMap;

.field public final c:Lio/appmetrica/analytics/impl/jm;

.field public d:Ljava/util/List;

.field public e:Ljava/util/HashMap;

.field public f:J

.field public g:Z

.field public h:J

.field public final i:Lio/appmetrica/analytics/impl/if;

.field public final j:Lio/appmetrica/analytics/impl/Q;

.field public final k:Lio/appmetrica/analytics/impl/Q3;

.field public final l:Lio/appmetrica/analytics/impl/L6;

.field public final m:Lio/appmetrica/analytics/impl/ga;

.field public final n:Lio/appmetrica/analytics/impl/fa;

.field public final o:Lio/appmetrica/analytics/impl/Bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/if;)V
    .locals 9

    .line 187
    new-instance v2, Lio/appmetrica/analytics/impl/Q;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Q;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Q3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Q3;-><init>()V

    .line 188
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Hd;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/impl/L6;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/L6;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/ga;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/ga;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/fa;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/fa;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/Bo;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Bo;-><init>()V

    move-object v0, p0

    move-object v1, p2

    .line 189
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/mm;-><init>(Lio/appmetrica/analytics/impl/if;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/Q3;Lio/appmetrica/analytics/impl/Hd;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/ga;Lio/appmetrica/analytics/impl/fa;Lio/appmetrica/analytics/impl/Bo;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/if;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/Q3;Lio/appmetrica/analytics/impl/Hd;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/ga;Lio/appmetrica/analytics/impl/fa;Lio/appmetrica/analytics/impl/Bo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    new-instance v1, Lio/appmetrica/analytics/impl/jm;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/jm;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/mm;->c:Lio/appmetrica/analytics/impl/jm;

    const-string v1, "appmetrica_google_adv_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "appmetrica_huawei_oaid"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "appmetrica_yandex_adv_id"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lio/appmetrica/analytics/impl/mm;->i:Lio/appmetrica/analytics/impl/if;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/mm;->j:Lio/appmetrica/analytics/impl/Q;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/mm;->k:Lio/appmetrica/analytics/impl/Q3;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/mm;->l:Lio/appmetrica/analytics/impl/L6;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/mm;->n:Lio/appmetrica/analytics/impl/fa;

    iput-object p8, p0, Lio/appmetrica/analytics/impl/mm;->o:Lio/appmetrica/analytics/impl/Bo;

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Hd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->q()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->j()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_device_id"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->i()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_device_id_hash"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->d()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_get_ad_url"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->e()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_report_ad_url"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->o()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/mm;->b(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->l()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->m()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->r()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->h()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p5, p2}, Lio/appmetrica/analytics/impl/L6;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->k()Lio/appmetrica/analytics/impl/ia;

    move-result-object p2

    invoke-virtual {p6, p2}, Lio/appmetrica/analytics/impl/ga;->a(Lio/appmetrica/analytics/impl/ia;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->g()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/mm;->d:Ljava/util/List;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/if;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/if;->a(Z)Z

    move-result p2

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/mm;->g:Z

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/if;->b(J)J

    move-result-wide p2

    iput-wide p2, p0, Lio/appmetrica/analytics/impl/mm;->f:J

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->n()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/mm;->h:J

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->c()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 171
    iget-object p0, p0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->o:Lio/appmetrica/analytics/impl/Bo;

    iget-object v1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Bo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v0, "appmetrica_uuid"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    iget-object p0, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 163
    :goto_0
    iget-object p1, p2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 165
    :cond_3
    :goto_1
    sget-object p2, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    if-nez p0, :cond_4

    .line 166
    const-string v0, "null_uuid"

    goto :goto_2

    :cond_4
    const-string v0, "wrong_uuid"

    .line 167
    :goto_2
    const-string v1, "_on_client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "The only true uuid: "

    const-string v2, "; backup uuid: "

    .line 169
    invoke-static {v1, p0, v2, p1}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p2, v0, p0}, Lio/appmetrica/analytics/impl/ek;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 172
    iget-object v0, p2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v1, "appmetrica_clids"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 157
    invoke-static {v0}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 158
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->l:Lio/appmetrica/analytics/impl/L6;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/L6;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez v2, :cond_5

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/ga;->b:Lio/appmetrica/analytics/impl/ia;

    const-string v3, "appmetrica_lib_ssl_enabled"

    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lio/appmetrica/analytics/impl/ia;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v2, Lio/appmetrica/analytics/impl/ia;->b:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/ia;->c:Ljava/lang/String;

    new-instance v5, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-ne v3, v1, :cond_2

    const-string v1, "true"

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const-string v1, "false"

    :goto_1
    invoke-direct {v5, v1, v4, v2}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    const-string v1, "appmetrica_clids"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/mm;->g:Z

    if-nez v0, :cond_6

    invoke-static {v2}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_6
    monitor-exit p0

    return v3

    :cond_7
    :try_start_1
    const-string v1, "appmetrica_lib_ssl_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    if-nez v2, :cond_0

    monitor-exit p0

    return v3

    :cond_8
    if-eqz v2, :cond_9

    :try_start_2
    iget-object v0, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :cond_9
    monitor-exit p0

    return v3

    :cond_a
    monitor-exit p0

    return v1

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)Z
    .locals 8

    monitor-enter p0

    .line 174
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/sm;->a:Ljava/util/Set;

    invoke-static {p1, v0}, Lqn1;->X(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/Collection;)Z

    move-result v0

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mm;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move p1, v2

    .line 178
    :goto_0
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/mm;->h:J

    .line 179
    sget-object v1, Lio/appmetrica/analytics/impl/sm;->b:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    if-nez v1, :cond_3

    .line 180
    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/mm;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    monitor-exit p0

    return v2

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 1

    .line 30
    invoke-static {p1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v0, "appmetrica_clids"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "appmetrica_clids"

    const-string v1, "appmetrica_device_id_hash"

    const-string v2, "appmetrica_device_id"

    const-string v3, "appmetrica_get_ad_url"

    const-string v4, "appmetrica_report_ad_url"

    const-string v5, "appmetrica_uuid"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->i:Lio/appmetrica/analytics/impl/if;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_uuid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->i(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_device_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->e(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_device_id_hash"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->d(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_get_ad_url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_report_ad_url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->b(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/mm;->f:J

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/if;->e(J)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_clids"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->h(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->e:Ljava/util/HashMap;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_google_adv_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->f(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_huawei_oaid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->g(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_yandex_adv_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->j(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/mm;->g:Z

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->b(Z)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->l:Lio/appmetrica/analytics/impl/L6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/L6;->d:Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->c(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/mm;->h:J

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/if;->d(J)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->m:Lio/appmetrica/analytics/impl/ga;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ga;->b:Lio/appmetrica/analytics/impl/ia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/if;->a(Lio/appmetrica/analytics/impl/ia;)Lio/appmetrica/analytics/impl/if;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
