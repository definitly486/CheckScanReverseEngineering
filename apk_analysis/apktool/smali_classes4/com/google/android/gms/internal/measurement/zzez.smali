.class public final Lcom/google/android/gms/internal/measurement/zzez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile j:Lcom/google/android/gms/internal/measurement/zzez;


# instance fields
.field public final a:Lcom/google/android/gms/common/util/Clock;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field public final d:Ljava/util/ArrayList;

.field public e:I

.field public f:Z

.field public final g:Ljava/lang/String;

.field public volatile h:Lcom/google/android/gms/internal/measurement/zzcp;

.field public volatile i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "FA"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzez;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck;->zza()Lcom/google/android/gms/internal/measurement/zzci;

    new-instance v9, Lf9b;

    invoke-direct {v9, p0}, Lf9b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;)V

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzez;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/zzez;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzez;->c:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzez;->d:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "google_app_id"

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzlt;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    const-class v3, Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzez;->f:Z

    const-string p0, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    :goto_0
    const-string v1, "fa"

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzez;->g:Ljava/lang/String;

    new-instance v1, Lg6b;

    invoke-direct {v1, p0, p1, p2}, Lg6b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_1

    const-string p0, "Unable to register lifecycle notifications. Application null."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Lvcb;

    invoke-direct {p2, p0}, Lvcb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzez;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->j:Lcom/google/android/gms/internal/measurement/zzez;

    if-nez v0, :cond_2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzez;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->j:Lcom/google/android/gms/internal/measurement/zzez;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzez;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzez;->j:Lcom/google/android/gms/internal/measurement/zzez;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzez;->j:Lcom/google/android/gms/internal/measurement/zzez;

    return-object p0
.end method


# virtual methods
.method public final a(Lcbb;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzez;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;ZZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->f:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->f:Z

    const-string v0, "FA"

    if-eqz p2, :cond_0

    const-string p0, "Data collection startup failed. No data will be collected."

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string v3, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x5

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzez;->zzD(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzA()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lz7b;

    invoke-direct {v1, p0, v0}, Lz7b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzB()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Le8b;

    invoke-direct {v1, p0, v0}, Le8b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzC(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v0, Li8b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Li8b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v5, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final zzD(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Lz8b;

    invoke-direct {p1, p0, p2, p3}, Lz8b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzE(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lj9b;

    invoke-direct {v1, p0, p1, v0}, Lj9b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    if-eqz p2, :cond_0

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzF(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lp9b;

    invoke-direct {v1, p0, p1, v0}, Lp9b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    const-class p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/16 p0, 0x19

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final zzG()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lu9b;

    invoke-direct {v1, p0, v0}, Lu9b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzH()Ljava/lang/Long;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lx9b;

    invoke-direct {v1, p0, v0}, Lx9b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzd(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final zzI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzez;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final zzJ(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Laab;

    invoke-direct {v1, p0, v0, p1}, Laab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 p0, 0x3a98

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    const-class p1, Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzK(Z)V
    .locals 1

    new-instance v0, Lbab;

    invoke-direct {v0, p0, p1}, Lbab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzL(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Ljab;

    invoke-direct {v0, p0, p1}, Ljab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzez;->c:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzjp;)V
    .locals 2

    new-instance v0, Ljbb;

    invoke-direct {v0, p1}, Ljbb;-><init>(Lcom/google/android/gms/measurement/internal/zzjp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcp;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzcy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "FA"

    const-string v1, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lmab;

    invoke-direct {p1, p0, v0}, Lmab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljbb;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zze(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lnab;

    invoke-direct {v0, p0, p1}, Lnab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->d:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "FA"

    const-string p1, "OnEventListener already registered."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lkbb;

    invoke-direct {v1, p1}, Lkbb;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcp;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzcy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p1, "FA"

    const-string v0, "Failed to register event listener on calling thread. Trying again on the dynamite thread."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Ltab;

    invoke-direct {p1, p0, v1}, Ltab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lkbb;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zzg(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->d:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const-string p0, "FA"

    const-string p1, "OnEventListener had not been registered."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lkbb;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcp;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzcy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string v0, "FA"

    const-string v1, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Luab;

    invoke-direct {v0, p0, p1}, Luab;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lkbb;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zzh(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    new-instance v0, Lbbb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lbbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    new-instance v0, Lbbb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lbbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V
    .locals 9

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v0, Lbbb;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lbbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6

    new-instance v0, Le4b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Le4b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzl(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Li4b;

    invoke-direct {v0, p0, p1}, Li4b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lm4b;

    invoke-direct {v0, p0, p1, p2, p3}, Lm4b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lr4b;

    invoke-direct {v1, p0, p1, p2, v0}, Lr4b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    const-class p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public final zzo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lw4b;

    invoke-direct {v0, p0, p1}, Lw4b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc5b;

    invoke-direct {v0, p0, p1, p2, p3}, Lc5b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzq(Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lh5b;

    invoke-direct {v0, p0, p1}, Lh5b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzr(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Ln5b;

    invoke-direct {v0, p0, p1}, Ln5b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzs()V
    .locals 1

    new-instance v0, Lu5b;

    invoke-direct {v0, p0}, Lu5b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzt(J)V
    .locals 1

    new-instance v0, La6b;

    invoke-direct {v0, p0, p1, p2}, La6b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lp6b;

    invoke-direct {v0, p0, p1}, Lp6b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr6b;

    invoke-direct {v0, p0, p1}, Lr6b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzw(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ld7b;

    invoke-direct {v0, p0, p1}, Ld7b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final zzx()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lj7b;

    invoke-direct {v1, p0, v0}, Lj7b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzy()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lp7b;

    invoke-direct {v1, p0, v0}, Lp7b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzz()J
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lv7b;

    invoke-direct {v1, p0, v0}, Lv7b;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcm;->zzd(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzez;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzez;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzez;->e:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
