.class public final Lcom/google/android/gms/measurement/internal/zzgf;
.super Lcom/google/android/gms/internal/measurement/zzbl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgh;


# virtual methods
.method public final zze(Lcom/google/android/gms/measurement/internal/zzoq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbl;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbl;->i(Landroid/os/Parcel;)V

    return-void
.end method
