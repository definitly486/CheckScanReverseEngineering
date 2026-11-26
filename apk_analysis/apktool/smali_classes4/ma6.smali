.class public final synthetic Lma6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb6;


# instance fields
.field public final synthetic a:Loa6;


# direct methods
.method public synthetic constructor <init>(Loa6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma6;->a:Loa6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lma6;->a:Loa6;

    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lae6;->f:Lta6;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lnb6;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_10

    iget-object v0, p0, Loa6;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Loa6;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_3
    :goto_2
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Loa6;->x:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    :goto_3
    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lad6;->k()V

    iget-object v2, v0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lad6;->y:Ljava/util/Map;

    if-eqz v3, :cond_5

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :cond_5
    move-object v3, v1

    :goto_4
    instance-of v4, v3, Lcom/posthog/internal/FeatureFlag;

    if-eqz v4, :cond_6

    check-cast v3, Lcom/posthog/internal/FeatureFlag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    monitor-exit v2

    invoke-virtual {v0}, Lad6;->k()V

    iget-object v2, v0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v4, v0, Lad6;->z:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v2

    invoke-virtual {v0}, Lad6;->f()Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "$feature_flag"

    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "$feature_flag_response"

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_8

    const-string p1, "$feature_flag_request_id"

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "$feature_flag_evaluated_at"

    invoke-interface {v6, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v3, :cond_c

    const-string p1, "$feature_flag_id"

    invoke-virtual {v3}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/posthog/internal/FeatureFlagMetadata;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "$feature_flag_version"

    invoke-virtual {v3}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/posthog/internal/FeatureFlagMetadata;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "$feature_flag_reason"

    invoke-virtual {v3}, Lcom/posthog/internal/FeatureFlag;->getReason()Lcom/posthog/internal/EvaluationReason;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/posthog/internal/EvaluationReason;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    const-string v2, ""

    :cond_b
    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/posthog/internal/FeatureFlagMetadata;->getHasExperiment()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v2, "$feature_flag_has_experiment"

    invoke-interface {v6, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object p1, v0, Lad6;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v2, v0, Lad6;->u:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_d

    monitor-exit p1

    move-object v3, v1

    goto :goto_6

    :cond_d
    :try_start_4
    new-instance v3, Lad6$a;

    iget-object v4, v0, Lad6;->v:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, v0, Lad6;->D:Z

    xor-int/2addr v0, v5

    invoke-direct {v3, v2, p2, v0}, Lad6$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p1

    :goto_6
    if-eqz v3, :cond_f

    const-string p1, "$feature_flag_bootstrapped_response"

    iget-object p2, v3, Lad6$a;->a:Ljava/lang/Object;

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v3, Lad6$a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_e

    const-string p2, "$feature_flag_bootstrapped_payload"

    invoke-interface {v6, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string p1, "$used_bootstrap_value"

    iget-boolean p2, v3, Lad6$a;->c:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object p1, Lvb6;->FEATURE_FLAG_CALLED:Lvb6;

    invoke-virtual {p1}, Lvb6;->a()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7a

    invoke-static {p0, p1, v1, v6, p2}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_9

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0

    :goto_7
    monitor-exit v2

    throw p0

    :goto_8
    monitor-exit v0

    throw p0

    :cond_10
    :goto_9
    return-void
.end method
