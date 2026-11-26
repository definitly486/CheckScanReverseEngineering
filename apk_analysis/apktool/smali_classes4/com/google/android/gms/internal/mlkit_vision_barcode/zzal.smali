.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzal;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;


# direct methods
.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzak;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method
