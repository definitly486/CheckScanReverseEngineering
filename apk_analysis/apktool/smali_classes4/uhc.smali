.class public final synthetic Luhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/auth-api-phone/zzab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luhc;->b:Lcom/google/android/gms/internal/auth-api-phone/zzab;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzah;

    new-instance v0, Ljgc;

    iget-object p0, p0, Luhc;->b:Lcom/google/android/gms/internal/auth-api-phone/zzab;

    invoke-direct {v0, p0, p2}, Ljgc;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzab;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth-api-phone/zzk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzk;->zzf(Lcom/google/android/gms/internal/auth-api-phone/zze;)V

    return-void
.end method
