.class public final Lh0a;
.super Ly14;
.source "SourceFile"


# instance fields
.field public volatile o:Ljava/util/HashMap;


# virtual methods
.method public final declared-synchronized U(Landroid/content/Context;)Ljava/util/Map;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lw4a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "AppSetIdDataProvider: You must not call collectData method from main thread"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lh0a;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lh0a;->o:Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lh0a;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ln6a;->a(Landroid/content/Context;)Ln6a;

    move-result-object v0

    const-string v2, "asid"

    invoke-virtual {v0, v2}, Ln6a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "asis"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, -0x1

    :try_start_3
    iget-object v5, v0, Ln6a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PrefsCache exception - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly14;->t(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lh0a;->o:Ljava/util/HashMap;

    const-string v6, "asid"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lh0a;->o:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "asis"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v4, Lw4a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lg0a;

    invoke-direct {v5, p0, v3, v0, v2}, Lg0a;-><init>(Lh0a;ILn6a;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    :try_start_6
    const-string p1, "AppSetIdDataProvider: error occurred while trying to access app set id info"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lh0a;->o:Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method
