.class public abstract Lv7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzom;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/measurement/zzph;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7c;->b:Ljava/lang/String;

    iput-object p2, p0, Lv7c;->c:Lcom/google/android/gms/internal/measurement/zzph;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final get()Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    check-cast p0, Ln9c;

    iget v1, p0, Ln9c;->d:I

    const-string v2, ""

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v4, p0, Ln9c;->e:Lcom/google/android/gms/internal/measurement/zzps;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzps;->zza()I

    move-result v4

    if-ge v1, v4, :cond_b

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ln9c;->d:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzl()Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lv7c;->c:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzph;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzpg;->f:Lcom/google/android/gms/internal/measurement/zzps;

    iput-object v3, p0, Ln9c;->e:Lcom/google/android/gms/internal/measurement/zzps;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    move-object v2, v4

    :goto_0
    iget-object v3, p0, Ln9c;->e:Lcom/google/android/gms/internal/measurement/zzps;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzps;->zza()I

    move-result v3

    if-ge v1, v3, :cond_a

    const-string v1, ""

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzl()Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlf;->zza(Landroid/content/Context;)Lrz5;

    move-result-object v5

    invoke-virtual {v5}, Lrz5;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lrz5;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzle;

    const-string v7, "com.google.android.gms.measurement"

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lv7c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v4, v8}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    move-object v6, v4

    goto :goto_3

    :cond_3
    const-string v7, "Invalid Phenotype flag value for flag "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v6}, Lv7c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    :goto_2
    :try_start_2
    const-string v8, "FilePhenotypeFlags"

    iget-object v9, p0, Lv7c;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lv7c;->c:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzph;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v2

    :cond_4
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.vending"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.measurement#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v7

    new-instance v9, Ltbc;

    invoke-direct {v9, v0, v1}, Ltbc;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Lwr4;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lsxb;

    invoke-direct {v1, v0, v8}, Lsxb;-><init>(Ljava/lang/Object;I)V

    sget-object v7, Ljn2;->INSTANCE:Ljn2;

    invoke-interface {v0, v1, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    const-string v0, "Invalid Phenotype flag value for flag "

    iget-object v1, p0, Lv7c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lscc;

    move-result-object v2

    iget-object v2, v2, Lscc;->d:Lcom/google/common/collect/x;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    :try_start_3
    invoke-virtual {p0, v1}, Lv7c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_4
    :try_start_4
    const-string v2, "FilePhenotypeFlags"

    iget-object v7, p0, Lv7c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    invoke-virtual {v5}, Lrz5;->b()Z

    move-result v0

    if-ne v8, v0, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v4

    :goto_6
    if-nez v6, :cond_8

    invoke-virtual {p0}, Lv7c;->a()Ljava/lang/Object;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {p0, v6}, Ln9c;->e(Ljava/lang/Object;)V

    iput v3, p0, Ln9c;->d:I

    :cond_9
    monitor-exit p0

    goto :goto_7

    :cond_a
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    invoke-virtual {p0}, Ln9c;->d()Ljava/lang/Object;

    move-result-object v6

    :goto_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v6

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
