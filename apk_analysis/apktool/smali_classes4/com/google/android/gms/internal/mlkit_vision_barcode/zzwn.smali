.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:J

.field public final synthetic zze:Lvxb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/Object;JLvxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzc:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzd:J

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zze:Lvxb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzc:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzd:J

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zze:Lvxb;

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->j:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzz()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->c(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;J)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->i:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lxlb;->zza:Lxlb;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;

    invoke-direct {v3, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Lvxb;)V

    invoke-virtual {v2, v3}, Lxlb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
