.class public final synthetic Lyc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lad6;

.field public final synthetic c:Lng;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lad6;Lng;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc6;->b:Lad6;

    iput-object p2, p0, Lyc6;->c:Lng;

    iput-object p3, p0, Lyc6;->d:Ljava/lang/String;

    iput-object p4, p0, Lyc6;->e:Ljava/lang/String;

    iput-object p5, p0, Lyc6;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "Feature flags not loaded, distinctId is invalid: "

    iget-object v1, p0, Lyc6;->b:Lad6;

    iget-object v5, p0, Lyc6;->c:Lng;

    iget-object v2, p0, Lyc6;->d:Ljava/lang/String;

    iget-object v3, p0, Lyc6;->e:Ljava/lang/String;

    iget-object v4, p0, Lyc6;->f:Ljava/util/Map;

    const-string p0, "Loading remote config failed: "

    iget-object v6, v1, Lad6;->a:Lnb6;

    iget-object v6, v6, Lnb6;->F:Llc6;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Llc6;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object p0, v1, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Network isn\'t connected."

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    iget-object p0, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lad6;->n()V

    :cond_0
    return-void

    :cond_1
    iget-object v6, v1, Lad6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object p0, v1, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Remote Config is being loaded already."

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v9, 0x0

    :try_start_0
    iget-object v6, v1, Lad6;->b:Ldb6;

    invoke-virtual {v6}, Ldb6;->h()Lcom/posthog/internal/PostHogRemoteConfigResponse;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v10, v1, Lad6;->n:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getSessionRecording()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v8}, Lad6;->t(Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getSurveys()Ljava/lang/Object;

    invoke-virtual {v1}, Lad6;->d()V

    invoke-virtual {v6}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getErrorTracking()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v8}, Lad6;->s(Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getCapturePerformance()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v8}, Lad6;->r(Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getHasFeatureFlags()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_0
    if-eqz v6, :cond_5

    iget-object v6, v1, Lad6;->a:Lnb6;

    iget-boolean v6, v6, Lnb6;->c:Z

    if-eqz v6, :cond_6

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lad6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lad6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->v:Lic6;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lad6;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v8, v1, Lad6;->C:Z

    invoke-virtual {v1}, Lad6;->c()V

    invoke-virtual {v1}, Lad6;->a()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v2

    :cond_6
    :goto_1
    iget-object v0, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10

    invoke-virtual {v1}, Lad6;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    monitor-exit v10

    throw v0

    :cond_7
    iget-object v0, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lad6;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :goto_3
    iget-object p0, v1, Lad6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_4
    :try_start_7
    iget-object v2, v1, Lad6;->a:Lnb6;

    iget-object v2, v2, Lnb6;->v:Lic6;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lic6;->a(Ljava/lang/String;)V

    iget-object p0, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v1}, Lad6;->n()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_9
    :goto_5
    iget-object p0, v1, Lad6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_6
    iget-object v0, v1, Lad6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method
