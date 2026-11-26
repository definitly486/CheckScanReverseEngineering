.class public final synthetic Layb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/cloudmessaging/zzm;

.field public final synthetic c:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/cloudmessaging/UnregisterRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layb;->b:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    iput-object p2, p0, Layb;->c:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    new-instance v0, Lpub;

    iget-object v1, p0, Layb;->b:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    invoke-direct {v0, v1, p2}, Lpub;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cloudmessaging/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cloudmessaging/zzq;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    iget-object p0, p0, Layb;->c:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zzd(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/cloudmessaging/UnregisterRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method
