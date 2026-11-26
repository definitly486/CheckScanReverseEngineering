.class public final Lzu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lzu4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzag;

    sget-object v0, Lcom/google/android/gms/internal/auth-api-phone/zzr;->a:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzp;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    iget-object p0, p0, Lzu4;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverRequest;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zzc(Lcom/google/android/gms/internal/auth-api-phone/zzg;Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverRequest;)V

    return-void
.end method
