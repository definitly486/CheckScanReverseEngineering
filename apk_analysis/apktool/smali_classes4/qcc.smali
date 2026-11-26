.class public final synthetic Lqcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzqt;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzqv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqt;Lcom/google/android/gms/internal/measurement/zzqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqcc;->b:Lcom/google/android/gms/internal/measurement/zzqt;

    iput-object p2, p0, Lqcc;->c:Lcom/google/android/gms/internal/measurement/zzqv;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lqcc;->c:Lcom/google/android/gms/internal/measurement/zzqv;

    iget-object p0, p0, Lqcc;->b:Lcom/google/android/gms/internal/measurement/zzqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzse;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqt;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsv;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "Failed to update snapshot for %s flags may be stale."

    invoke-static {v2, v1, v0, v3, p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
