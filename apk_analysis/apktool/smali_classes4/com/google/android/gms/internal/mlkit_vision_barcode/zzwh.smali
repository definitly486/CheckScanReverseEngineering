.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;
    .locals 1

    new-instance v0, Lpgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;-><init>()V

    iput-object p0, v0, Lpgc;->a:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lpgc;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;

    invoke-virtual {v0, p0}, Lpgc;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
