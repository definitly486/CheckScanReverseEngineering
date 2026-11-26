.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;
    .locals 5

    new-instance v0, Lfhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Lfhc;->a:I

    iget-short v1, v0, Lfhc;->m:S

    const/4 v2, 0x1

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lfhc;->m:S

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lfhc;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Lfhc;->zzf(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lfhc;->zzd(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    invoke-virtual {v0, v2}, Lfhc;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lfhc;->zzc(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    invoke-virtual {v0, v1}, Lfhc;->zzb(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Lfhc;->zzk(J)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4}, Lfhc;->zzh(J)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    invoke-virtual {v0, v2}, Lfhc;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lfhc;->zzj(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lfhc;->zzl(F)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxl;

    return-object v0
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method

.method public abstract f()F
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()J
.end method

.method public abstract j()J
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method
