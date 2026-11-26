.class public final Lcom/google/android/gms/internal/cloudmessaging/zze;
.super Lcom/google/android/gms/internal/cloudmessaging/zza;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/cloudmessaging/zzg;Lcom/google/android/gms/cloudmessaging/RegisterRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zza;->f(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/cloudmessaging/UnregisterRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cloudmessaging/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zza;->f(Landroid/os/Parcel;I)V

    return-void
.end method
