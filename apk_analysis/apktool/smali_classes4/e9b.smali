.class public final Le9b;
.super Lcom/google/android/gms/location/zzx;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/location/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzdq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/zzx;-><init>()V

    iput-object p1, p0, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lh8b;

    invoke-direct {v1, p0, p1}, Lh8b;-><init>(Le9b;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Ld9b;

    invoke-direct {v1, p0}, Ld9b;-><init>(Le9b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
