.class public final Lj1b;
.super Lp1b;
.source "SourceFile"


# instance fields
.field public final synthetic r:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzcr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p3, p0, Lj1b;->r:Ljava/util/List;

    invoke-direct {p0, p2}, Lp1b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-object v0, p0, Lj1b;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/zzel;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/location/zzel;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzcr;->a(Lp1b;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/location/zzec;->zzF(Lcom/google/android/gms/internal/location/zzel;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
