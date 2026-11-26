.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzej;
.super Lm13;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;
    .locals 1

    new-instance v0, Lwab;

    invoke-direct {v0, p0}, Lwab;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lgab;

    invoke-direct {v0, p0, p1}, Lgab;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;->zzl(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;
    .locals 1

    new-instance p1, Locb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeg;-><init>()V

    new-instance v0, Ljcb;

    invoke-direct {v0, p1, p0}, Ljcb;-><init>(Locb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;)V

    iput-object v0, p1, Locb;->i:Ljcb;

    invoke-virtual {p1}, Locb;->run()V

    return-object p1
.end method
