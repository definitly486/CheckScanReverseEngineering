.class public final Lcom/google/android/gms/common/internal/service/zak;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final zae(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->f()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zab(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/base/zaa;->h(Landroid/os/Parcel;)V

    return-void
.end method
