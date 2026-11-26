.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;
.super Lx0b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lx0b;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lx0b;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;
    .locals 0

    invoke-virtual {p0, p1}, Lx0b;->zza(Ljava/lang/Object;)Lx0b;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;
    .locals 0

    invoke-virtual {p0, p1}, Lx0b;->zza(Ljava/lang/Object;)Lx0b;

    return-object p0
.end method

.method public final zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;
    .locals 0

    invoke-virtual {p0, p1}, Lx0b;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx0b;->c:Z

    iget-object v0, p0, Lx0b;->a:[Ljava/lang/Object;

    iget p0, p0, Lx0b;->b:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->c:Lq1b;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/a;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method
