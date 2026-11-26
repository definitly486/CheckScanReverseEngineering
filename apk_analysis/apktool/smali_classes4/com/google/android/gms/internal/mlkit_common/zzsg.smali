.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzsj;

.field public final synthetic zzd:Lz17;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;Lcom/google/android/gms/internal/mlkit_common/zzry;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lz17;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzd:Lz17;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzd:Lz17;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzmv;->zzaW:Lcom/google/android/gms/internal/mlkit_common/zzmv;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zza(Lcom/google/android/gms/internal/mlkit_common/zzmv;)Lcom/google/android/gms/internal/mlkit_common/zzry;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zze()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->e:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->g:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzqt;)Lcom/google/android/gms/internal/mlkit_common/zzry;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->d:Lxt7;

    invoke-static {p0, v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zza(Lz17;Lxt7;Lcom/google/android/gms/internal/mlkit_common/zzsj;)Lcom/google/android/gms/internal/mlkit_common/zznc;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zzb(Lcom/google/android/gms/internal/mlkit_common/zznc;)Lcom/google/android/gms/internal/mlkit_common/zzry;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->c:Lcom/google/android/gms/internal/mlkit_common/zzrz;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzrz;->zza(Lcom/google/android/gms/internal/mlkit_common/zzry;)V

    return-void
.end method
