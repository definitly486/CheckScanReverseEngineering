.class public abstract Lcom/google/android/gms/internal/measurement/zzbr;
.super Lcom/google/android/gms/internal/measurement/zzbm;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzbs;
    .locals 3

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzbs;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbs;

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzbl;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method
