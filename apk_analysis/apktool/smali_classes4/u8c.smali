.class public final Lu8c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw2b;

.field public static final b:Ls8b;

.field public static final c:Lidb;

.field public static final d:Lmhb;

.field public static final e:Lamb;

.field public static final f:Lxpb;

.field public static volatile g:Lcom/google/android/gms/common/internal/zzad;

.field public static final h:Ljava/lang/Object;

.field public static i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2b;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u007f\u00a2f\u00fa\u00a7p\u0085xb\u00b1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->a:Lw2b;

    new-instance v0, Ls8b;

    const-string v2, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014Q\u00d5\u00db\u0004\u00f7X\u00e7B\u0086<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->b:Ls8b;

    new-instance v0, Lidb;

    const-string v2, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->c:Lidb;

    new-instance v0, Lmhb;

    const-string v2, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->d:Lmhb;

    new-instance v0, Lamb;

    const-string v2, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->e:Lamb;

    new-instance v0, Lxpb;

    const-string v2, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lx3c;-><init>([B)V

    sput-object v0, Lu8c;->f:Lxpb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu8c;->h:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lu8c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu8c;->i:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lu8c;->i:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lu8c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu8c;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    if-nez v1, :cond_1

    sget-object v1, Lu8c;->i:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzad;

    move-result-object v1

    sput-object v1, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Lngc;)Lcom/google/android/gms/common/zzy;
    .locals 12

    const-string v1, "Failed to get Google certificates from remote"

    const-string v2, "GoogleCertificates"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_0
    const-string v4, "module init: "

    sget-object v0, Lu8c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lu8c;->b()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lu8c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu8c;->i:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/common/zzp;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    iget-object v5, p0, Lngc;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lngc;->b:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/common/zzp;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean p0, p0, Lngc;->c:Z

    if-eqz p0, :cond_0

    sget-object p0, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    invoke-interface {p0, v4}, Lcom/google/android/gms/common/internal/zzad;->zzf(Lcom/google/android/gms/common/zzp;)Lcom/google/android/gms/common/zzr;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    sget-object p0, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    invoke-interface {p0, v4}, Lcom/google/android/gms/common/internal/zzad;->zzh(Lcom/google/android/gms/common/zzp;)Lcom/google/android/gms/common/zzr;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zze()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zzc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/zzy;->zzf(IJ)Lcom/google/android/gms/common/zzy;

    move-result-object p0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zzd()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "error checking package certificate"

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zze()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzr;->zzd()I

    new-instance p0, Lcom/google/android/gms/common/zzy;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    goto :goto_3

    :goto_2
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "module call"

    invoke-static {v0, p0}, Lcom/google/android/gms/common/zzy;->c(Ljava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/common/zzy;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/zzy;->c(Ljava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/common/zzy;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :goto_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Lyxb;ZZ)Lcom/google/android/gms/common/zzy;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    :try_start_0
    invoke-static {}, Lu8c;->b()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, Lu8c;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/common/zzt;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/zzt;-><init>(Ljava/lang/String;Lyxb;ZZ)V

    :try_start_1
    sget-object p3, Lu8c;->g:Lcom/google/android/gms/common/internal/zzad;

    sget-object v3, Lu8c;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/google/android/gms/common/internal/zzad;->zze(Lcom/google/android/gms/common/zzt;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_0

    sget-object p0, Lcom/google/android/gms/common/zzy;->e:Lcom/google/android/gms/common/zzy;

    return-object p0

    :cond_0
    new-instance p3, Lg1c;

    invoke-direct {p3, p2, p0, p1}, Lg1c;-><init>(ZLjava/lang/String;Lyxb;)V

    new-instance p0, Lehc;

    invoke-direct {p0, p3}, Lehc;-><init>(Lg1c;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzy;->c(Ljava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/common/zzy;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzy;->c(Ljava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/common/zzy;

    move-result-object p0

    return-object p0
.end method
