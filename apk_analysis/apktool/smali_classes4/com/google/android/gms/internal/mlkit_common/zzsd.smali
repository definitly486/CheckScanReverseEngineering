.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzmv;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;Lcom/google/android/gms/internal/mlkit_common/zzry;Lcom/google/android/gms/internal/mlkit_common/zzmv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzmv;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzry;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzmv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsd;->zzd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zza(Lcom/google/android/gms/internal/mlkit_common/zzmv;)Lcom/google/android/gms/internal/mlkit_common/zzry;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzry;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzqt;)Lcom/google/android/gms/internal/mlkit_common/zzry;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->c:Lcom/google/android/gms/internal/mlkit_common/zzrz;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzrz;->zza(Lcom/google/android/gms/internal/mlkit_common/zzry;)V

    return-void
.end method
