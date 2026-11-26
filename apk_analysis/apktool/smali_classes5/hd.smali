.class public final Lhd;
.super Lgd;
.source "SourceFile"


# virtual methods
.method public final b()V
    .locals 7

    const-string p0, "analytics_onCreate"

    invoke-static {p0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_0
    const-string v0, "analytics_firebase"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lgd;->c:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v2, 0x0

    const-string v3, "appContext"

    if-eqz v1, :cond_5

    :try_start_2
    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "analytics_appmetrica"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lgd;->a()V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "analytics_posthog"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v1, Lgd;->c:Landroid/content/Context;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_3

    const v4, 0x7f1404de

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lgd;->c:Landroid/content/Context;

    if-eqz v5, :cond_2

    const v6, 0x7f1404dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lzb6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    sget-object p0, Lgd;->c:Landroid/content/Context;

    if-eqz p0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/FirebasePushServiceControllerProvider;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/provider/firebase/FirebasePushServiceControllerProvider;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lio/appmetrica/analytics/push/AppMetricaPush;->activate(Landroid/content/Context;[Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;)V

    return-void

    :cond_0
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_8
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_0
    :try_start_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw v1

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v1

    goto :goto_1

    :cond_5
    :try_start_a
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_1
    :try_start_b
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw v0
.end method
