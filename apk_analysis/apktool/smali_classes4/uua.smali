.class public final Luua;
.super Lmwa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic s:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    iput-object p3, p0, Luua;->r:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p4, p0, Luua;->s:Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p0, p2}, Lmwa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    new-instance v0, Lxla;

    iget-object v1, p0, Luua;->r:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v0, v1}, Lxla;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Luua;->s:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/location/zzec;->zzt(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
