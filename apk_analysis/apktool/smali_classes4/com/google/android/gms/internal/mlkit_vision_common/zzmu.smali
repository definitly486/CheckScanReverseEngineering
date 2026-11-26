.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, p3

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;

    move v3, p1

    move v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v5, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;-><init>(IIIIIJI)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->zzbA:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, p3

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;

    move v3, p1

    move v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v5, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;-><init>(IIIIIJI)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->zzbZ:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;)V

    return-void
.end method
