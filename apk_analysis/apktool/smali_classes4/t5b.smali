.class public final Lt5b;
.super Lcom/google/android/gms/internal/location/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Le9b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Le9b;)V
    .locals 0

    iput-object p1, p0, Lt5b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lt5b;->b:Le9b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/location/zzk;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzk;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lt5b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 0

    iget-object p0, p0, Lt5b;->b:Le9b;

    invoke-virtual {p0}, Le9b;->zze()V

    return-void
.end method
