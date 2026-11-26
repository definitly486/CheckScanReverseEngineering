.class public final Lcom/google/android/gms/internal/auth/zzbh;
.super Lcom/google/android/gms/internal/auth/zza;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/auth/zzbg;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zza;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth/zzc;->zzd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zza;->h(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/auth/zzbg;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zza;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth/zzc;->zzd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zza;->h(Landroid/os/Parcel;I)V

    return-void
.end method
