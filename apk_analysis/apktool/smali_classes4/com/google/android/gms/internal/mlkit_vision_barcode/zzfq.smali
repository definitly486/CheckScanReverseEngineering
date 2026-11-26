.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

.field public b:Ljava/lang/Integer;

.field public c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;)V

    return-object v0
.end method
