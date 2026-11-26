.class public final Li7b;
.super Lcom/google/android/gms/location/zzu;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/location/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzdq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/zzu;-><init>()V

    iput-object p1, p0, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lq6b;

    invoke-direct {v1, p0, p1}, Lq6b;-><init>(Li7b;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lx6b;

    invoke-direct {v1, p0, p1}, Lx6b;-><init>(Li7b;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    iget-object v0, p0, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lc7b;

    invoke-direct {v1, p0}, Lc7b;-><init>(Li7b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
