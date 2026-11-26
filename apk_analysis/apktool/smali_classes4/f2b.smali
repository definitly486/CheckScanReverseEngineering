.class public final Lf2b;
.super Lk2b;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/location/LocationSettingsRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzcy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)V
    .locals 0

    iput-object p3, p0, Lf2b;->r:Lcom/google/android/gms/location/LocationSettingsRequest;

    sget-object p1, Lcom/google/android/gms/internal/location/zzcg;->zzb:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Lf2b;->r:Lcom/google/android/gms/location/LocationSettingsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "locationSettingsRequest can\'t be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzu;

    new-instance v1, Lc4b;

    invoke-direct {v1, p0}, Lc4b;-><init>(Lf2b;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/internal/location/zzu;->zzD(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/location/zzaa;Ljava/lang/String;)V

    return-void
.end method
