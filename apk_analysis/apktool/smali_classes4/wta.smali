.class public final synthetic Lwta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/gms/internal/location/zzdq;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwta;->b:Ljava/lang/Object;

    iput-object p2, p0, Lwta;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwta;->b:Ljava/lang/Object;

    iput-object p3, p0, Lwta;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzah;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzk;

    new-instance v0, Lrta;

    iget-object v1, p0, Lwta;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/auth-api-phone/zzam;

    invoke-direct {v0, v1, p2}, Lrta;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzam;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p0, p0, Lwta;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzm;)V

    return-void
.end method

.method public zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 0

    iget-object p0, p0, Lwta;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object p0
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public zzc()V
    .locals 1

    iget-object p0, p0, Lwta;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
