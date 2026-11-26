.class public abstract Lcom/google/android/gms/internal/auth/zzdc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lyza;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic zzd:I


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzcz;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/auth/zzde;

    sget-object v1, Lcom/google/android/gms/internal/auth/zzcu;->zza:Lcom/google/android/gms/internal/auth/zzcu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzde;-><init>(Lcom/google/android/gms/internal/auth/zzcu;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    iget-object v0, p1, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static zzc()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zzd(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->g:Lyza;

    if-nez v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_6

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lyza;

    if-nez v1, :cond_5

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lyza;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p0, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lyza;->a:Landroid/content/Context;

    if-eq v1, p0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcg;->a()V

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdd;->b()V

    const-class v1, Ln1b;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Ln1b;->c:Ln1b;

    if-eqz v2, :cond_3

    iget-object v3, v2, Ln1b;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v2, v2, Ln1b;->b:Li1b;

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Ln1b;->c:Ln1b;

    iget-object v3, v3, Ln1b;->b:Li1b;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    sput-object v2, Ln1b;->c:Ln1b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1

    new-instance v1, Lcom/google/android/gms/internal/auth/zzct;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/zzct;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzdo;->zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v1

    new-instance v2, Lyza;

    invoke-direct {v2, p0, v1}, Lyza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzdj;)V

    sput-object v2, Lcom/google/android/gms/internal/auth/zzdc;->g:Lyza;

    sget-object p0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    if-ge v1, v0, :cond_e

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    if-ge v1, v0, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lyza;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdh;->zzc()Lcom/google/android/gms/internal/auth/zzdh;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lyza;->b:Lcom/google/android/gms/internal/auth/zzdj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/auth/zzdh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->zzb()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/auth/zzci;

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v6, v5, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    iget-object v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/auth/zzci;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    if-eqz v5, :cond_2

    iget-object v6, v1, Lyza;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/auth/zzcq;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lyza;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v6, v6, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/gms/internal/auth/zzcs;->zza:Lcom/google/android/gms/internal/auth/zzcs;

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/auth/zzcg;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/auth/zzcg;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/auth/zzcs;->zza:Lcom/google/android/gms/internal/auth/zzcs;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdd;->a()Lcom/google/android/gms/internal/auth/zzdd;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, La1b;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->d:Z

    if-nez v5, :cond_7

    iget-object v1, v1, Lyza;->a:Landroid/content/Context;

    const-class v5, Ln1b;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v6, Ln1b;->c:Ln1b;

    if-nez v6, :cond_5

    const-string v6, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {v1, v6}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ln1b;

    invoke-direct {v6, v1}, Ln1b;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    new-instance v1, Ln1b;

    invoke-direct {v1}, Ln1b;-><init>()V

    move-object v6, v1

    :goto_3
    sput-object v6, Ln1b;->c:Ln1b;

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/auth/zzcz;->d:Z

    if-eqz v1, :cond_6

    move-object v1, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    :goto_4
    invoke-virtual {v6, v1}, Ln1b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_7
    :goto_6
    if-nez v3, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move-object v5, v3

    :cond_9
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->zzb()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v4, :cond_a

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    goto :goto_8

    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_b
    :goto_8
    iput-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_9
    monitor-exit p0

    goto :goto_b

    :goto_a
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_e
    :goto_b
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzdc;->e:Ljava/lang/Object;

    return-object p0
.end method
