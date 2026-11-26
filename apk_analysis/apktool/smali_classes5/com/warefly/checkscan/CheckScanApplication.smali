.class public Lcom/warefly/checkscan/CheckScanApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraXConfig$Provider;
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/CheckScanApplication$a;
    }
.end annotation


# static fields
.field public static c:Landroid/content/Context;

.field public static d:Ljava/lang/String;


# instance fields
.field public final b:Lni0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    new-instance v0, Lni0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lni0;-><init>(I)V

    iput-object v0, p0, Lcom/warefly/checkscan/CheckScanApplication;->b:Lni0;

    return-void
.end method


# virtual methods
.method public final getCameraXConfig()Landroidx/camera/core/CameraXConfig;
    .locals 0

    sget-object p0, Landroidx/camera/camera2/Camera2Config;->Companion:Landroidx/camera/camera2/Camera2Config$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/Camera2Config$Companion;->defaultConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 3

    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Configuration;->getInitializationExceptionHandler()Landroidx/core/util/Consumer;

    const-string v1, "WorkManagerImpl"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    new-instance v2, Landroidx/work/Configuration$Builder;

    invoke-direct {v2}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v2}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroidx/work/WorkManager$Companion;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "app_conscrypt"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/warefly/checkscan/component/logger/CrashlyticsException$Conscrypt;

    invoke-static {v2}, Li13;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Conscrypt: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/warefly/checkscan/component/logger/CrashlyticsException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ls0;->d(Lcom/warefly/checkscan/component/logger/CrashlyticsException;)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/warefly/checkscan/CheckScanApplication;->d:Ljava/lang/String;

    const-string v0, "app_koin"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_2
    new-instance v2, Lcom/warefly/checkscan/CheckScanApplication$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/CheckScanApplication$b;-><init>(Lcom/warefly/checkscan/CheckScanApplication;)V

    invoke-static {v2}, Lm00;->f(Lcom/warefly/checkscan/CheckScanApplication$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "app_moxy"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_3
    invoke-static {}, Lhh5;->a()Lhh5;

    sget-object v2, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    sget-object v0, Lcom/warefly/checkscan/CheckScanApplication$c;->f:Lcom/warefly/checkscan/CheckScanApplication$c;

    new-instance v2, Lbe0;

    invoke-direct {v2, v0, v1}, Lbe0;-><init>(Lnl3;I)V

    sput-object v2, Ld97;->a:Lbe0;

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    const-string v0, "app_firebase"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_4
    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "app_prefs_first_read"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_5
    sget-object v1, Lqr7;->o0:Lqr7$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lqr7;->q0:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqr7;

    invoke-virtual {v1}, Lqr7;->Y()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "app_analytics_init"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_6
    sget-object v2, Lgd;->a:Lgd$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lna1;

    invoke-direct {v4, p0}, Lna1;-><init>(Lcom/warefly/checkscan/CheckScanApplication;)V

    sget-object v5, Lgd;->b:Lhd;

    if-nez v5, :cond_1

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    sget-object v5, Lgd;->b:Lhd;

    if-nez v5, :cond_0

    new-instance v5, Lhd;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sput-object v5, Lgd;->b:Lhd;

    sput-object v3, Lgd;->c:Landroid/content/Context;

    sput-boolean v1, Lgd;->d:Z

    sput-object v4, Lgd;->e:Lna1;

    invoke-virtual {v5}, Lhd;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    :try_start_8
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_1
    :goto_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "app_unity_offerwall_interrupted"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_9
    instance-of v1, p0, Ljg4;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljg4;

    invoke-interface {v1}, Ljg4;->b()Lhg4;

    move-result-object v1

    goto :goto_4

    :cond_2
    sget-object v1, Lc;->d:Lhg4;

    if-eqz v1, :cond_4

    :goto_4
    iget-object v1, v1, Lhg4;->c:Lbf7;

    iget-object v1, v1, Lbf7;->d:Lze7;

    const-class v2, Lr59;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr59;

    iget-object v1, v1, Lr59;->a:Ljf6;

    invoke-interface {v1}, Ljf6;->u()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljf6;->G(Z)V

    new-instance v1, Lkd$t0$c;

    const-string v2, "SDK"

    const-string v3, "Interrupted"

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Unity Offerwall"

    invoke-direct {v1, v3, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_5
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    const-string v0, "app_ads_init"

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :try_start_a
    invoke-static {p0}, Lrh5;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/warefly/checkscan/CheckScanApplication;->b:Lni0;

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/common/YandexAds;->initialize(Landroid/content/Context;Lcom/yandex/mobile/ads/common/InitializationListener;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_4
    :try_start_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "KoinApplication has not been started"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_6
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_4
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_5
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_6
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_7
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_8
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0

    :catchall_9
    move-exception p0

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p0
.end method
