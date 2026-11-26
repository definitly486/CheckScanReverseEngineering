.class public final synthetic Luma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V
    .locals 0

    iput p3, p0, Luma;->b:I

    iput-object p1, p0, Luma;->c:Ljava/lang/Object;

    iput-object p2, p0, Luma;->d:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Luma;->b:I

    iget-object v1, p0, Luma;->d:Landroid/os/Parcelable;

    iget-object p0, p0, Luma;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    check-cast p0, Lcom/google/android/gms/location/GeofencingRequest;

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzec;->zzE(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/auth-api/zbaj;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbg;

    new-instance v0, Ltma;

    invoke-direct {v0, p0, p2}, Ltma;-><init>(Lcom/google/android/gms/internal/auth-api/zbaj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth-api/zbm;

    check-cast v1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zbba;->zba(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/auth-api/zbm;->zbd(Lcom/google/android/gms/internal/auth-api/zbu;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
