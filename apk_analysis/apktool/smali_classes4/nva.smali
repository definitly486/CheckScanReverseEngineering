.class public final Lnva;
.super Lmwa;
.source "SourceFile"


# virtual methods
.method public final synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbd;->a(Lmwa;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/location/zzec;->zzB(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
