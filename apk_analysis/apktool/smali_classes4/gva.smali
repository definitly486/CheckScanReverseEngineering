.class public final Lgva;
.super Lmwa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p3, p0, Lgva;->r:Z

    invoke-direct {p0, p2}, Lmwa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    iget-boolean v0, p0, Lgva;->r:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/location/zzec;->zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/location/zzec;->zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
