.class public abstract Lcom/google/android/gms/internal/auth-api-phone/zzf;
.super Lcom/google/android/gms/internal/auth-api-phone/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth-api-phone/zzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.IMissedCallRetrieverCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object p2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p2, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzg;->zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/Status;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
