.class public abstract Ljoa;
.super Lcom/google/android/gms/common/internal/zzc;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field public final zza:I

.field public final zzb:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Ljoa;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    iput p2, p0, Ljoa;->zza:I

    iput-object p3, p0, Ljoa;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget p1, p0, Ljoa;->zza:I

    const/4 v0, 0x1

    iget-object v1, p0, Ljoa;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljoa;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Ljoa;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)V

    iget-object v0, p0, Ljoa;->zzb:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljoa;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/google/android/gms/common/ConnectionResult;)V
.end method
