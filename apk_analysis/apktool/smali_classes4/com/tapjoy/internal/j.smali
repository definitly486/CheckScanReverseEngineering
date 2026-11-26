.class public abstract Lcom/tapjoy/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/tapjoy/internal/AppUsageForegroundService;->b:Z

    if-eqz v0, :cond_0

    .line 98
    const-string p0, "AppUsageForegroundService already running"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 100
    const-class v1, Lcom/tapjoy/internal/AppUsageForegroundService;

    .line 101
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to start AppUsageForegroundService: "

    .line 104
    invoke-static {v0, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 3

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    const-string p2, "appops"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Landroid/app/AppOpsManager;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:get_usage_stats"

    invoke-virtual {p2, v2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    const-string p0, "AppUsage permission not granted, skipping service management"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/tapjoy/internal/AppUsageForegroundService;->b:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tapjoy/internal/AppUsageForegroundService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ACTION"

    const-string v0, "UPDATE_CONFIGS"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_5
    invoke-static {p0}, Lcom/tapjoy/internal/j;->a(Landroid/content/Context;)V

    return-void

    :cond_6
    invoke-static {p0}, Lcom/tapjoy/internal/j;->b(Landroid/content/Context;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/tapjoy/internal/AppUsageForegroundService;->b:Z

    if-nez v0, :cond_0

    const-string p0, "AppUsageForegroundService not running"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/internal/AppUsageForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to stop AppUsageForegroundService: "

    invoke-static {v0, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
