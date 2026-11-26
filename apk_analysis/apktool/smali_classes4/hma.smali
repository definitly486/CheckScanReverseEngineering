.class public final synthetic Lhma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lhma;->b:I

    iput-object p2, p0, Lhma;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhma;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lhma;->b:I

    iget-object v1, p0, Lhma;->d:Ljava/lang/Object;

    iget-object p0, p0, Lhma;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/internal/auth-api-phone/zzab;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzah;

    new-instance v0, Lahc;

    invoke-direct {v0, p0, p2}, Lahc;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzab;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth-api-phone/zzk;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzk;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzj;)V

    return-void

    :pswitch_0
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    sget-object v0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    check-cast v1, Lcom/google/android/gms/location/DeviceOrientationRequest;

    invoke-virtual {p1, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzec;->zzC(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/location/DeviceOrientationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    new-instance v0, Lwla;

    invoke-direct {v0, p0, p2}, Lwla;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    check-cast v1, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zah(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
