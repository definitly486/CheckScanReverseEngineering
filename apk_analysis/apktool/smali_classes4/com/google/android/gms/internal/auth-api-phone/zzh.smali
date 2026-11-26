.class public final Lcom/google/android/gms/internal/auth-api-phone/zzh;
.super Lcom/google/android/gms/internal/auth-api-phone/zza;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/auth-api-phone/zzg;Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverRequest;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zza;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zza;->g(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/auth-api-phone/zzg;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zza;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zza;->g(Landroid/os/Parcel;I)V

    return-void
.end method
