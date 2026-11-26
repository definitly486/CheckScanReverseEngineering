.class public abstract Lcom/google/android/gms/internal/play_billing/zzaz;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzba;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzba;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzba;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzay;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzau;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
