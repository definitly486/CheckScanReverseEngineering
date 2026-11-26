.class public final Lcom/google/android/gms/internal/location/zzec;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# static fields
.field public static final synthetic zze:I


# instance fields
.field public final b:Landroidx/collection/SimpleArrayMap;

.field public final c:Landroidx/collection/SimpleArrayMap;

.field public final d:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    new-instance p0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/location/zzec;->b:Landroidx/collection/SimpleArrayMap;

    new-instance p0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/location/zzec;->c:Landroidx/collection/SimpleArrayMap;

    new-instance p0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/location/zzec;->d:Landroidx/collection/SimpleArrayMap;

    new-instance p0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/Feature;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/location/zzu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/location/zzt;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzt;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, Lcom/google/android/gms/location/zzn;->zzp:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xb2c988

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object p0
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzec;->b:Landroidx/collection/SimpleArrayMap;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzec;->c:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzec;->d:Landroidx/collection/SimpleArrayMap;

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzA(Landroid/location/Location;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzh:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Lq4b;

    invoke-direct {v0, v1, p2}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzB(Landroid/location/Location;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/location/zzu;->zzA(Landroid/location/Location;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Lm5b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/location/zzu;->zzC(Lcom/google/android/gms/internal/location/zzq;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/location/DeviceOrientationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzec;->d:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm6b;

    if-nez v2, :cond_0

    new-instance v2, Lm6b;

    invoke-direct {v2}, Lcom/google/android/gms/location/zzr;-><init>()V

    iput-object p1, v2, Lm6b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v2, Lm6b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    iput-object p1, v2, Lm6b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance p1, Lcom/google/android/gms/internal/location/zzg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/location/zzg;-><init>(Lcom/google/android/gms/location/DeviceOrientationRequest;)V

    new-instance p2, Lm5b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p3, Lcom/google/android/gms/internal/location/zzi;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1, v2, p2}, Lcom/google/android/gms/internal/location/zzi;-><init>(ILcom/google/android/gms/internal/location/zzg;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/location/zzu;->zzF(Lcom/google/android/gms/internal/location/zzi;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final zzD(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzec;->d:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm6b;

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Lm6b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v2, Lm5b;

    invoke-direct {v2, v1, p2}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p2, Lcom/google/android/gms/internal/location/zzi;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, p1, v2}, Lcom/google/android/gms/internal/location/zzi;-><init>(ILcom/google/android/gms/internal/location/zzg;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/location/zzu;->zzF(Lcom/google/android/gms/internal/location/zzi;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final zzE(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzn:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Lq4b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/internal/location/zzu;->zze(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Ld4b;

    invoke-direct {v0, p3}, Ld4b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/internal/location/zzu;->zzd(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzs;)V

    return-void
.end method

.method public final zzF(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzn:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Lq4b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzg(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Ld4b;

    invoke-direct {v0, p2}, Ld4b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzf(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/internal/location/zzs;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/location/zzac;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v3, Lb5b;

    invoke-direct {v3, p2}, Lb5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzed;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/location/zzed;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzo(Lcom/google/android/gms/location/zzac;Lcom/google/android/gms/internal/location/zzed;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzu;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/location/zzu;->zzp(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v3, La5b;

    invoke-direct {v3, p2}, La5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzed;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/location/zzed;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzq(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzed;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/zzn;->zzf:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, La5b;

    invoke-direct {v0, p2}, La5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzr(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzy;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzu;->zzs()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v3, La5b;

    invoke-direct {v3, p3}, La5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzed;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/location/zzed;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzt(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/internal/location/zzed;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p0

    if-eqz p2, :cond_2

    new-instance p1, Lgma;

    invoke-direct {p1, p0}, Lgma;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/zzn;->zze:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, La5b;

    invoke-direct {v0, p3}, La5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzu(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/internal/location/zzy;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p0

    if-eqz p2, :cond_2

    new-instance p1, Lu7b;

    invoke-direct {p1, p0}, Lu7b;-><init>(Lcom/google/android/gms/common/internal/ICancelToken;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void

    :cond_1
    new-instance v0, Ll4b;

    invoke-direct {v0, p0, p3}, Ll4b;-><init>(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-static {}, Lcom/google/android/gms/internal/location/zzez;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "GetCurrentLocation"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lwta;

    invoke-direct {v2, p0, v0, p3}, Lwta;-><init>(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v3, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getPriority()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getDurationMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getGranularity()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setGranularity(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zza()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zza(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc()Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc(Landroid/os/WorkSource;)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/location/zzec;->zzt(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lo7b;

    invoke-direct {v0, p3}, Lo7b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    if-eqz p2, :cond_2

    new-instance p1, Ld8b;

    invoke-direct {p1, p0, v1}, Ld8b;-><init>(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_2
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/location/zzec;->b:Landroidx/collection/SimpleArrayMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le9b;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v6, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/location/zzdq;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    move-object v11, v6

    move-object v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Le9b;

    move-object/from16 v8, p1

    invoke-direct {v2, v8}, Le9b;-><init>(Lcom/google/android/gms/internal/location/zzdq;)V

    invoke-virtual {v5, v3, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v2

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v11, v2}, Lcom/google/android/gms/internal/location/zzed;->zza(Landroid/os/IInterface;Lcom/google/android/gms/location/zzy;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object v2

    new-instance v3, Lq4b;

    invoke-direct {v3, v7, v1}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object/from16 v13, p2

    invoke-interface {v0, v2, v13, v3}, Lcom/google/android/gms/internal/location/zzu;->zzw(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v13, p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v12, Lcom/google/android/gms/internal/location/zzef;

    const/16 v18, 0x0

    const-wide v19, 0x7fffffffffffffffL

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/internal/location/zzef;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZZZJ)V

    new-instance v14, Lt5b;

    invoke-direct {v14, v1, v11}, Lt5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Le9b;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/google/android/gms/internal/location/zzeh;

    move-object v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    :goto_2
    monitor-exit v5

    return-void

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzt(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/location/zzec;->c:Landroidx/collection/SimpleArrayMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li7b;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v6, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/location/zzdq;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    move-object v12, v6

    move-object v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Li7b;

    move-object/from16 v8, p1

    invoke-direct {v2, v8}, Li7b;-><init>(Lcom/google/android/gms/internal/location/zzdq;)V

    invoke-virtual {v5, v3, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v2

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v12, v2}, Lcom/google/android/gms/internal/location/zzed;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzv;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object v2

    new-instance v3, Lq4b;

    invoke-direct {v3, v7, v1}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object/from16 v14, p2

    invoke-interface {v0, v2, v14, v3}, Lcom/google/android/gms/internal/location/zzu;->zzw(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v14, p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v13, Lcom/google/android/gms/internal/location/zzef;

    const/16 v19, 0x0

    const-wide v20, 0x7fffffffffffffffL

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/internal/location/zzef;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZZZJ)V

    new-instance v14, Lr3b;

    invoke-direct {v14, v1, v12}, Lr3b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Li7b;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/google/android/gms/internal/location/zzeh;

    const/4 v11, 0x0

    move-object v10, v13

    const/4 v13, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    :goto_2
    monitor-exit v5

    return-void

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzu(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 11

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzed;->zzc(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object p1

    new-instance v0, Lq4b;

    invoke-direct {v0, v1, p3}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/internal/location/zzu;->zzw(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v2, Lcom/google/android/gms/internal/location/zzef;

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/location/zzef;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZZZJ)V

    new-instance v8, Lm5b;

    invoke-direct {v8, v1, p3}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v4, v2

    new-instance v2, Lcom/google/android/gms/internal/location/zzeh;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0xe

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "PendingIntent@"

    invoke-static {v0, p3, p2}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 10

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzec;->b:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Le9b;

    if-nez v5, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object p1, v5, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    if-eqz p2, :cond_2

    sget-object p1, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object p1, Lcom/google/android/gms/internal/location/zzed;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string p1, "ILocationListener@"

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, v5, p1}, Lcom/google/android/gms/internal/location/zzed;->zza(Landroid/os/IInterface;Lcom/google/android/gms/location/zzy;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lq4b;

    invoke-direct {v0, p2, p3}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzx(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Lm5b;

    invoke-direct {v8, p1, p3}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v2, Lcom/google/android/gms/internal/location/zzeh;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 10

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzec;->c:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Li7b;

    if-nez v6, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object p1, v6, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    if-eqz p2, :cond_2

    sget-object p1, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object p1, Lcom/google/android/gms/internal/location/zzed;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string p1, "ILocationCallback@"

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, v6, p1}, Lcom/google/android/gms/internal/location/zzed;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzv;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lq4b;

    invoke-direct {v0, p2, p3}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/location/zzu;->zzx(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Lm5b;

    invoke-direct {v8, p1, p3}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v2, Lcom/google/android/gms/internal/location/zzeh;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzx(Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V
    .locals 9

    sget-object p3, Lcom/google/android/gms/location/zzn;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzed;->zzc(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/location/zzed;

    move-result-object p1

    new-instance p3, Lq4b;

    invoke-direct {p3, v0, p2}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1, p3}, Lcom/google/android/gms/internal/location/zzu;->zzx(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v7, Lm5b;

    invoke-direct {v7, v0, p2}, Lm5b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v1, Lcom/google/android/gms/internal/location/zzeh;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/location/zzu;->zzv(Lcom/google/android/gms/internal/location/zzeh;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzg:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v0, Lq4b;

    invoke-direct {v0, v1, p1}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, v2, v0}, Lcom/google/android/gms/internal/location/zzu;->zzz(ZLcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/location/zzu;->zzy(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/zzn;->zzg:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzec;->a(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v2, Lq4b;

    invoke-direct {v2, v0, p1}, Lq4b;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/location/zzu;->zzz(ZLcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/location/zzu;->zzy(Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
