.class public final Lcom/google/android/gms/signin/internal/zaf;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final zae(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/base/zaa;->g(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/base/zaa;->g(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zab(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/base/zaa;->g(Landroid/os/Parcel;I)V

    return-void
.end method
