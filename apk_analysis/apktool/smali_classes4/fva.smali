.class public final Lfva;
.super Lmwa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/location/LocationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationCallback;)V
    .locals 0

    iput-object p3, p0, Lfva;->r:Lcom/google/android/gms/location/LocationCallback;

    invoke-direct {p0, p2}, Lmwa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Lfva;->r:Lcom/google/android/gms/location/LocationCallback;

    const-string v1, "LocationCallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/location/zzec;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
