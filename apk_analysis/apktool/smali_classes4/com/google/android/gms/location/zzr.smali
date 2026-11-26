.class public abstract Lcom/google/android/gms/location/zzr;
.super Lcom/google/android/gms/internal/location/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/zzs;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzs;
    .locals 3

    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/location/zzs;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/location/zzs;

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/location/zzq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/location/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final f(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/google/android/gms/location/DeviceOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/location/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/location/DeviceOrientation;

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzc;->zzd(Landroid/os/Parcel;)V

    invoke-interface {p0, p2}, Lcom/google/android/gms/location/zzs;->zzd(Lcom/google/android/gms/location/DeviceOrientation;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
