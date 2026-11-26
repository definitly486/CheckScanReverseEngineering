.class public final Lja5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lja5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzku;

    sget v0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:I

    new-instance v0, Lpzb;

    invoke-direct {v0, p2}, Lpzb;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkt;

    iget-object p0, p0, Lja5;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p2, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lja5;->b:Ljava/lang/Object;

    check-cast p0, Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
