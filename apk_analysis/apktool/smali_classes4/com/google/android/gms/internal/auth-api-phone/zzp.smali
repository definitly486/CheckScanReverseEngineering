.class public final Lcom/google/android/gms/internal/auth-api-phone/zzp;
.super Lcom/google/android/gms/internal/auth-api-phone/zzf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzp;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/auth-api-phone/zzr;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "InternalMissedCallRetrieverClient#onMissedCallRetrieverResult invoked with status: %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzp;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
